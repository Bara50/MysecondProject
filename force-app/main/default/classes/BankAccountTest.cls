@isTest
private class BankAccountTest {
   

    @isTest

    static void testGetBalance(){
  //Arrange
BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);

Decimal expected = 8000000;
//act
Decimal actual= b1.getBalance();

//Assert
    //Assert.areEqual(expected,actual);
 
  System.assertEquals(expected, actual);
   
//call the no param constructor and show details method for test coverage

BankAccount b2 = new BankAccount();
b2.showDetails();


    }

@isTest
static void testDeposit(){
    BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);
    //act 
    b1.deposit(1000);

    //Assert
    //assert the balance is now 8001000
    Decimal expected =8001000;
    Decimal actual = b1.getBalance();

    System.assertEquals(expected, actual);

    

    //Assert.areEqual(expected,actual);
}
  @isTest
  static void testWithdraw(){

    BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);
    //Act
    b1.withdraw(1000000);

    //Assert
    //aae fot the shortcut
    //withdraw 1 milion we should expect balance to be 7 milon
  Assert.areEqual(7000000,b1.Balance);
  

    //Assert.areEqual(expected,actual);
  }

@isTest
static void testSetUpAccount(){
     
//Arrange
BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);
//act
b1.setupAccount('Test', 123456 , 1000);

// Assert
// accountHolder is Test, accountNumber is 123456, balance is 1000

Assert.areEqual('Test', b1.accountHolder);
Assert.areEqual(123456, b1.accountNumber);
Assert.areEqual(1000, b1.balance);

    //Assert.areEqual(expected,actual);
}

@isTest
static void testChangeName(){
    
    BankAccount b1 = new BankAccount('Sean', 123456789, 8000000);
    //act
    b1.changeName('Leke');

    //assert

    Assert.areEqual('Leke', b1.accountHolder);

    //Assert.areEqual(expected,actual);
}

}
