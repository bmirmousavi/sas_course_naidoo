libname cap "C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice";
data cap.t1;
input p y z name$ 20.;
cards;
10 1100 56 jythy
20 666 76  ytfhghg
200 87 34 jhghgf
;
run;
/*data portion*/
proc print data=cap.t1;
run;
/*description portion*/
proc contents data=cap.t1 varnum;
run;
/*if we want to put the dataset description in new dataset*/
proc contents data=cap.t1 varnum out=cap.t2;
run;
/*if we want to have a description of all dataset in sashelp*/
proc contents data=sashelp._all_ varnum out=cap.t3;
run;
/*to see how many dataset in cap.t3 we have*/
/*nodupkey removes the repeated datasets*/
proc sort data=cap.t3 nodupkey;
by memname;
run;
libname cap clear;
