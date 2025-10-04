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
list1[10]

/find the 20th number in list1
list1[19]

/Are any of the following numbers (3 5 7 11 13 17) in the list?
3 5 7 11 13 17 in list1; //return a boolean list

/Multiply each element on list1 by 3
3* list1;

/Add to each elerment of list1 its index in the list, i.e. add 0 to the element at index 0,
list1 + til count list1;

//Find all the even numbers in the 






