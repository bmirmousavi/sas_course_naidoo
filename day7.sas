data labinfo;
input pid age jdate ldate;
informat jdate ldate date11.;
format jdate ddmmyy10. ldate date9.;
cards;
11 23 12aug2003 11-dec-2003
12 26 19nov2003 18-jan-2004
13 28 10dec2003 19-jan-2004
;
run;
proc print data=labinfo;
run;

data infolab;
input pid age jdate ldate;
informat jdate monyy7. ldate julian7.;
format jdate ddmmyy10. ldate date11.;
cards;
10 30 jan2003 2003032
11 32 feb2003 2003075
12 28 mar2003 2003110
;
run;
proc print data=infolab;
run;


data infolab1;
input pid age jdate ldate;
informat jdate monyy7. ldate julian7.;
format jdate ldate ddmmyy10.;
cards;
10 30 jan2003 2003032
11 32 feb2003 2003075
12 28 mar2003 2003110
;
run;
proc print data=infolab1;
run;

data demodate;
input pid age jdate;
informat jdate monyy7.;
format jdate worddate18.;
cards;
10 24 jan2003
20 45 mar2008
30 28 apr2009
;
run;
proc print data=demodate;
run;


data demodate1;
input pid age jdate;
informat jdate monyy7.;
format jdate weekdate34.;
cards;
10 24 jan2003
20 45 mar2008
30 28 apr2009
;
run;
proc print data=demodate1;
run;

data patinfo;
input pid age jdate : ddmmyy10. ldate : date11.;
format jdate ldate ddmmyy10.;
cards;
10 23 10/11/2003 12dec2001
20 40 10.12.2004 18-Apr-2008
30 32 10-09-1998 25.Feb.1998
;
run;
proc print data=patinfo;
run;

data empdata;
input eid salary :comma6. pf:dollar13.;
format salary dollar7. pf dollar14.2;
cards;
21 2,300 $20,034,000
32 30,000 $2,300,000.01
;
run;
proc print data=empdata;
run;


data empdata1;
input eid salary :comma6. pf:dollar13.;
format salary comma. pf dollar14.2;
cards;
21 2300 $20034000
32 30,000 $2,300,000.01
;
run;
proc print data=empdata1;
run;
data lab;
input pid jtime:time10. ltime : time8.;
format jtime time8. ltime: timeampm10. ;
cards;
123 05:12:51am 14:23:54
134 02:11:55pm 00:01:00
;
run;
proc print data=lab;
run;

data eff;
input pid drug$ time:datetime20.;
format time datetime18.;
cards;
1234 col1mg 12aug2003:12:23:13am
1454 col10mg 13dec2008:02:14:18pm
;
run;
proc print data=eff;
run;


data eff1;
input pid drug$ time:datetime20.;
format time dateampm20.;
cards;
1234 col1mg 12aug2003:12:23:13am
1454 col10mg 13dec2008:02:14:18pm
;
run;
proc print data=eff1;
run;

data p;
input class$ grade :percent8.;
format grade percent8.1;
cards;
A 13.5%
B 20.18%
;
run;
proc print data=p;
run;
/*Converting percentage to decimal*/
data p1;
input @1 x percent3. @5 y percent5.;
cards;
12% -20%
1%  2%
;
run;
proc print data=p1;
run;
/*In the percent format, parentheses mean negative numbers*/
data p2;
input @1 x percent3. @5 y percent5.;
cards;
12% (20%)
1%  2%
;
run;
proc print data=p2;
run;
/*Converting decimal numbers to percentage format*/
data p3;
input x y;
format x percent. y percent.1;
cards;
0.1 0.089
0.06 0.0145
6    1.83
;
run;
proc print data=p3;
run;

