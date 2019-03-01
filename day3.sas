title "This is my practice for today";
options nodate nonumber;
Libname cati "C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice";
data cati.cc;
input id age sex$ name$ 35. Mname$ 9-15 @11password$14. +2 Lname$ 3.;
cards;
10 25 F thisjkdlkdjclsddkjkjghgg
20 18 F fsgfghdgdhddgghjgxhghh
30 43 M bvxbcbnmznbcghgxhnhsshksklklk
40 43 m ughvcgvccchvchjzxuiugjhc
50 34 m xccgsacsggdoljklmnvbcfgcf
;
run;
data cati.cc;
set cati.cc;
sex=upcase(sex);
name=upcase(name);
run;

proc print data=cati.cc noobs;
run;
Title "I love SAS";
options nodate nonumber;
/*
proc copy in=sashelp out=Cati;
select class;
run;
*/
Libname cati "C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice";
data cati.myclass;
set sashelp.class;
drop weight Height;
input Lname$ 9.  date;
informat date ddmmyy10.;
format date ddmmyy10.;
cards;
kljhjhhjj 21/05/20
mnvcnbvnv 05-08-1991
iuifdhjhj 07.09.1992
;
run;
proc print data=Cati.myclass;
format date ddmmyy10.;
run;

data Cati.myclass1;
retain age sex name lname date ;
set Cati.myclass;
run;
proc print data=cati.myclass1;
run;
