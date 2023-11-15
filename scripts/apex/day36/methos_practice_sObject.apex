// Contact c1 = Utils.getContact('Snow') ; 
// System.debug('c1 value is : ' + c1);
// // insert c1 ; 


// System.debug('Utils.getContact(\'ABC\') value is : '
//                         + Utils.getContact('ABC'));


// List<Contact> myContacts =  Utils.getContacts('Snow',10) ; 
// // size of myContacts should be 10
// // System.debug('myContacts value is : ' + myContacts);

// // Account newAcc =  Utils.insertNewAccount('ABC'); 
// // System.debug('newAcc value is : ' + newAcc);


// EmailManager.sendMail('youremail@force.com', 'Email from Apex', 'Body from Apex'); 

`
// Account myAcc =  Utils.getAccountAndContacts('Acc with Contact', 4) ; 
// System.debug('myAcc value is : ' + myAcc);

// // get all the child contacts that belong to above Account here 
// List<Contact> childContacts = [SELECT LastName from Contact 
//                                 WHERE AccountId =  :myAcc.Id  ]; 

// System.debug('childContacts value is : ' + childContacts);


// 
Account acc = [SELECT Name , Id,(SELECT LasrName from Contacts)
              FROM Account
              WHERE Name = 'Acc with Contact'
              LIMIT 1];

 //  Print account name
 System .debug('acc.Name value is' + acc.Name) ;
 //how do we access subquery part of to child query
 system.debug('acc.Contact value is:' + acc.Contact) ;

 List<Contact> accChildContact = acc.Contacts;  
 // print the contact lastNmae
 for(Contact each : accChildContact) {
    System.debug('Current value : ' + each.LastName);
 }
        //Apexsandbox.io