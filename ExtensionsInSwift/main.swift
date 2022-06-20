//
//  main.swift
//  ExtensionsInSwift
//
//  Created by Pritam Dash on 20/06/22.
//

import Foundation

//Extension is a part of existing class, structure or enum to add new code(variables, functions, initializers) in a seperate declaration. i.e new features can be added to existing class, structure, enum without modifying the actual source code.

class Person {
    var name : String  = ""
    var age : Int = 0
    
    func display() {
        print(name, age)
    }
}

var p1 = Person()
p1.name = "Nishan"
p1.age = 22
p1.display()

extension Person : Processing{
   
    //new variables and initialers are called computed properties.
    func isVoter() -> Bool {
        if( age >= 18)
        {
            return true
        }
        else{
            return false
            
        }
    }
    func process() {
        print("Processing done.")
    }
    
}

print(p1.isVoter())
/*
 Nishan 22
 true
 */

var p2 = Person()
p2.name = "Ankit"
p2.age = 13;
p2.display()
print(p2.isVoter())
/*
 Ankit 13
 false
 */

//If you want you can also inherit a protocol for the extension.

protocol Processing {
    func process()
}
p1.process()
p2.process()
/*
 Processing done.
 Processing done.
 */

//Extensions for the existing data types
//The basic data types all are of type struct. So the concept of pass by value comes to place, hence copies get generated again and again as variables get assigned different variables.
//Some times we need to change the behavior of these data types
var x : Int  = 4567
var m : Float = 41.56
var str : String = "Welcome"

//how do you find the number of digits off an int ?

/*
 earlier global functoion.
 func countDigits(i : Int) -> Int {
     var str = String(i)
     return str.count
 }
 
 */
//print(countDigits(i: x)) // 4

//what we wish to do is access a similar countDigit function but directly from original Int class. So that any int variable can access that function.

extension Int {
    func countDigits() -> Int {
        var str = String(self)
        return str.count
    }
    //This way we can also create needed functions using the original data type structs.
    
}

print(x.countDigits())  // 4
