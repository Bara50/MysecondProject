/**

You can exit any type of loop early, 
using the keyword BREAK when needed

*/
//Create a list of Integer

List<Integer> numList = new List<Integer>{7,12,15,10,45,35,23};


//Loop through each and every item ,
// when you find 10, stop looping


for(Integer eachNum : numList){
  
  System.debug(eachNum);
    if(eachNum==10){
    System.debug('YAY');
 //in order to break the loop to stop looking
 // you can use BREAK statment
     break ;


    }
  System.debug(eachNum);
}







