options yearcutoff=1850;
data bibi;
input pid age jdate;
informat jdate ddmmyy10.;
format jdate ddmmyy10.;
cards;
10 18 12/08/1965
20 28 19-05-20
30 26 28.09.1986
;
run;
proc print data=bibi;
run;


options yearcutoff=1800;
data bibi1;
input pid age jdate;
informat jdate ddmmyy10.;
format jdate mmddyy8.;
cards;
10 18 12/08/1965
20 28 19-05-20
30 26 28.09.1986
;
run;
proc print data=bibi1;
run;

data bibi2;
input pid age jdate;
informat jdate ddmmyy10.;
format jdate mmddyyd8.;
cards;
10 18 12/08/1965
20 28 19-05-20
30 26 28.09.1986
;
run;
proc print data=bibi2;
run;

data bibi3;
input pid age jdate;
informat jdate ddmmyy10.;
format jdate mmddyyp8.;
cards;
10 18 12/08/1965
20 28 19-05-20
30 26 28.09.1986
;
run;
proc print data=bibi3;
run;

data bibi4;
input pid age jdate;
informat jdate ddmmyy10.;
format jdate mmddyyc8.;
cards;
10 18 12/08/1965
20 28 19-05-20
30 26 28.09.1986
;
run;
proc print data=bibi4;
run;

data bibi5;
input pid age jdate;
informat jdate ddmmyy10.;
format jdate mmddyyb8.;
cards;
10 18 12/08/1965
20 28 19-05-20
30 26 28.09.1986
;
run;
proc print data=bibi5;
run;


data bibi6;
input pid age jdate pdate;
informat jdate pdate ddmmyy10.;
format jdate pdate mmddyy10.;
cards;
10 18 12/08/1965 13.09.1987
20 28 19-05-20 16121845
30 26 28.09.1986 12-03-1854
;
run;
proc print data=bibi6;
run;
