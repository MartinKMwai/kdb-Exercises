// 1. Create two lists, a with values 1 2 3 and with values 4 5
a:1 2 3;
b:4 5;

/ Make one new list c from  a and b
c:a,b;

/Sum the elements of c
sum c;

/ Multiply all of the elements of c by 10
10*c;


//2. Define a new empty list, d
d:()

//3. Redefine d to be an empty list of type integer
d:`int$();

//4. Add 5 random elements to d
d:d,55 66 78 89 88i;

//5. Create a list e with one element
e:enlist 55;

//6. Create a list, list1, with 20 random values from 3 until 30.
list1:20?(3 + til 30);

/Find the maximum, minimum and the average value of list1
min list1;
max list1;
avg list1;

/find the number at index 10 in list1
list1[10];

/find the 20th number in list1
list1[19];

/Are any of the following numbers (3 5 7 11 13 17) in the list?
3 5 7 11 13 17 in list1; //return a boolean list

/Multiply each element on list1 by 3
3* list1;

/Add to each elerment of list1 its index in the list, i.e. add 0 to the element at index 0,
list1 + til count list1;

/Find all the even numbers in the list. How many are there?
count where 0=list1 mod 2;

/Take the first ten items of list1 1and cast them to dates; why do you gert these dates?
`date$10#list1;
/We get these dates because kdb+ considers the date 2000.01.01 as the date at index 0, i.e. the first date. Every date after that is guiven an integer with this start as the reference


//7. Create the matrix m (3x3 matrix with numbers from 1 to 9)
m:3 cut 1+til 9; / or (3 3#1+til 9)

/Get the middkle column of m and save it as a new variable a
a:m[;1];

/Replace the middle row of m with a
m[1]:a;

/Transpose m and store as mm
mm:flip m;

/Join an extra row to mm consisting on 10s
mm:3 cut raze mm,3#10;

/Join another row, 11 12 13
mm:3 cut raze mm, 11 12 13;

//8. Create the following nested list(1 2 3;`a`c`b;10 11 12 14f;100011b)
nestedList:(1 2 3;`a`c`b;10 11 12 14f;100011b);

/Find the type of each of the following rows
type each nestedList;

/Colapse the nesting of list list
raze nestedList;

//9. Define the strings s1:"Hello" and s2:"World"
s1:"Hello";s2:"World";

/Join them to form a new string s:"Hello World"
s:s1," ",s2;

/Find the index of the letter "W" in s
s?"W";

/Find the index of the last "l" in s
last where s="l";

/From the string s, remove "Hello" from the start and add "of Warcraft" on the end. 
(last (" " vs s)), " of Warcraft";

//10. Creation of a table too big to add  here as a comment.

games:`$("Crash Bandicoot";"Streets of Rage";"Echo the Dolphin";"Crash Bandicoot 2";"Sonic the Knuckles";"Micro Machines";"Pokemon Red";"Super Mario Brothers";"Mega Bombaman";"Zelda");
platform:`$("PSI";"Sega Megadrive";"Sega Megadrive";"PSI";"Sega Megadrive";"PSI";"Gameboy";"Gameboy";"Sega Megadrive";"Gameboy");
levels:`int$(7 9 6 8 4 1;2 1 3 5;8 5 7 5 4 4;10 2 1;4 2 1 10;8 4 9 5 8 10;0 3 2 10 8 5 6 10;6 0;8 4 8 9 5 1 7;0 10 9 5 2);

/create another list, which is the number of users for each game
numberOfUsers:count each levels;

/calculate the average user level for each game
avgUserLevel:avg each levels;

/Create a boolean list indicating whether the average user level is more than 6
moreThanSix:avgUserLevel>6;

/Sum the users of each platform. Which was the most popular?
table:([]games;platform;levels;numberOfUsers;avgUserLevel); //create table for easier calculation

select sum numberOfUsers by platform from table; //sums the users of each platform
exec platform from (select sum numberOfUsers by platform from table) where numberOfUsers=max numberOfUsers ;

//remove all the data for Gameboy
delete from table where platform=`Gameboy;
