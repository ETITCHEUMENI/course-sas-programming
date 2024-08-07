***********************************************************;
*  Activity 4.06                                          *;
*    1) Add a WHERE statement that uses the SUBSTR        *;
*       function to include rows where the second letter  *;
*       of Basin is P (Pacific ocean storms).             *;
*    2) Run the program and view the log and data. How    *;
*       many storms were in the Pacific basin?            *;
***********************************************************;
*  Syntax                                                 *;
*     SUBSTR (char, position, <length>)                   *;
***********************************************************;

data pacific;
	set pg1.storm_summary;
	drop Type Hem_EW Hem_NS MinPressure Lat Lon;
	*Add a WHERE statement that uses the SUBSTR function;
	where 'P'= substr(Basin,2);
	Month= month(EndDate);
	year= year(EndDate);
	Day= day(EndDate);
	yrdif= YRDIF( StartDate, EndDate, "Age");
	MDY= MDY(month, day, year);
run;

