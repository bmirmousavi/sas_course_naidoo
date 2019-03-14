data Bibi;
input x y z;
cards;
100 200 300
400 500 600
;
run;

/*If we want to add out title and remove the date and numbers on the top of output*/
option nodate nonumber;
/*we don't want to see the observation column*/
proc print data=Bibi noobs;
title "This is my data";
run;

