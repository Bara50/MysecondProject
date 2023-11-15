/**

for( initilization ;loop condition ;increment|decrement ){
    // repeating stuff here 
 }
for( Integer count=1; count <10; count++){
// repeating stuff here 
}
*/
// Integer count=1;
// while( count<10 ){

// System.debug(count);
// count++;
// }


/*
Initialization : 
this is where variable is declared and initial value is given , 
IT WILL ONLY RUN ONCE WHEN THE LOOP START
 
Loop condition : 
this is where we put condition for the loop,
 as long as it's true the loop continue. 

Increment|decrement : 
this is where we increment or decrement the value so
 we can change the condition and eventually get out of the loop ,
  IMPORTANTLY , It run after each iteration 

for( Integer count=1; count <10; count++){
// repeating stuff here 
 */

//counting 1-10 using loop
 for( Integer count =1; count <10; count++){
 System.debug(count);
 }


System.debug('--------------------');


//skip counting by 2 from 0-20 using for loop
for( Integer level =0; level <= 20; level+=2){
 System.debug(level);
 }


