//
//  main.swift
//  OOPinSwift
//
//  Created by Pritam Dash on 16/06/22.
//

import Foundation

//CLASS AND OBJECT
//Object - Real World Entity - ex. Car, Book, Student
//Object can consist -
//1. Properties(Information attribute about the object) - ex -(for car ) - model, regdno, speed limit, price,seat capacity, etc.
//2. Behavior(Actions performed on or by the object) Ex - Driving, refuel, lock-unlock, etc
//In any programming language properties are represented using variables and behavior using function/methods.
//These whole information about an object can be stored in a class.
//Class - blue print, model, prototype, defination of the object (description of properties and behavior of object is known as class)
class Employee
{
    //properties
    var name : String = ""
    var id  : Int = 0
    var salary : Float = 0
    
    init()  //Constructor in Java, Initialiser in Swift
    {
        id = 1
        salary = 1000
        print("I'm default initialiser or constructor")
    }
    
    //behaviour
    func display() -> Void {
        print(id," - ",name," - ",salary)
    }
    func taxOnSalary(rate : Float) -> Void {
        var tax = salary * rate / 100
        print("Total tax : ", tax)
    }
}

//Create Object :
var emp1 : Employee = Employee()    //Syntax is for calling default init or constructor.
//emp1 = refernce, to allocate the memory we put = Employee()
//Employee() creates memory for 3 variables
emp1.display() //O/p - 0  -    -  0.0 without init(){...}
/*
 O/p - with init(){..}
 I'm default initialiser or constructor
 1  -    -  1000.0
 */

//If you want to change the default values :
emp1.name = "Pritam"
emp1.id = 1001
emp1.salary = 34500
emp1.display() //   O/p : 1001  -  Pritam  -  34500.0

var emp2 : Employee = Employee()
emp2.display()  //Shows the default data as in initialiser

emp2.id = 1002
emp2.name = "Hero"
emp2.salary = 56000
emp2.display()

var emp3 = Employee()
emp3.id = 1003
emp3.name = "Priya"
emp3.salary = 25900
emp3.display()

var emp4 = emp3 // no copy of emp3 will be created, but emp4 will also act as a refernce to the data stored in the location of emp3 variables.
emp4.salary = 27500
emp3.display() //O/p - 1003  -  Priya  -  27500.0
//This way 1 object can have multiple references.

//All these objects can be stored in an array :

//Create an array of employees :
var empArayy : [Employee]  = [emp1,emp2]
empArayy.append(emp3)

var emp5 = Employee()
emp5.name = "Amit"
emp5.id = 1007
emp5.salary = 56780

empArayy.append(emp5)

print(empArayy)
//O/p : [OOPinSwift.Employee, OOPinSwift.Employee, OOPinSwift.Employee,OOPinSwift.Employee]

empArayy[0].display()
empArayy[3].taxOnSalary(rate: 4.5)

//Loop on Array :
for emp in empArayy {
    emp.display()
    print("Tax on salary of", emp.name, "is : ",emp.taxOnSalary(rate: 2))
}
