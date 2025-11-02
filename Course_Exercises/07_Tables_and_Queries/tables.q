//1. Create a table
country:([]id:1 2 3 4;city:`london`manchester`newyork`toronto;country:`uk`uk`usa`canada);

//2. Create an empty table called bonusvaluee, with columns called year (of type integer) and value (of type float).
bonusvalue:([]year:`int$();bonusval:`float$());

//3. Insert data intio the bonusvalue
`bonusvalue insert (1990 2000 2010;2000 1500 1000f);

//4. Create a keyed table for salary bands called "bands" which contains data.
bands:([code:`A`B`C`D] salary:("15-20";"20-30";"30-40";"40+"));

//5. Change D to include salaries from 40k to 60k and a new band E to include 60k+
`bands upsert (`D;"40-60");
`bands upsert (`E;"60+");

//DONE
