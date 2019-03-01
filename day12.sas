proc import datafile="C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\mydata1.xls"
out=Bibi(keep=a b c) dbms=xls replace  ;
sheet='uuu';
getnames=no;
/*datarow=3;*/
/*range='uuu$ a1:d9';*/
run;
proc print data=Bibi;
run;

proc import datafile="C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\mydata1.xls"
out=Bibi1(drop= a d) dbms=xls replace;
/*sheet="naidu";*/
getnames=no;
/*datarow=4;*/
range='naidu$ a8:g30';
run;
proc print data=Bibi1;
run;

/*exporting data from sas to outside as excel*/
proc export outfile="C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\Bibi1.xls"
data=sashelp.class dbms=xls replace;
run;
proc print data=sashelp.class;
run;
