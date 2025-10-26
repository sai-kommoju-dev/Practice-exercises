Abstract class: If a class contains abstract methods then it will become Abstract.
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
