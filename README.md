# checking_primes
A way to efficiently check if a number is prime or not prime


This involves "reverse" and "distributed" counting - and is quite simple. The easiest way to explain it is:


Imagine having three pockets. The main question to check for "primeness" is to ask: "What is the best way to distribute an integer (P) into those three pockets to check if (P) is a prime?"

The "reversed" part:
Given the integer (P) is always odd when it is a prime, the first step is to assign the 3rd pocket a value of 1. This makes (P - 1) even, and so we distribute the 1st and 2nd pockets with an even half - call it (K). Now, the only way for (P) to be not prime is if the 1st and 2nd pockets are fully divisible by the 3rd pocket (ignore it when the 3rd pocket is 1, ie. at the start). 

The "distributed" part:
Now we distribute the integers in each pocket, where we take an integer of 1 from either pocket 1st or 2nd, and pass it to the 3rd pocket. This is in order to maintain that all 3 pockets sum to the original integer (P). Here, we check if both 1st and 2nd pockets are divisible by the integer count in the 3rd pocket, if yes, then clearly it is not prime. We repeat this process until the 3rd pocket is larger than the original pockets of 1st and 2nd (i.e. larger than K). If it is larger than K, then there are no integers left to factorise, and thus the number is prime.
