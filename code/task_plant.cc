#include "stdsneezy.h"
#include "obj_tool.h"
#include "obj_plant.h"

void TBeing::doPlant(string arg)
{
  TThing *t;
  TTool *flintsteel;
  int count, found=0;

  if ((t = searchLinkedListVis(this, arg.c_str(), getStuff(), &count))){
    if((flintsteel=dynamic_cast<TTool *>(t))){
      if(flintsteel->getToolType() == TOOL_SEED){
	found=1;
      }
    }
  }
  if(!found){
    sendTo("You need to specify some seeds to plant.\n\r");
    return;
  }

  if(roomp->isFallSector() || roomp->isWaterSector() || 
     roomp->isIndoorSector()){
    sendTo("You can't plant anything here.\n\r");
    return;
  }

  TThing *tcount;
  for(tcount=roomp->getStuff(),count=0;tcount;tcount=tcount->nextThing){
    if(dynamic_cast<TPlant *>(tcount))
      ++count;
  }
  if(count>=8){
    sendTo("There isn't any room for more plants in here.\n\r");
    return;
  }


  sendTo("You begin to plant some seeds.\n\r");
  start_task(this, t, NULL, TASK_PLANT, "", 2, inRoom(), 0, 0, 5);
}


int task_plant(TBeing *ch, cmdTypeT cmd, const char *, int pulse, TRoom *, TObj *obj)
{
  TTool *tt;

  if (ch->utilityTaskCommand(cmd) ||
      ch->nobrainerTaskCommand(cmd))
    return FALSE;

  
  // basic tasky safechecking
  if (ch->isLinkdead() || (ch->in_room != ch->task->wasInRoom) || !obj){
    act("You stop planting your seeds.",
        FALSE, ch, 0, 0, TO_CHAR);
    act("$n stops planting seeds.",
        TRUE, ch, 0, 0, TO_ROOM);
    ch->stopTask();
    return FALSE; // returning FALSE lets command be interpreted
  }

  tt=dynamic_cast<TTool *>(obj);

  if (ch->task->timeLeft < 0){
    act("You finish planting $p.",
	FALSE, ch, obj, 0, TO_CHAR);
    act("$n finishes planting $p.",
	TRUE, ch, obj, 0, TO_ROOM);
    ch->stopTask();

    TObj *tp;
    TPlant *tplant;
    tp = read_object(OBJ_GENERIC_PLANT, VIRTUAL);
    if((tplant=dynamic_cast<TPlant *>(tp))){
      tplant->setType(tt->objVnum()-13880);
      tplant->updateDesc();
    }
    
    *ch->roomp += *tp;

    if (tt->getToolUses() <= 0) {
      act("You disgard $p because it is empty.",
	  FALSE, ch, tt, 0, TO_CHAR);
      delete tt;
    }

    return FALSE;
  }

  switch (cmd) {
    case CMD_TASK_CONTINUE:
      ch->task->calcNextUpdate(pulse, PULSE_MOBACT * 3);

      switch (ch->task->timeLeft) {
	case 2:
          act("You dig a little hole for some seeds from $p.",
              FALSE, ch, obj, 0, TO_CHAR);
          act("$n digs a little hole.",
              TRUE, ch, obj, 0, TO_ROOM);
          ch->task->timeLeft--;
          break;
	case 1:
          act("You put some seeds from $p into your hole.",
              FALSE, ch, tt, 0, TO_CHAR);
          act("$n puts some seeds from $p into the hole.",
              TRUE, ch, tt, 0, TO_ROOM);
          ch->task->timeLeft--;

	  tt->addToToolUses(-1);

          break;
	case 0:
	  act("You cover up the hole.",
              FALSE, ch, obj, 0, TO_CHAR);
	  act("$n covers up the hole.",
	      TRUE, ch, obj, 0, TO_ROOM);
	  ch->task->timeLeft--;
	  break;
      }
      break;
    case CMD_ABORT:
    case CMD_STOP:
      act("You stop planting seeds.",
          FALSE, ch, 0, 0, TO_CHAR);
      act("$n stops planting seeds.",
          TRUE, ch, 0, 0, TO_ROOM);
      ch->stopTask();
      break;
    case CMD_TASK_FIGHTING:
      ch->sendTo("You can't properly plant seeds while under attack.\n\r");
      ch->stopTask();
      break;
  default:
      if (cmd < MAX_CMD_LIST)
        warn_busy(ch);
      break;                    // eat the command
  }
  return TRUE;


}

