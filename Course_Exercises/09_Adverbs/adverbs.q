//QUESTION 1

a:(103 567;123;459 754 900);

/q1a : Use the count function to determine how many items are in a
sum count each a; /if it means that an item is an individual long
count a; / if item means a single row of elements

/q1b : count how many elements are in each element of a
count each a;

/q1c : sum every row of a
sum each a;

/q1d : sum the numbers within a
sum sum each a;


//QUESTION 2 : Find the total price of the largest two consequtive trades from the prices list generated below
prices:28+.01*floor 100*1000?5.0;

max (+)prior prices;


//QUESTION 3: 
C:{[n;k] prd[1+til n]%prd[1+til k]*prd[1+til (n-k)]};

/Using this function find:
/q3a : The value of C(15, k) where k ranges from 2 to 10.
(C[15;]) each (2 + til 9);

/q3b : The value of C(n, 3) where n ranges from 5 to 10.
(C[;3]) each (5+til 6);



//QUESTION 4 ### NEED TO PREP HARDER FOR THIS SECTION. COULDN'T SOLVE IT INTUITIVELY
f:{x+y*8};a:1;b:4;c:3;list1:1 2 3;list2:10 9 8; list3:3 7 1 5;

/Find which combinations of atoms, lists and adverbs with the function f return the following answers:
/ q4a : 35 39 33 37
list3 f\: b;



/ q4b : (81 82 83;73 74 75;65 66 67)

f[list1;] each list2;


/ q4c : 81 153 217

a f\ list2;

/ q4d : (51 107 115 155;83 139 147 187; 35 91 99 139;67 123 131 171)

f/:[f\[c;list3];list3];

/q4e : 129 130 131 

f/[list1;list3];

/ q4f : 35 31 57 13

f':[b;list3];


//DONE

















































































