// ##################################################  SECTION 7.3 -- HARD QUERIES ##########################################################//


// 1. Load the fakedb.q script and create a trades and quotes table
\l fakedb.q
makedb[100000;10000];

/ 
2. From the trades table, find the average price of each sym in the five minutes after
   the hour, each hour, for the entire day. Add to this table the average price of
   each sym in the last five minutes of each hour
\

/use window join?
/ solution from the answers:
avgp:{[x] ffive:select first5:avg price by sym,hour:time.hh from trades where (sym in x),(time mod 3600000)<=00:05:00.000;
   lfive:select last5:avg price by sym,hour:time.hh from trades where (sym in x),(time mod 3600000)>=00:55:00.000;
   show ffive lj lfive}


//for soime reason, last5 column is empty
show avgp[`YHOO`ORCL];





//WILL COME BACK TO THIS AFTER LEARNING A FEW MORE CONCEPTS





