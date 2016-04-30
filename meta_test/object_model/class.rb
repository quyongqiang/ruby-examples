nil -> BasicObject -> Object -> Module -> Class -> obj  ?
Class, Module, Object, BasicObject be called by a joint name Class. 这些都统称为类。  ?
- 什么是对象？
一组实例变量外加一个指向其类的引用。对象的方法并不存在于对象本身，而是存在于对象的类中。
在类中，这些方法被称为类的实例方法。

- 什么是类？
类无非就是一个对象（Class类的一个实例）外加一组实例方法和一个对其超类的引用。
Class类是Module类的子类，因此类也是一个模块。

 
class 都可调用


superclass 对象不可调用，类可以调用


rb(main):001:0> String
=> String
irb(main):002:0> String.class
=> Class
irb(main):005:0> Class.class
=> Class
irb(main):016:0> BasicObject.class
=> Class



irb(main):007:0> Class.superclass
=> Module
irb(main):008:0> Class.superclass.superclass
=> Object
irb(main):009:0> Class.superclass.superclass.superclass
=> BasicObject
irb(main):010:0> Class.superclass.superclass.superclass.superclass
=> nil
irb(main):011:0> Class.superclass.superclass.superclass.superclass.superclass



irb(main):013:0> String.superclass
=> Object

irb(main):034:0> Math.class
=> Module
