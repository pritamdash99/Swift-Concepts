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
