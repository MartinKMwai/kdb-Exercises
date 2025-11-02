//1. Write a monadic function, f, which calculates the square of a number (using explicitly defined parameters)
f:{[x]x xexp 2};

//2. Execute f, with argument a, and assign the result to new variable b;
a:88;b:f[a];

//3. Write a dyadic function, g, which calculates the square of the first argument, divided by the square of the second argument (using implicit parameters)
g:{(x xexp 2)%(y xexp 2)};

//4. Execute g, with arguments a and b. Store the result of this function in a variable c
c:g[a;b];

//5. Create a dyadic function f1 which indicates whether the product of two numbers is greater than their sums
f1:{(x*y)>(x+y)};

//6. Let a=5, b=a-5, and define c=(b/a)+(a/b) using only one sets of brackets | (not sure I succeed in that last section)
a:5;b:a-5;
c:+[b%a;a%b];

//7. Define the function g1 that calculates the polynominal x^5 - 3x^2 + 5 and determine the value of the polynomial when x=4, x=8, x=6.7
g1:{(x xexp 5) - (3*(x xexp 2)) + 5};
g1[4 8 6.7];

//8. Calculate the following without using brackets: -5((6)%(3-1)) + 7
7-5*6%3-1;

//9. Create a function that calculates the area of a triangle. Find the area of a triangle of height 7cm and base 10cm
areaTriangle:{[height;base]0.5 *base *height};
areaTriangle[7;10];

//10. Create a function that calculates the sum of two squares of a number x. Find the sum of two squares of 18
sumOfSquares:{((x*x)+(x*x))};
sumOfSquares[18];

//11. Create a function that takes three variables, a, b and c and calculates a^3 + b^2 + c. Find the value of the function at 13, 3, 6.
funct:{[a;b;c](a xexp 3)+(b xexp 2) + c};
funct[13;3;6];



//12. A rough calculation of the BMI of a person takes their weight in kgs, and divides it by theighg heighgt in metres squared.Create a BMI function, no explicit params
BMI:{(x)%(y xsxp 2)};

//13. Degree celcius is converted to fahrenheit by multiplying by (9/5) and adding 32. Create a formula using implicit params
CtoF:{32+(x*9%5)};

//14. Using the param called perimeter, create a formula called area which will take the perimeter of a square and find its area. Use one set of brackets
area:{[perimeter] length*length:perimeter%4};

//15. Use xexp without explicit params for the solution to the previous question
area2:{(x%4) xexp 2};

//16. A car depreciates at a rate of 15% for the first three and then 8% for the next three years. Create a function k to calculate the value after 6yrs
/ Assume that the starting value is 15000GBP
k:{0.92*0.92*0.92*0.85*0.85*0.85*x}; //I could do this cleaner, went explicit instead
k[15000];

/
17. A grocer wants to create a function thast he can use each day to find out how much his fruit order will cost. Create a function to
    calculate how much his order will cost each day. Apples, Oranges, Bananas and pears cost 1.59, 1.99, 0.99 and 2.49 per kilo respectively.
\

grocer:{[apples;oranges;bananas;pears](apples*1.59)+(oranges*1.99)+(bananas*0.99)+(pears*2.49)};
day1:grocer[2;2;1;0.5];
day2:grocer[4;5;1;2];
day3:grocer[4;7;4;0.5];

//DONE













































































