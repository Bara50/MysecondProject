Inheritance
Inheritance is a concept in object-oriented programming where a new class is created from an existing class, inheriting its properties and behaviors. The new class is called the subclass or derived class, while the existing class is called the superclass or base class.

Inheritance allows for the reuse of code and promotes the principle of don't repeat yourself (DRY). Subclasses can inherit and extend the properties and behaviors of the superclass, making it easier to create new classes with similar functionality.

For example, if we have a class called Animal with properties such as name, age, and weight, we could create a subclass called Dog that inherits these properties from the Animal class and adds its own properties and behaviors such as breed and bark.

We use extends keyword to build inheritance relationship. 
Parent class must be marked as virtual or abstract 

Assuming that's the case, here is how the syntax look like
   public class Child extends Parent{

   }


virtual keyword :
When used on class: 
It will allow this class to be Super|Parent class
```java
public virtual class Animal{
    public String name; 
    public Integer age;}
- 
java
  public class Dog extends Animal{
      public String breed; }```

When used on method: 
allow this method to be overriden in the child class methods
for example if animal class have a method called makeNoise
```java
public virtual void makeNoise(){// animal general noise}```
override keyword is used in child class method
Now in the child class Dog we can override this method by including override keyword in the method header
public override void makeNoise(){
 // dog is making barking noise
}
/**
 * abstract literally means : existing in thought or as an idea but 
 * not having a physical or concreate existence.
 * In OOP we can use abstract on class and methods
 * When we used on the class:
 * - the class can not be instantiated
 * '''YourClass y1 = new YourClass();'''will not compile 
 * It meant to be super class and extended by the Child classes
 * It can have abstract methods with no body
 * Abstract class can have non-abstract method as well
 *    java
 /*
    public abstract class Car{

        public abstract  void drive();

    }
  
 when used on the method 
 --ONLY ABSTRACT CLASS CAN HAVE ABSTRACT METHOD
 --the method became abstract method 
 -- the method can not have body{ }
 iy ends with semi colon ':'
 it must be overriden in child class

 java
public class GasCar{

    public override void drive();
    // this is how gaz car drive!!!
}



Constructors are not inherited
however you can call constructor of super class in the child class using super( parameters goes here)
you may call other constructors of same class using this(parameters goes here)
YOU CAN NOT MIX AND MATCH super(..) and this(..)!

```java
  public virtual class Animal{
      public String name; 
      public Integer age;

        public Animal(){
            //this.name = 'Unknown Animal';
            //this.age = 0 ;
            // calling 2 param constructor of this class
            this('Unknown Animal',0);
        }

        public Animal(String name, Integer age){
            this.name = name ; 
            this.age  = age  ; 
        }


    }
 
- 
java
    public class Dog extends Animal{
        public String breed;

        public Dog(String name,Integer age, String breed){
            super(name, age); 
            this.breed = breed ; 
        }




/**
 * Abstract keyword used on the class with mark the calss a s abstract class 
 * It can not be instantieated meaning you can not directly create Car object
 * using keyword
 * Abstract Class meant to be Parent class that extended by Child classes 
 * Abstract Class can not contain abstract method
 * Abstract method can not contain abstract method
 * acstract method does not have a body ( meaning {}at all)
 * abstract method must be overridden in the child or it will not compile
 
 */
    
 ``` . Interface
 Just like abstract class , interface is an abstract type.
 -it can only contains public abstract method with no BrandingSetProperty
 - we do not need to use 'public abstract'it's by default 
 '''java'
 public interfaxe Drawable{

    void draw();
 }
 Class will 'implements' interface and provide implementation detail of 
 abstract methods (or it will not compile)
 --A class can onlyextends another CallbackStatus
--An class acan implements multiple interfaces
''''java
public class Rectangle implements Drawble{


    public void draw(){
        //this is the details of how you draw rectangle
    }
}