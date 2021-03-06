//
//  main.swift
//  Structure_Deinit_ARC
//
//  Created by Pritam Dash on 17/06/22.
//
/*
 Notes :
 Structure is same as class in many cases, like class we can declare structures.
 A structure contains variables, method, initializers, stored and computed property, property observer, subscript, etc.
 But there are some difference in class and structure.
 
 1.Classes are pass by reference but structure is pass by value :
    There can many refernces of a class's object. Ex : Employee class has reference : e1,e2,e3.(multiple references to 1 memory space alloted)
    But for structure - every object can have only 1 reference. (1 reference to 1 memory address alloted).
    When we pass a structure in a function then a copy of that structure is passed. When we pass a class's object in a function then it's reference/ memory address is passed. Hence struture is passed as a data(value) but class's object is passed as a reference(memory address)
 2. Structure cannot be inherited to create another structure : Structure doesnot support inheritance.
 3. Structure can only inherit protocols.
 4. Struture donot have de-initializer : De-init is opposite of init(), it destructs the memory / deletes the memory.
 5. Parameterised initializer is generated by default for structure.
 6. Int, Float, Character, String, Array, Dictionary Set, etc. are defined as structures.
    They follow structure's syntax when created and hence are pass by value.
    Hence when we keep int x's value in int y, x's value gets copied to y's.
 
 */
import Foundation

class Employee {
    var empID : Int = 0
    var salary : Float = 0
    init(){
        
    }
    init(empID : Int, salary : Float) {
        self.empID = empID
        self.salary = salary
    }
    deinit // executes just before object is deleted from memory.
    {
        print("Hello I'm going out from memory")
    }
}

//-----------
//Whenever more references of the same object is created the reference count increases by 1

var e1 : Employee? = Employee(empID: 101, salary: 567000) // refernce count = 1
print(e1!.empID, e1!.salary) // o/p : 101 567000.0

var e2 : Employee? = e1 // refernce count = 2
//Here e1(object)'s memory address gets assigned to e2. No copy of e1 is created. Pass by reference.

e2?.salary = 453000
//Thus by changing e2's salary e1's salary will get affected.
print(e2!.salary, e1!.salary) // O/p : 453000.0 453000.0

var e3 : Employee?
e3 = e1     // refernce count = 3

e3 = nil // refernce count = 2
e1 = nil // refernce count = 1
e2 = nil // refernce count = 0

//now object is removed from memory.
print(e1?.salary)   //If you force unwrap it then error will occur.

//When all the references of the same object are deleted, only then the de-init() gets triggered.

/*
 Total o/p :
 101 567000.0
 453000.0 453000.0
 Hello I'm going out from memory
 nil
 */

//If you want to write something just before the object is deleted from the memory. You write it inside deinit{..}

print("========= Structure ======")

struct Student {
    var rollno : Int = 0
    var marks : Float = 0
    var name : String = ""
    
    //Here we get default parameterised init()
    func display() {
        print(rollno, name, marks)
    }
}

//Creating object of Student

var s1 = Student(rollno: 101, marks: 56.7, name: "Pritam")
s1.display()

//pass by value or pass by refernce ?

var s2 : Student? = s1  //Pass by value.
//Here an entire copy of s1 is created and assigned to s2. So now 2 different memory allotment. Thus changing properties of s2 won't affect s1.

s2?.marks = 78.2

s1.display()    // 101 Pritam 56.7
s2?.display()   // 101 Pritam 78.2

// Here in structures no special management needs to be done manually so no need for de-init{..} in structures.
//Every object of structure is an independent object.

struct Person1 {
    var age : Int = 0
}

protocol Person2 {
    var age : Int {get set} //As only get set is mentioned the initialization must happen in the inherited struct.
}

//struct Driver : Person1{...} is not allowed as inheritance in structure is not possible.

struct Driver : Person2{
    var name : String = ""
    var age: Int = 0
}

/* Outputs :
 101 567000.0
 453000.0 453000.0
 Hello I'm going out from memory
 nil
 ========= Structure ======
 101 Pritam 56.7
 101 Pritam 56.7
 101 Pritam 78.2
 
 */

