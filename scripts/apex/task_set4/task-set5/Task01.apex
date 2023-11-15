/**
1. Write a program than create List of Double with 10 elements 
   print out the first value and last value of the list 
   if first item and last item values are equal 
   print end with what we started 
   else print different beginning and ending 
    HINT : No Loop Needed Here
    
     */
List<Double> priceList = new List<Double>{
  77.414d,
  54.957d,
  13.271d,
  83.671d,
  32.124d,
  79.414d,
  94.957d,
  19.271d,
  86.671d,
  23.98d
};

//how to read first value from the list
Double firstItem = priceList.get(0);
//how to read last value from the list
Double lastItem = priceList.get(priceList.size() - 1);

if (firstItem == lastItem) {
  System.debug('end with what we started ');
} else {
  System.debug('different beginning and ending ');
}
