#include "SHDatetime_struct.h"


long cl_dtToTimestamp(int argc,char *argv[],int *error);
void cl_timestampToDt(int argc,char *argv[],int *error,SHDatetime *dt_l);
void dtAdd(int argc,char *argv[],int *error,SHDatetime *dt_l);
long dayDiff(int argc,char *argv[],int *error);
long secDiff(int argc,char *argv[],int *error);
int cl_calcWeekdayIdx(int argc,char *argv[],int *error);
long secDiff(int argc,char *argv[],int *error);
int selectChoice(int argc,char *argv[]);
int cl_datetime(int argc,char *argv[]);
