/*data set options*/
data trial1;
input id age sex$;
cards;
12 28 F
16 34 M
19 76 F
;
run;
proc print data=trial1;
run;

data trial1(replace=no);
input id age sex$ income;
cards;
12 28 F 299
16 34 M 600
19 76 F 897
;
run;
proc print data=trial1;
run;

/*if we want to share our dataset with someone*/
data trial3(password=apple);
input id age sex$;
cards;
12 28 F
16 34 M
19 76 F
;
run;
proc print data=trial3;
run;

/*if we want to share our dataset with someone and
dont want him to be able to change our data, just readable data"*/
data trial4(read=orange);
input id age sex$;
cards;
12 28 F
16 34 M
19 76 F
;
run;
proc print data=trial4;
run;
/*two level password*/
data trial5(password=apple read=orange);
input id age sex$;
cards;
12 28 F
16 34 M
19 76 F
;
run;
proc print data=trial5;
run;

/*first OBS in the dataset*/
/*have label*/
/*print data with label*/

data trial5(password=apple read=orange);
label id="patient id"
age="age of patient"
sex="sex of patient";
input id age sex$;
cards;
12 28 F
16 34 M
19 76 F
20 43 M
21 87 F
13 76 F
;
run;
proc print data=trial5 (firstobs=4 obs=5) label;
run;

/*set concept*/

data trial7;
input id age sex$;
cards;
12 28 F
16 34 M
19 76 F
;
run;
/*if we are not interested to have id*/
data anthony;
set trial7(drop=id);
run;
proc print data=anthony;
run;
/*if we are interested in specific vars*/
data anthony2;
set trial7(keep=sex age);
run;
proc print data=anthony2;
run;

/*rename the vars*/
data anthony3;
set trial7(rename=(id=pid age=dm_age));
run;
proc print data=anthony3;
run;

data trial8;
input id age sex$ center$;
cards;
12 28 F nims
16 34 M care
19 76 F nims
23 54 M John
;
run;
data ahmad;
set trial8(where=(center="nims" or center="care"));
run;
proc print data=ahmad noobs;
run;
/*Demonstrating saving of your program in sashelp library 
using set to save the part of data*/
data labdata;
set sashelp.class (firstobs=2);
run;
proc print;
run;

data labdata1;
set sashelp.class (obs=3);
run;
proc print;
run;

data labdata2;
set sashelp.class (firstobs=2 obs=5);
run;
proc print;
run;

/*randomly selecting of your observation to get the parts of data*/
data sasi;
set sashelp.class;
if _n_=3 then output;
if _n_=3 then output;
if _n_=3 then output;
run;
proc print data=sasi;
run;

/*demonstrating two data sets*/

data x;
input pid age gender$;
cards;
100 20 male
200 40 female
;
run;
data y;
input pid age sex$;
cards;
101 20 female
200 30 male
;
run;
data aa;
set x y;
run;
proc print data=aa;
run;

data aa1;
set x;
set Y;
run;
proc print data=aa1;
run;
