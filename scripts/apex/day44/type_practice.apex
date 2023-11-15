// Animal a1 = new Animal();

// if you have a variable 
// you can assign any object of same type (if not abstract)
// or sub type (child class type) to the variable 
Animal a1 = new Dog('Sultan', 4 , 'Poodle'); 

// instanceof keyword can be used for type checking 
// yourVariable instanceof DataType ==> return true if so false if not
System.debug( a1 instanceof Dog ); // true
System.debug( a1 instanceof Cat ); // false

Animal a2 = new Cat('Poncik', 5 , 'Grey');

// Flyable f1 = new Flyable(); 

// Flyable f1 = new Bird(); 
// Flyable f2 = new Plane(); 

// System.debug( f1 instanceof Bird ); // true
// System.debug( f2 instanceof Bird ); // false
// System.debug( f2 instanceof Plane ); // true
