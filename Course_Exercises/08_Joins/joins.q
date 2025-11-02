/
For the following exercises, use the script ‘fakedb.q’ and the function ‘makedb’ to create
tables.
\
\l fakedb.q
makedb[20;0]
//1. Create a "quote " table of size 20 and:
/ Store the first five rows as "q1"
q1:5#quotes;

/ Store the last 5 rows as "q2"
q2:-5#quotes

/ Vertically join "q1" and "q2" and store as "q3"
q3:q1,q2;

//2 Create a "quotes" table of size 1000 and
/ Calculate the "minbid"(minimum bid value) and "maxask"(the maximum ask valuye for each symbol, and store in a seperarate table)
makedb[1000;0]
t1:select minBid:min bid, maxAsk:max ask by sym from quotes; 

/ Left join the table back to the original table
joinTable:lj[quotes;t1];

/
3. Create "quotes" and "trades" tables of size 1,000,000 and 200,000 respectively and join, to each trade, 
the prevailing mid price (average of bid and ask) for the relevant time and sym
\
makedb[1000000;200000]

aj[`sym`time;trades;update midPrice:(bid+ask)%2 from quotes];



//DONE


























