//
//  main.swift
//  InheritanceInSwift
//
//  Created by Pritam Dash on 19/06/22.
//

import Foundation

/*
 Inheritance : Creating a new class by using code of existing class.
 eg : Bike - Bajaj Pulsar 150 -> Bajaj Pulsar 220
 Types of Inheritance -
 1. Single Inheritance - New class designed based on One existing Class : A -> B
 2. Multilevel : A -> B -> C
 3. Heirarchical : A -> X , A -> Y
 4. Hybrid : Mix any of the above type.
*/

class Person {
    var name :String = ""
    var age : Int = 0
    
    init() {
        print("I am Person default init")
        age = 1
    }
    func display() -> Void {
        print(name, age)
    }
}

let p1 = Person()
p1.name = "Pritam"
p1.age = 33
p1.display()
/*
 O/p :
 I am Person default init
 Pritam 33
*/

//If I wanted an app to store student details

class Student : Person  //Student is inheriting Person
{
    var rollno : Int = 0
    //Now this class has 3 variables post inheritance.
    override init() {
        super.init()
        //When you try to modify the init of the child class then always 1st call the init() of super class then write child class init().
        //You do this to initialise the variables declared in the super class.
        print("I am student init")
        self.age = 5
    }
    func displayData() -> Void {
        print("Student -", rollno, name, age)
    }
}
let s1 = Student()
s1.rollno = 1101
s1.name = "Rohan"
s1.age = 22
s1.display()
/*
 O/p :
 I am Person default init
 I am student init
 Rohan 22
 
 Thus with student object the default constructor of the Person class is also called when an object is formed of Student class because of Inheritance.
 */

s1.displayData()
// O/p : Student - 1101 Rohan 22

// Heriarical Inheritance

class Teacher : Person {
    var subject : String = ""
    override init()     //Super class has default init so have to put override
    {
        super.init()
        age = 18
        print("I am Teacher default init")
    }
    //Superclass doesnot have parameterised init so no need for override
    init(name:String, age : Int, subject : String) {
        super.init()    // default init of superclass
        self.name = name
        self.age = age
        self.subject = subject
        print("I am Teacher paramaterised init")
    }
    
    override func display() {
        print("I'm a Teacher---")
        //print(name, age, subject) - O/p :  Rohan 44 Maths
        //As name and age are being printed in the superclass no need to call a new print for them.
        super.display() //reusing the superclass function.
        print(subject)
    }
    
}
print("---------")
let t1 = Teacher()
t1.name = "Rohan"
t1.subject = "Maths"
t1.age = 44
t1.display()
/*
 O/p :
 I am Person default init
 I am Teacher default init
 I'm a Teacher---
 Rohan 44
 Maths
 */
