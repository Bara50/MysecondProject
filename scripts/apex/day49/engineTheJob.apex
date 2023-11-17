List<Account> myList= [SELECT id , Name , Description 
                       FROM Account 
                       WHERE Name LIKE 'COOL%'];

System.debug('Running Apex - anon Code'); 
                       
AccountUpdateAsync q = new AccountUpdateAsync('From queueble job', myList);
System.enqueueJob(q);
