data new1l;
a1='change    all    letters';
a2=upcase(a1);
a3=lowcase(a1);
a4=propcase(a1);
a5=propcase(a1,'\');
a6=compbl(a1);
a7=compress(a1);
run;
proc print;
run;

data new1l;
a1='change    all    letters';
a2=upcase(a1);
a3=lowcase(a1);
a4=propcase(a1);
a5=propcase(a1,'\');
a6=compbl(a1);
a7=compress(a1);
run;
proc print;
run;

data new2;
a1='a   b c de f     g hf';
a2=compbl(a1);
a3=compress(a1,'f ');
run;
proc print data=new2;
run;

data jnf;
set sashelp.adsmsg;
sk=propcase(compress(MNEMONIC,"_"));
run;

data find;
string1='Hello Hi I am Bibi';
f=find(string1,'H',8);
g=index(string1,"H");
d=indexw(string1,"am");
p=substr(string1,7,2);
run;
proc print;
run;

data disease;
input dsg$ 20.;
cards;
lung cancer
brain cancer
skin cancer
fever
leg pain
;
run;
data pp;
set disease;
x=find(dsg,"cancer");
if x gt 0;
run;
proc print;
run;

data BB;
input country$ 20.;
cards;
japanJN
indiaIN
AmericaUS
;
run;
data BB1;
set BB;
x=substr(country,(length(country)-1));
y=substr(country,1,(length(country)-2));
run;
proc print;
run;
