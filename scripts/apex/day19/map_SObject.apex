/**
Create a map of Salesforce RecordId and sobject Type Account
add few item in it 

 */

 Map<Id,account> accMap = new  Map<Id,account>();
 accMap.put('0018Y00002vLlGbQAK', new Account(Name='Cydeo1'));
 accMap.put('0018Y00002vLlGbQAC', new Account(Name='Cydeo'2));
 accMap.put('0018Y00002vLlGbQAD', new Account(Name='Cydeo'3));


  System.debug('accMap value is : ' + accMap);
  