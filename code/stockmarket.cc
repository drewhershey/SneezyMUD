#include "stdsneezy.h"
#include "database.h"

void updateStockHistory()
{
  TDatabase db(DB_SNEEZY);

  // stockhistory table needs to be seeded with at least one entry for
  // each stock, for this query to work
  db.query("insert into stockhistory select sh.n+1, s.ticker, s.price from stockinfo s left outer join (select ticker, max(n) as n from stockhistory group by ticker) sh on (s.ticker=sh.ticker)");
}


void stockSplit(sstring ticker, float pricechange)
{
  TDatabase db(DB_SNEEZY);

  db.query("update stockinfo set shares=shares*2, price=(price/2)+%f where ticker='%s'", pricechange, ticker.c_str());
  
  db.query("update stockhistory set price=price/2 where ticker='%s'",
	   ticker.c_str());
  

  //  db.query("insert into stockhistory select max(n), ticker, max(price) from stockhistory where ticker='%s' group by ticker", ticker.c_str());
  //  db.query("insert into stockhistory select max(n), ticker, min(price) from stockhistory where ticker='%s' group by ticker", ticker.c_str());
}

void stockReverseSplit(sstring ticker, float pricechange)
{
  TDatabase db(DB_SNEEZY);

  db.query("update stockinfo set shares=shares/2, price=(price*2)+%f where ticker='%s'", pricechange, ticker.c_str());

  db.query("update stockhistory set price=price*2 where ticker='%s'",
	   ticker.c_str());
  
  //  db.query("insert into stockhistory select max(n), ticker, max(price) from stockhistory where ticker='%s' group by ticker", ticker.c_str());
  //  db.query("insert into stockhistory select max(n), ticker, min(price) from stockhistory where ticker='%s' group by ticker", ticker.c_str());
}

void updateStocks()
{
  TDatabase db(DB_SNEEZY), stocks(DB_SNEEZY);

  stocks.query("select ticker, shares, price, (((random() * volatility * 2) - volatility) / 100) as pricechange from stockinfo");

  while(stocks.fetchRow()){
    float pricechange=convertTo<float>(stocks["pricechange"]);
    float price=convertTo<float>(stocks["price"]);
    sstring ticker=stocks["ticker"];
    int shares=convertTo<int>(stocks["shares"]);

    if(shares<=0)
      continue;

    if((price+pricechange) < 10.0){
      stockReverseSplit(ticker, pricechange);
    } else if(price+pricechange > 100.0){
      stockSplit(ticker, pricechange);
    } else {
      db.query("update stockinfo set price=price+%f where ticker='%s'",
	       pricechange, ticker.c_str());
    }
    
  }


}

int stockBoard(TBeing *ch, cmdTypeT cmd, const char *arg, TObj *o1, TObj *o2)
{
  int found=0;
  TThing *o;
  TObj *to;
  TDatabase db(DB_SNEEZY);

  if(cmd != CMD_LOOK)
    return FALSE;

  for (o = ch->roomp->getStuff(); o; o = o->nextThing) {
    to = dynamic_cast<TObj *>(o);
    if (to && to->spec == SPEC_STOCK_BOARD &&
	isname(arg, to->name)){
      found=1;
      break;
    }
  }

  if(!found)
    return FALSE;

  ch->sendTo("You examine the board:\n\r");
  ch->sendTo("------------------------------------------------------------\n\r");
  ch->sendTo("Ticker   Bid    Ask  Change  Market Cap                                \n\r");
  ch->sendTo("------------------------------------------------------------\n\r");
  
  db.query("select distinct si.ticker, si.price, sh.price as dayprice, si.shares from stockinfo si, stockhistory sh, (select ticker, max(n) as n from stockhistory group by ticker) sn where sh.n=sn.n and si.ticker=sh.ticker");


  float price, pricediff;
  int shares;
  while(db.fetchRow()){
    price=convertTo<float>(db["price"]);
    shares=convertTo<int>(db["shares"]);
    pricediff=price-convertTo<float>(db["dayprice"]);

    ch->sendTo(COLOR_BASIC, fmt("%-6s  <Y>%.2f  %.2f<1>  %s%+.2f<1>   %s\n\r") %
	       db["ticker"] % (price*0.97) % (price * 1.03) % 
	       (pricediff>0?"<G>":"<R>") % pricediff %
	       talenDisplay((int)(price*(float)shares)));
    
    
  }

  ch->sendTo("------------------------------------------------------------\n\r");
  ch->sendTo("Price charts can be seen at: http://sneezy.saw.net/peel/stocks/\n\r");
  ch->sendTo("------------------------------------------------------------\n\r");

  return TRUE;
}



