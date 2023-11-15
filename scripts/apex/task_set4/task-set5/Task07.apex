/**
7. Write a program that create List of Integer with 10 items 
    get the count of the items more than 5 and 
    break out of the loop if you found 2 number  more than 5

 */

List<Integer> numberList = new List<Integer>{
  1,
  5,
  9,
  73,
  2,
  23,
  45,
  3,
  98,
  7
};

Integer count = 0;

for (Integer each : numberList) {
  System.debug('Current value : ' + each);

  if (each > 5) {
    count++;
  }
  if (count == 2) {
    break;
  }

}
System.debug('count value is : ' + count);








