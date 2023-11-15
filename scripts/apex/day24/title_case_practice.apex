/**
*
* Given a String with a sentence with one or more words
* Make each words title case : first letter uppercase, the rest lowercase
* 
* for example: apex is great ===>Apex is Great
*
 */


 String name = 'APEX TrIger iS aWESome';
 System.debug('name value is : '+ name );

 //First normalize the space so we do not have any extra spaces other than needed
name = name.normalizeSpace();
System.debug('name value after normalize is ' +name);


 // get a list of each words ==> split by space that needed
 List<String> wordList = name.split(' ');
 System.debug('wordList value is : ' + wordList);

for(Integer i=0; i<wordList.size() ; i++) {

  // update each word to TitleCase by item = item.tolowercase().capitilize()  

wordList[i] = wordList[i].tolowercase().capitilize();

}

System.debug('wordList value is ;'+ wordList);

// now join the list items to get the String

name + String.join(wordList, ' ');
System.debug('name value is : ' + name);
