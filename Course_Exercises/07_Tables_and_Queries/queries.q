//

//1. Start a session, load in "makedb.q" and create a database with 10000 quotes and 2000 trades
\l makedb.q
//makedb[10000;2000];

//2. Calculate the total volume traded from each sym and side, and store the result in the table "aggr"
aggr:select sum size by sym,side from trades; // there are no sides in the table, I use src here instead.

//3. Modify "aggr" in place so the sell volumes are negative amounts
update size:(-1)*size from `aggr where side=`sell;

//4. Use the modified "aggr" to calculate the final position, long or short, for each symbol
pos:select sum size by sym from aggr;

//5. Select all quotes from IBM and store the result in a table "ibmqt"
ibmqt:select from quotes where sym=`IBM;

/
6. Modify the "ibmqt" in place to add the new column "pricecross", indicating whether the bid price is greater than or 
equal to the ask price
\
update pricecross:(bid>=ask) from `ibmqt;


//7. Using the modified "ibmqt", find the number of quotes where the prices are crossed, and the number where they are not crossed 
crossed:count select from ibmqt where pricecross=1;
unCrossed:count select from ibmqt where pricecross=0;



//8. Delete (in place) all trades that occurred after midday
delete from `ibmqt where time > 2025.10.09D12:00:00.000000000;


