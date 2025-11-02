//1. Start a Q session:
/ Do so by calling q in the terminal if the q executabvle is in the path variables


//2. Define the following variables: a = 5, b = a − 3, c = 3b + 1

a:5;b:a-3;c:1+(b*3);

//3. Repeat question 2 in one single assignment statement.

a:5;b:a-3;c:1+(b*3); //not sure how they want this executed


//4. Calculate ((a^2) - 3c)/b and store the answer as the variable y. 

y:((a xexp 2)-(3*c))%b;

//5 & 6 too easy, no point putting them here, running type on the variables given works fine

//7.  Get today’s date and store it as the variable d.
/ Calculate the number of days since last Christmas.
/ Find out on which day of the week that the 10th of January 2011 was (hint: try using mod with a date)

d:.z.d;
numberOfDaysSinceXmas:d-(2024.12.25);

/mod 0 is Saturday
day:2011.01.10 mod 7; //gives 2, which means it was a Monday


//8. Define the following items, and then cast as appropriate to the stated type:
/d1:"2014.01.01" to a date
"D"$"2014.01.01";

/d2:`2013.12.10 to a date
"D"$(string d2:`2013.12.10);

/n1:3.14 to an integer
`int$n1:3.14;

/n2:"2" to an integer
"I"$n2:"2";

/a1:"abcde" to a symbol
"S"$a1:"abcde";


/a2:"abcde" to the ascii codes of the letter
`int$"abcde";



//9. Show all the variables defined in the current q session
\v

//10. Close the current session
/ \\ (use two backticks)






















































































































































