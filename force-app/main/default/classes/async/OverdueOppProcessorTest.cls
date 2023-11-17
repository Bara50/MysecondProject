@isTest
private class OverdueOppProcessorTest {
    
    @TestSetup
    static void createTestData(){
       Utils.getManyOpps('Test', 100, true)  ;

    }
@isTest
static void testBatchClosedOpportunities(){

    //YOU CAN NOT HAVE THAN 1 BATCH IN THR TEST
    //SO MAKE SURE YOUR TOTAL TEST RECORDS FALL INTRO SINGLE BATCH
    //ACT
    Test.startTest();
OverdueOppProcessor ovp = new OverdueOppProcessor();
Database.executeBatch(ovp,100);

  //the moment this line finish executing,
    //asyns codes will be forced to run right away
    Test.stopTest() ;

    // Assert.areEqual(expected,actual);
   // All 100 records should have closed lost status
// [SELECT COUNT(Id) From Opportunity WHERE StageName ='Closed Lost'
List<Opportunity> opps = [SELECT Id From Opportunity WHERE StageName ='Closed Lost'];
Assert.areEqual(100, opps.size());

}

}