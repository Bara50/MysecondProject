/**
3. Write a program that store List of Integer with 10 
items and try to get the sum of values,  break out of
 the loop if the sum is greater than 100. 

 */
List<Integer> numberList = new List<Integer>{
  66,
  74,
  86,
  81,
  44,
  11,
  22,
  33,
  4,
  5,
  7
};

Integer sum = 0;

for (Integer each : numberList) {
  System.debug('Current value : ' + each);

  sum += each;
  if (sum > 100) {
    break;
  } else {
  }
}

System.debug('sum value is : ' + sum);
