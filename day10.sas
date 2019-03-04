
/*numeric to character*/
data lab;
input pid age race sex;
cards;
12 17  1 1
10 23  2 2
;
run;
proc print data=lab;
run;

proc format;
value r
1='white'
2='black'
;
value s
1="Male"
2="FEMALE"
;
run;
proc print data=lab;
format race r. sex s.;
run;
/*in order to see the format in the output*/
proc format fmtlib ;
run;
/*character to character*/
data lab1;
input pid center$ drug$;
cards;
14 nims A
12 care B
15 appolo C
;
run;
/*for character to character or character to numeric we need to put
a $ sign in front of name in value step.*/
proc format;
value $dose
"A"="Drug 300 mg"
"B"="Drug 500 mg"
"C"="Drug 1000 mg"
;
run;
proc print data=lab1;
format drug $dose.;
run;
/*character to numeric*/
data lab2;
input pid age num number$;
cards;
12 17 1 12.5
10 23 2 null
;
run;

proc format;
value $n "null"=0
;
run;
proc print data=lab2;
format number $n4.;
run;

data lab2_1;
input pid age num number$;
cards;
12 17 1 12.5
10 23 2 null
;
run;

proc format;
value $n "null"=00.0
;
run;
proc print data=lab2_1;
format number $n.;
run;
/*numeric to numeric*/

data lab3;
input pid age dose;
cards;
10 15 1
20 34 2
40 27 3
;
run;
proc format;
value p
1=0.6
2=0.5
3=0.8
;
run;
proc print data=lab3;
format dose p.;
run;

/*proc format for existing data set and for future using purpose*/
proc format;
value $num
"F"=1
"M"=2
;
run;
proc format;
value fgh 63.5=77.0;
run;

proc print data=sashelp.class;
format sex $num. height fgh.;
run;


/*printing format from a specific library*/
proc format library=work fmtlib;
run;

/*How to save a format in specific library*/

data lab2_1;
input pid age num number$;
cards;
12 17 1 12.5
10 23 2 null
;
run;

proc format library=sasuser;
value $j "null"=00.0
;
run;
/*if we want not to get an error we shoul;d add "options nofmterr"*/
options nofmterr fmtsearch=(sasuser);
proc print data=lab2_1;
format number $j4.;
run;

/*If we want to share our format with someone elese 
instead of sharing the codes , we have to creat a new dataset and then share it.*/

proc format fmtlib cntlout=CC;
run;

/*how someone else read the dataset we created from format*/
proc format fmtlib cntlin=CC;
run;

/*specifying ranges and key words in proc format*/
proc format;
value x 0-11='young'
12-14='old'
15-17='sctzn';
run;
proc print data=sashelp.class;
format age x.;
run;
