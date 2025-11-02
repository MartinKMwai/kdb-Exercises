//Start the table exercises here

//1. Create three lists, a,b, and c each with 4 elements.
a:23 45 67 89;
b:12 23 45 55;
c:88 99 66 55;

/make a new table, t, with each column consisting of the lists a, b and c
t:([]a;b;c);

/ make a dictionary dfrom the table t
d:flip t;


//2. Create an empty trade table with 4 columns (syms, side, size, price)
trade:([]sym:`$();side:(); size:`int$();price:`float$());

//3. Create another empty table, lasttrade, which is a copy of trade. Key this by sym
lasttrade:([sym:`$()];side:(); size:`int$();price:`float$());

//4. Is therea difference in the metadata between trade and lasttrade? What about the type? What do each of the columns in meta represent?
/ there is really no metadata difference. lasttrade (keyed) has a type 99h, but trade (unkeyed), 98h.
/ columns, t- type, f- foreign key, a- attribute.


//5. Add a row each time, containing data to trade.
`trade insert (`MSFT;`B;500;60f);
`trade insert (`IBM;`S;1700;88f);
`trade insert (`AAPL;`S;180;66f);


//6. Add three more in one statement. // Could have used the comma join, but I wanted to try out the insert
`trade insert (`AAPL`IBM`MSFT;`S`B`B;180 500 689;35 88 66f);

//7. Fill the lasttrade with the data from trade
lasttrade:lasttrade,1!trade;

//8. The manager at a local shop wants to create a database of orders that he can view and get info from easily
/ Create the table "stock". 

stock:([]item:`sodabread`bacon`mushrooms`eggs;brand:`frysareus`prokstop`veggiestuff`veggiestuff;priceperunit:1.5 1.99 0.88 1.55;order:50 82 45 92);

/The manager forgot to add in tomatoes. He must include an order of 70 units at 1.35 each, from Veggiestuff. Add this permanently to the table
`stock insert (`tomatoes;`veggiestuff;1.35;70);

/View the meta for the table
meta stock;

/Key the table according to the item and brand
2!`stock;

/How does the matadata compare for the keyed and the unkeyed tables?
/ "I see none, not sure I should see any."


//9. The manager decides to do his bulk orders together with a food stall trader at the market. They hope to save money that way.
/ Create the table
trader:([]item:`sodabread`bacon`mushrooms`eggs`tomatoes;brand:`frysareus`prokstop`veggiestuff`veggiestuff`veggiestuff;priceperunit:1.5 1.99 0.88 1.55 1.35;order:200 180 110 210 100);

/Key the table by item and trade
2!`trader;

/Create a new table, totalorders, which has the sum of both orders from the traders-drop the PricePerUnit column from each table first
totalorders:pj[delete priceperunit from trader;delete priceperunit from stock]; //RHS table must be keyed.

/They can both reduce the prices to be 75% of the original price by ordering together. Create a list, newprices
newprices:0.75*(exec priceperunit from stock);

/Join this on as a new column to totaltraders
totalorders:update newprices:newprices from totalorders;

/How much money per week will the manager of the local store save by working with the traders? What about the trader?
traderAlone:exec sum priceperunit*order from trader;
storeAlone:exec sum priceperunit*order from stock;
traderTogether:sum (exec order from trader) * (exec newprices from totalorders);
storeTogether:sum (exec order from stock) * (exec newprices from totalorders)
storeSavings:storeAlone - storeTogether; //Savings made by the manager of the store
traderSavings:traderAlone - traderTogether; //Savings made by the trader

//DONE





























