options ls=70 ps=40 pageno=1;
title1 "This is my data";
title2 "learning dlm";
title10 "My data";
footnote "this si the";
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

options missing=" ";
data dori;
input pid age sex$ income;
cards;
1 21 f 2000
1 23  m 600
2 45 f .
;
run;
proc print data=dori;
run;

options missing="P";
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

