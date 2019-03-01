data naidu1;
input name1$ 10. name2$ 20.;
datalines;
bmnxb nvnbvx  nmnnmbnmnx
kjh ckjh    ddj jiwududuhef
uihjssbc mbd  mnc nbbcmn
;
proc print data=naidu1;
run;
/*when there is : in the output, whenever in a row it reaches to a space
it will cut it and count the countinue for the second var*/
data naidu2;
input name1$ : 10. name2$ 30.;
datalines;
bmnxb nvnbvx  nmnnmbnmnx
kjh ckjh    ddj jiwududuhef
uihjssbc mbd  mnc nbbcmn
;
proc print data=naidu2;
run;
/*when there is & in the output, whenever in a row it reaches to a double space
it will cut it and count the countinue for the next var*/
data naidu3;
input name1$ & 10. name2$ 20.;
datalines;
bmnxb nvnbvx  nmnnmbnmnx
kjh ckjh    ddj jiwududuhef
uihjssbc mbd  mnc nbbcmn
;
proc print data=naidu3;
run;

/*named input*/
data bibi;
input name=$ set= pid=;
cards;
name=Ahmad set=123 pid=8676
name=Sahar set=987 pid=56456
;
run;
proc print data=bibi;
run;
/*another way of inputing data to sas*/
data cc;
a=1;
b="jhj";
c=76;
output;
a=2;
b="hjg";
c=655;
output;
;
proc print;
