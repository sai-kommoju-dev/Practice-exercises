* Class: It is a collection of attributes and methods.It is like a Blue-print of an object.
* Object: Instantiation of the class is called an Object.
* Example: Car is a class. Mercedes Benz is an object.

* Access modifiers: 
* Public: Components(Attributes + Methods) declared under Public section, can be accessed everywhere.
* Protected: Components declared under Protected section, can be accessed within the class, in the subclass and not outside the class.
* Private: Components declared under Private section, can be accessed within the class only. 

Constructors:
Constructor is a special method where it will be used to initiate the attributes with the required values by clearing default values.They will be called implicitly whenever 
class is called and the object is instantiated.
There are two types of constructors.
* Static Constructor
* Instance Constructor.
* Static Constructor: It is called whenever the class is loaded into the memory.
* It will be called once in the entire class execution.
* It will not allow any parameters such as Importing, Exporting, Changing, Returning.
* It will allow global static attributes only.
* It should be defined with the name "class_constructor" in the class.
* Instance Constructor.
* Instance constructor is called implicity everytime when the object is instantiated or created.
* It will permit only importing parameters.
* It should be defined with the name "constructor" in the class.

* Abstract class: If a class contains abstract methods then it will become Abstract.
* Abstract methods only have method definition
* No implementation is required for Abstract methods
* Abstract class can have both abstract and non-abstract methods
* Abstract class cannot be instantiated
* Abstract class can have attributes
* Abstract methods can be redefined in subclasses.
* Abstract methods do not have a method body.
* Abstract methods must be implemented in subclasses.
* Abstract methods are defined using the ABSTRACT keyword.
* Abstract methods can have parameters.
* Abstract methods can have return values.
* Implementation of abstract methods follow Polymorphism.
* ABAP supports Method overriding and does not support Method overloading.
* Method overriding -- same method signature is same with different method body.
* Here, Method signature means method name, number of parameters, type of parameters.





Interfaces:
There is no implementation for Interfaces.
All the Interfaces are by default Public.
Interfaces contain only Abstract methods.
Multiple Inheritance can be achieved by calling multiple interfaces in a single class.
Implementation can be done in Classes.
All the methods in the Interface should be implenented in the class.If some methods are not required to add business logic, they must be implemented with null body.Otherwise,
class itself will become Abstract.




**Narrow Casting or Upcasting:**
Whenever Subclass Instance is assigned to Superclass instance.Then it is called
as Narrow Casting or Upcasting
Here we are going from more specific views(child) to less specific view(parent)
Narrow casting can be performed with the help of simple assignment operator(=)

Wide Casting or Downcasting:
Whenever Superclass Instance is assigned to Subclass instance.Then it is called
as Wide Casting or Downcasting.
Here, we are going from less specific view(parent) to more specific view(child)
Wide casting can be performed with the help of conversion operator(?=)
