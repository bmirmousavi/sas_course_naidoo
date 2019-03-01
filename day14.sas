data RomanNumerals1;
input x @@;
n = x;
format n ROMAN8.;
datalines;
1 2 3 4 5 9 30 40 45 50 1999 2011
;
 
proc print noobs;
run;





