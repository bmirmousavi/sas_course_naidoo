options validvarname=any;
libname Bibi 'C:\Users\moghimi\Desktop\sas';
libname xl XLSX 'C:\Users\moghimi\Desktop\sas\pp2.xlsx';
data Bibi.NAIDU;
set xl.NAIDU;
run;
data Bibi.UUU;
set xl.UUU;
run;








proc import datafile="C:\Users\moghimi\Desktop\sas\mydata1.xls"
out=Bibi(keep=a b c) dbms=xls replace  ;
sheet='uuu';
getnames=no;
/*datarow=3;*/
/*range='uuu$ a1:d9';*/
run;
proc print data=Bibi;
run;















proc import datafile="C:\Users\moghimi\Desktop\sas\mydata1.xls"
out=Bibi1(drop= a d) dbms=xls replace;
/*sheet="naidu";*/
getnames=no;
/*datarow=4;*/
range='naidu$ a8:g30';
run;
proc print data=Bibi1;
run;





options validvarname=any;

libname ps XLSX 'C:\Users\moghimi\Desktop\sas\mydata1.xls';
data Bibi.NAIDU1;
set ps.NAIDU;
run;
data Bibi.UUU1;
set ps.UUU;
run;















proc import datafile="C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\raw.txt"
out=Bibi.t1 dbms=dlm replace;
getnames=no;
run;
proc print data=Bibi.t1;
run;

proc export outfile="C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\c1.txt"
data=Bibi.t1 dbms=dlm replace;
run;


proc export outfile="C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\c2.txt"
data=Bibi.uuu dbms=dlm replace;
run;



proc import datafile="C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\myfile.csv"
out=Bibi.comma dbms=csv replace;
getnames=no;
run;
proc print data=Bibi.comma;
run;


proc export outfile="C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\comma.txt"
data=Bibi.uuu dbms=dlm replace;
run;

