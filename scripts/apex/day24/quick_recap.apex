// store many names  -->> List<String>

// store unique names -->> Set<String>

// store student names and score -->> Map<String,Integer>

// store all the groups(that contains many names ) into a collection

// how to represent one group that have many names --> List<String>
// how to represent many groups --> List< List<String> >

List<String> group1Names = new List<String>{ 'Zhamilia','Marina','madina','Vita'};
List<String> group2Names = new List<String>{ 'Ali', 'Hyder', 'Dua', 'Elif' };
List<String> group3Names = new List<String>{ 'Jon', 'Snow', 'Know', 'nothing' };

List<List<String>> groupList = new List<List<String>>{
  group1Names,
  group2Names,
  group3Names
};
System.debug('groupList value is : ' + groupList);

//accessing the item in the list , we use index and it starts from 0 



// what if we want to make it slightly easier to access the group that contains names 



// for example if we provide 1 => (Zhamilia, Marina, madina, Vita)
// for example if we provide 2 => (Ali, Hyder, Dua, Elif)
// for example if we provide 3 => (Jon, nothing)
//  Map<Integer ,  List<String>  >


Account a = new Account(Name='Apex Inc');
insert a;
//Database.insert(a,false);
a.AnnualRevenue=9000000;
update a;

List<Account>accList = new List<Account>();
accList.add(  new Account(Name='Sample Account 1')  );
accList.add(a);
//inser the 'Sample Account 1' and update 'Apex Inc' in Salesforce
upsert accList;

//delete this record
delete accList;

// restore the items that deleted
undelete accList;

/***
Apex Trigger:
Apex Trigger events that caouse the trigger to execute 7 events:
    before insert, after insert,
    before update, after update,
    before delete, after delete,
    after undelete

    Trigger Context Variable:
    variable that provide more information about trigger execution and data
    we use it in this format Trigger.theVariableName

    Trigger.operatiuonType : 
            return the triggering event (BEFORE_INSERT, ADTER_UPDATE....)
    Trigger.size:
            return the size of records entered the Trigger
  variable that check for the specific event type
      Trigger.isBefore
      Trigger.isAfter
      Trigger.isInsert
      Trigger.isUpdate
      Trigger.isDelete
      Trigger.isUndelete

      variable that provide access to the records that enterd the trigger
      Trigger.new
         return List of sObject with latest field values
         available in event : before|after insert, before|after update , after undelete
      Trigger.old
         return List of sobject with old field values
         availaible in event :  before|after update , before |after delete
        
      Trigger.oldMap
         return Map of Id sObvject with old field values
          availaible in event :  before|after update , before|after delete
--------------------------------------------
Since multiple records enter the trigger at the same time , you will always use Trigger loop
for(yourSobjectType each : Trigger.new){

}
or 
for(yourSobjectType each : Trigger.old ){

}

Adding custom error message according to certain conditions
  --yourSobjectVariable.addError('Message goes here');
  --yourSobjectVariable.fileName.addError('This error shoes up right under fields');
  Thsi is the way to prevent record deletion if some condition are true.


trigger must have it's own file 
the name of your trigger must be the same as the file name
if you rename your trigger, you must rename both file to match your trigger name

this is the begiining of your trigger
 trigger TheNameOfYourTrigger on YourSOBJECT( events you listed to goes here){
    YOUR LOGIC GOES HERE

 }
 
THIS IS THE CODE OF YOURS TRIGGER, no code should be written after this line

 */



