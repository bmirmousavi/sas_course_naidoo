data bank;
input pid age sex$;
cards;
100 60 Male
20 30 Female
50 50 male
;
run;
proc print data=bank;
run;
data bank;
set bank;
sex=upcase(sex);
run;
proc freq data=bank;
tables sex;
run;
/*vertical bar chart*/
/*
proc gchart data=bank;
vbar sex;
run;
/*3 dimentional vertical bar chart*/
/*
proc gchart data=bank;
vbar3d sex;
run;
/*Horizental bar chart*/
/*
proc gchart data=bank;
hbar sex;
run;
/*3 dimentional horizental bar chart*/
proc gchart data=bank;
hbar3d sex;
run;
