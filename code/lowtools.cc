#include "stdsneezy.h"
#include "database.h"

// parses args like "13700-13780 13791 13798"
bool parse_num_args(int argc, char **argv, vector<int> &vnums)
{
  int s, e, n;
  string tmp;
  unsigned int npos;

#if 0
  printf("argc=%i\n", argc);
  for(int i=0;i<argc;++i){
    printf("argv[%i]=%s\n", i, argv[i]);
  }
#endif

  for(int i=0;i<=(argc-1);i++){
    tmp=argv[i];
    npos=tmp.find("-");

    if(npos != string::npos){
      s=convertTo<int>(tmp.substr(0, npos));
      e=convertTo<int>(tmp.substr(npos+1, tmp.size()));
      
      if(s==0 || e==0){
	printf("Bad argument %s, aborting.\n", tmp.c_str());
	return false;
      }

      if(s>e)
	s^=e^=s^=e; // swap

      while(s<=e){
	vnums.push_back(s++);
      }
    } else {
      n=convertTo<int>(tmp);

      if(n==0){
	printf("Bad argument %s, aborting.\n", tmp.c_str());
	return false;
      }

      vnums.push_back(n);
    }
  }
  return true;
}

