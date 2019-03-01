
data p;
input class$ grade :percent8.;
format grade percent8.1;
cards;
A 14.5%
B 20.5%
C 33%
D 32%
;
run;
proc gchart data=p;
pie class / sumvar=grade;
run;
