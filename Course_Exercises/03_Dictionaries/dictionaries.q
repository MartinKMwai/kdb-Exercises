//1. Create a dictionary with the letters from a to z, with their correspondikng numerical value
dict:.Q.a!(1+til count .Q.a);

/By indexing into the dictionary, find the numerical value of your nsme
dict["myName"]; //no spaces here.

/Rename the keys of your dictionary to be the upper case letters
dict:.Q.A!(1+til count .Q.A);

//2. Using another dictionary of your own design, change the upper case words "HELLO", "WORLD" to lowercase
dict:.Q.A!.Q.a;
dict["HELLO"]; 
dict["WORLD"];

/
3. Create a dictionary morse, which contains the letters of the alphabet from n through to s as the keys to the
morse code to those lettersas the values.
\

dict:"NOPQRS"!(`10`111`0110`1101`010`000);

/Join the numbers 0 to 4 to the existing dictionary
dict, dict1:("01234")!(`11111`01111`00111`00011`00001);

/for the phrase SOS in morse code
dict["SOS"];

//4. Create two dictionaries 
Places:`London`Edinburgh`Belfast`Manchester`Tobermory`Portsmouth`Cardiff;
rain2013:Places!557 704 944 867 1681 674 1152;
rain2012:Places!600 854 1020 955 1789 544 768;

/Extract the keys from the first dictionary
key rain2013;

/Extract values from the first dictionary
value rain2013;

/Create a new dictionary with the sum of the rainfall for both years
+[rain2013;rain2012];

/Find the average rainfall over the two years for each city
(+[rain2013;rain2012])%2;

/For which location was the value of rainfall more in 2013 than 2012
rain2013>rain2012;

/Find the average rainfall over the two years for the UK
(sum value (+[rain2012;rain2013]))%2;

//5. Create a dictionary containing all rthe variables in the workspace as keys, and their values as the values of the dict

(system "v")!(value each (system "v"));


















































