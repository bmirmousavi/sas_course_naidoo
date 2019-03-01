data deme;
input pid age sex$;
cards;
100 50 Male
200 60 Female
300 50 Male
;
run;

proc print data=demo;
run;
/*we can also use datalines insted of cards*/
/*
data demo;
input pid age sex$;
datalines;
100 50 Male
200 60 Female
300 50 Male
;

proc print data=demo;
run;
*/
proc freq data=demo;
run;
proc freq data=demo;
where age=50;
run;
proc freq data=demo;
where sex="Female";
run;
/*If we want to have a graph*/
proc gchart data=demo;
vbar3d sex;
run;

/*If we want to print data only for Female greater than 13 years old from a 
database called class 
located in sashelp library*/
proc print data=sashelp.class;
where sex="F" and age gt 13;
run;

/*We can sort our data base of one variable*/
proc sort data=sashelp.class out=naidu;
by Weight;
run;
proc print data=naidu;
run;
/*if our name is in lowercase letter and we want them at uppercase
also we can change the name from F to Female*/
/*the ddefault for sex length is one,
so we need to change it to more in order to see Female in output*/
/*in the output window we always see
"The SaS System" as a title which can change it to whatever we want*/
title "this is the data of my students";
/*if we want to remove the data and number from top of output window we need to add option*/
/*If we want to have uppercase title we have to add caps into option*/
options nodate nonumber;
data naidu;
length sex $ 20;
set naidu;
/*name=upcase (name);*/
if sex="F" then sex="Female";
run;
proc print data=naidu;
where sex="Female" and age gt 13;
sum weight;
run;
