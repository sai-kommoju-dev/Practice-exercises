CLASS zcl_vehicle DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC .

  PUBLIC SECTION.
*--Abstract methods only have method definition
*--No implementation is required for Abstract methods
*--Abstract class can have both abstract and non-abstract methods
*--Abstract class cannot be instantiated
*--Abstract class can have attributes
*--Abstract methods can be redefined in subclasses
*--Abstract methods do not have a method body
*--Abstract methods must be implemented in subclasses
*--Abstract methods are defined using the ABSTRACT keyword
*--Abstract methods can have parameters
*--Abstract methods can have return values
*--Implementation of abstract methods follow Polymorphism
*--ABAP supports Method overriding and does not support Method overloading
*--Method overriding -- same method signature is same with different method body
*--Here Method signature means method name, number of parameters, type of parameters
    METHODS: type ABSTRACT exporting lv_str type string,
      model ABSTRACT.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vehicle IMPLEMENTATION.
ENDCLASS.
