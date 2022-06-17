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


