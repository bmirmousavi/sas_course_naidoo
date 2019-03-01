data trials1;
infile cards missover;
input center$ trial$ sub;
cards;
appolo phase1 78
nims   phase3 89
care   phase4 56
appolo phase2
nims   phase1 79
care   phase3 
;
run;
proc print data=trials1;
run;

data trials2;
infile cards missover;
input center$6. trial$7. sub;
cards;
appolo phase1 78
nims   phase3 89
care          56
appolo phase2
nims   phase1 79
care   phase3 
;
run;
proc print data=trials2;
run;

data trials3;
infile cards missover;
input center$6. trial$7. sub;
cards;
appolo phase1 78
nims   phase3 89
care          56
appolo phase2 85
nims   phase1 79
care   phase3 45
;
run;
proc print data=trials3;
run;

data trials4;
infile cards missover;
input center$1-6 trial$8-13 sub;
cards;
appolo phase1 78
nims   phase3 89
care          56
appolo phase2
nims   phase1 79
care   phase3 
;
run;
proc print data=trials4;
run;

data trial5;
infile "C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\missing.txt" missover;
input x y z;
run;
proc print data=trial5;
run;

data trials6;
input center$1-6 trial$8-13 sub 15-16;
cards;
appolo phase1 78
nims   phase3 89
care          56
appolo phase2
nims   phase1 79
care   phase3 
;
run;
proc print data=trials6;
run;


data trials7;
input center$6. trial$7. sub 2.;
cards;
appolo phase1 78
nims   phase3 89
care          56
appolo phase2
nims   phase1 79
care   phase3 
;
run;
proc print data=trials7;
run;



data trials8;
input @ "care"  trial$8-13 sub 15-16;
cards;
appolo phase1 78
nims   phase3 89
care          56
appolo phase2
nims   phase1 79
care   phase3 
;
run;
proc print data=trials8;
run;


data trials9;
input @ "care" center$1-6 trial$8-13 sub 15-16;
cards;
appolo phase1 78
nims   phase3 89
care          56
appolo phase2
nims   phase1 79
care   phase3 
;
run;
proc print data=trials9;
run;

data clin;
infile cards dlm=',$& ';
input pid name$ age gender$;
cards;
123,kjjhj$65&female
145&kumar,25 male
134 ramya$25$female
;
proc print data=clin;
run;


data clin1;
infile cards dsd;
input pid name$ age gender$;
cards;
123,kjjhj,65,female
145,kumar,25,male
134,ramya,25,female
;
proc print data=clin1;
run;


data clin2;
infile cards dsd;
input pid name$ age gender$;
cards;
123,"kjjhj",65,female
145,kumar,25,"male"
134,"ramya",25,female
;
proc print data=clin2;
run;


data clin3;
infile cards dlm=',''""';
input pid name$ age gender$;
cards;
123,"kjjhj",65,female
145,kumar,25,"male"
134,"ramya",25,female
;
proc print data=clin3;
run;


data clin4;
infile cards dlm=',$&@ ' dsd;
input pid name$ age gender$;
cards;
123$"kjjhj",65&female
145,kumar 25,'male'
134 "ramya",29@female
;
proc print data=clin4;
run;

data tar;
infile "C:\Users\moghimi\Desktop\SAS_Course_bibi\MY Practice\blood.txt" firstobs=3 obs=20;
input pid gender$ bloodtype$ agegroup$ wbc rbc chole;
run;
proc print data=tar;
run;
