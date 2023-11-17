// System.debug('Drink Coffee'); 
// System.debug('Clean up') ;  

// AsyncUtil.boilWater() ; 

// System.debug('Chop the onion');
// System.debug('Sit back and relax');
// System.debug('Continue to cook'); 

//Turn off your Lead Trigger for now!
//Have some data to work on to similate large data volume situation
//prepare lead data, insert 1000 leads

//List<Lead> myLeads = Utils.getLeads('Jon Snow', 'NightWatch Inc',true, 1000); 
//System.debug('myLeads.size()  value is : ' + myLeads.size() );


//MyBatchClass myBatchObject = new MyBatchClass();
//Id batchId = Database.executeBatch(myBatchObject)

OverdueOppProcessor ovp = new OverdueOppProcessor();
//Database.executeBatch(ovp, 150);  //500/150   150 -100-100
Database.executeBatch(ovp, 100);

