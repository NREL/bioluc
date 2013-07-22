data USmeat;
input year region $ GDP CGS dairy pig poultry;
GDPYr= GDP*year;
GDPsq=GDP * GDP;
GDPcu=GDP * GDP * GDP;
cards;
1961	US	2849.211953	4.45E-05	0.000269846	2.77E-05	1.64E-05
1962	US	3020.246673	4.48E-05	0.000261537	2.84E-05	1.63E-05
1963	US	3143.327526	4.68E-05	0.000262476	2.93E-05	1.66E-05
1964	US	3332.971726	4.99E-05	0.000262655	2.91E-05	1.71E-05
1965	US	3570.174559	4.97E-05	0.000258261	2.60E-05	1.81E-05
1966	US	3871.744528	5.17E-05	0.000257136	2.62E-05	1.92E-05
1967	US	4050.050971	5.24E-05	0.000248936	2.87E-05	2.00E-05
1968	US	4383.063026	5.35E-05	0.000249154	2.96E-05	1.98E-05
1969	US	4689.430895	5.36E-05	0.000248991	2.90E-05	2.06E-05
1970	US	4893.442376	5.49E-05	0.000245885	2.97E-05	2.15E-05
1971	US	5267.665219	5.44E-05	0.000247226	3.26E-05	2.17E-05
1972	US	5745.687632	5.54E-05	0.000248841	3.01E-05	2.26E-05
1973	US	6365.330834	5.20E-05	0.000249181	2.75E-05	2.16E-05
1974	US	6845.353209	5.50E-05	0.000240048	2.96E-05	2.17E-05
1975	US	7411.870114	5.70E-05	0.000234081	2.42E-05	2.12E-05
1976	US	8184.880742	6.08E-05	0.000242313	2.56E-05	2.29E-05
1977	US	9025.89526	5.87E-05	0.00024183	2.70E-05	2.32E-05
1978	US	10108.01008	5.59E-05	0.000242208	2.71E-05	2.41E-05
1979	US	11191.50224	5.00E-05	0.000244603	3.09E-05	2.60E-05
1980	US	12066.55378	4.91E-05	0.000241152	3.31E-05	2.65E-05
1981	US	13409.85262	4.97E-05	0.000242106	3.15E-05	2.77E-05
1982	US	13819.05758	4.97E-05	0.000246621	2.82E-05	2.82E-05
1983	US	14875.48674	5.04E-05	0.000251524	2.98E-05	2.89E-05
1984	US	16385.77536	5.01E-05	0.000250313	2.95E-05	2.97E-05
1985	US	17403.53786	5.06E-05	0.000259364	2.96E-05	3.08E-05
1986	US	18204.28206	5.10E-05	0.000260461	2.79E-05	3.22E-05
1987	US	19115.16008	4.90E-05	0.00026559	2.80E-05	3.47E-05
1988	US	20346.91751	4.84E-05	0.000256728	2.99E-05	3.58E-05
1989	US	21607.08035	4.56E-05	0.000253105	2.96E-05	3.75E-05
1990	US	22589.21553	4.48E-05	0.000258317	2.84E-05	3.94E-05
1991	US	23057.95423	4.44E-05	0.000257841	2.86E-05	4.09E-05
1992	US	24088.27847	4.43E-05	0.000261102	3.02E-05	4.23E-05
1993	US	25004.7335	4.31E-05	0.000255817	2.98E-05	4.28E-05
1994	US	26249.64069	4.43E-05	0.000258965	3.01E-05	4.35E-05
1995	US	27128.59533	4.41E-05	0.00025944	2.97E-05	4.31E-05
1996	US	28322.63505	4.46E-05	0.000254219	2.78E-05	4.42E-05
1997	US	29725.79539	4.35E-05	0.000251842	2.75E-05	4.46E-05
1998	US	30932.4987	4.40E-05	0.000251086	3.02E-05	4.48E-05
1999	US	32391.07442	4.46E-05	0.00025363	3.05E-05	4.73E-05
2000	US	33924.16874	4.41E-05	0.000256019	2.93E-05	4.68E-05
2001	US	34625.67974	4.34E-05	0.000258929	2.90E-05	4.70E-05
2002	US	35432.93146	4.44E-05	0.000261665	2.97E-05	4.87E-05
2003	US	36736.1769	4.27E-05	0.000259406	2.98E-05	4.90E-05
2004	US	38792.81546	4.32E-05	0.000255633	2.97E-05	5.11E-05
2005	US	40880.16038	4.27E-05	0.00025606	2.91E-05	5.18E-05
2006	US	42960.51284	4.29E-05	0.000251805	2.89E-05	5.21E-05
2007	US	44549.90224	4.24E-05	0.000255849	2.97E-05	5.07E-05
;

Proc reg data = USmeat;
var year GDP CGS dairy pig poultry;
model CGS = year GDPYr GDPsq/ss2 press;
output out=cgs p=yhat r=resid;
%macro PRESS(library = c:\2007\, dataset = labor, y = y, x= x1 x2 x3 x4 x5, debug = no);

/* the following macro performs delete an observation jackknife estimation */

%if %trim(&library) ne %then %do; /* make sure the library name is not blank. */

libname in "&library";

data in_put;
set in.&dataset;
obs = _n_;
call symput('n',_n_); /* store the number of observations */
run;
%end; /* of reading the input data set */

%else %do; /* no library name given. use the WORK library. */

data in_put;
set &dataset;
obs = _n_;
call symput('n',_n_); /* store the number of observations */
run;

proc sort data = in_put; by obs; run;

%end; /* of reading the input data set */

/* rog06152008-1: get the number of independent variables */

%let i = 1;
%let temp = a;
%do %while(&temp ne );
  %let temp = %qscan(&x, &i);
  %let i = %eval(&i+1);
%end;


%put *************** number of dependend variables = i = %eval(&i-2);
%let num = %eval(&i);

/* rog06152008-1: end of getting the number of independent variables */

/* end of getting the number of independent variables */


/* model the full data set */

/* rog06152008-2: optional to print SAS' results using the DEBUG option */

%if %upcase(&debug) eq YES %then %do; 
proc reg data = in_put;
model &y = &x/influence;
output out = full p=&y._full;
run;

%end; 

%if %upcase(&debug) eq NO %then %do;

proc reg data = in_put noprint;
model &y = &x/influence;
output out = full p=&y._full;
run;

%end; 

/* rog06152008-2: end of printing SAS' results */

data full;
set full;
obs = _n_;
run;


%do i = 1 %to &n; /* delete an observation and calculate the mean loop. */


data in&i;
set in_put;
    obs = &i.;
	if _n_ eq &i then delete; 
run;



/* end of deleting an observation */

/* model the data with an observation deleted */

proc reg data = in&i outest = reg_out&i. ;
id obs;
model &y = &x/noprint;
run;

/* end of modeling the deleted data set */

/* calculate the PRESS statistic */

data model_data;
set full;
if obs eq &i;
run;

data reg_out&i.;
set reg_out&i.;
obs = &i.;
	%do k = 1 %to %eval(&num-2); 
	     %scan(&x, &k)_beta = %scan(&x, &k);	
	%end; 
run;


data PRESS&i.;
merge reg_out&i. model_data;
by obs;
dsqr_i = (&y - (intercept + %scan(&x, 1)_beta * %scan(&x, 1) %do k = 2 %to %eval(&num-2); 
	     + %scan(&x, &k)_beta * %scan(&x, &k)	%end;) )**2;
run;

%end; /* of looping thru the observations */



/* end of calculating the PRESS statistic */

/* stack the data sets, make the final summation, and print the data */

data PRESS;
set %do k = 1 %to &n; PRESS&k %end; end = eof ;
sum_dsqr + dsqr_i;
if eof;
run;

proc print data = PRESS l;
var sum_dsqr;
title "PRESS Statistic in Regression";
label sum_dsqr = "PRESS";
run;

/* end of stacking the data sets  */

%mend PRESS;
%PRESS(library = , dataset = labor, y = y, x= x2 x3 x5, debug=yes);

*%PRESS(library = , dataset = mydata, y = cotton, x= rice, debug = yes);
