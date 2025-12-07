//1. Load the script school.q and view the tablesa present in the q session
\l school.q

//2. View the marks for class A
select from marks where class = "A";

//3. View the marks for the males of class B
select from marks where gender="M", class = "B";

//4. What is the average french mark in class C?
exec avg mark from marks where subject=`french, class="C";

//5. Display the average mark for each subject ignoring classes
select avgMark:(avg mark) by subject from marks;

/
6. For class A, produce a table which includes the average, minimum, maximum, and the
standard deviation of the math marks
\
select avgMarks:(avg mark), minMark:(min mark), maxMark:(max mark), stdDev:(dev mark) from marks where subject=`maths, class="A";

//7. Display the lowest, median and highest mark, according to gender and subject
select lowestMark:(min mark), medianMark:(med mark), highestMark:(max mark) by gender, subject from marks;

//8. How many people are in each class?
select sumPeople:(count i) by class from marks;

/
9. For class B, produce a table that includes the median, range, sum of the marks and number 
of distinct marks from the ict marks 
\
select medianMark:(med mark), range:((max mark),(min mark)), sumMarks:(sum mark), distinctMarks:(count distinct mark) from marks where subject=`ict;

//10. Calculate the highest average subject mark for class E, calling it topmark
topmark:exec max mark from select avg mark by subject from marks where class="E";

//11. Without using the avg function, calculate the average mark for french in class D. Use the avg function to verify your result.
/No avg function
average1:select avgMark:((sum mark)%(count i)) from marks where subject=`french, class="D";
/with avg function
average2:select avgMark:(avg mark) from marks where subject=`french, class="D";
/verify
average1=average2;

//12. Calculate the range of marks among the males in class D in ICT and French
select range:((min mark), (max mark)) from marks where gender="M", class="D", subject in `ict`french;


//13. Delete class E's results from the population
delete from marks where class="E"; //not permanent deletion

//14. It was discovered that class A French papers were marked too hard. Addd 5 marks to each of their scores
update mark:mark+5 from `marks where class="A", subject=`french; //persisting addition

//15. Add a new column called average to the table, which contains the average mark for the class and subject
update average:(avg mark) by subject, class from `marks;

//16. Load the fakedb.q script and create a quotes and trades table
\l fakedb.q
makedb[1000000;10000];


/
17. Find the time whwere the price of each sym, for the trades table, changes by the largest absolute value for
the list of syms provided
\




/
18. For an individual sym from the imput list, calculate the 10 and 15 trade moving averages. On the table, 
mark the instances (using boolean) where the values cross
\



/
19. Find the number of times the trade price was below the midprice, above the midprice and equal to the midprice
for each sym. Also return the absolute maximum difference between the midprice and the trade price for each sym.
\

//Not done, need to revise a few concepts.
