//
//  main.swift
//  SwiftDataTypesAndOperators
//
//  Created by Pritam Dash on 12/06/22.
//

import Foundation //similar to java.lang in java
//You will get the basic data types, collection types,etc via this import.

print("Hello, World!")

//Data type - Int, Float, Double, Character, String, Bool
//Variable declaration
//int x = 7; in java

var x : Int = 7
var y : Float   //just declaration no assignment

print(x)
y = 7.5
print(y) //cannot print without assigning a value, it will throw syntax error.

var z : Bool = true
print(z)

var p : Double = 8.9
print(p)

var a : Character = "S"
print(a)

var str : String = "Pritam"
print(str)


//Operator - arithmetic (+,-,/,*) - relational(>,<,>=,<=,!=,==) - logical( &&, ||, !)
//not allowed - (++, --)

//Type Inference -
var first = 8 // Int    (assignment follows scripting language logic, that is if we don't assign a data type then it takes the data type of the value assigned.

var second = 8.9 // Double by default
var third : Float = 9.5 // For float you need to specify FLoat.

var status = true // Boolean
var name = "Pritam" //String by default
var m : Character = "H" // For character you need to specify

// How to take input from user :
//In java we have read() here it is readLine() and returns an optional value of type String.

print("Enter a value")
var v1 = readLine()!
print(v1)
//o/p - Optional("45") for readLine() and 45 for readLine()!

//convert for digit / number
var t = Int(v1)! //Type cast from String -> Int
print(t)
//Calculating square -
print(t*t)


//Calculate the area of a circle

var radius : Float = 0
print("Enter radius :")

var s = readLine()! //Everytime you read as a String variable then convert it
radius = Float(s)!

var area : Float = 3.14 * radius * radius
print("Area of the circle : ",area)



/*
 Output :
 Hello, World!
 7
 7.5
 true
 8.9
 S
 Pritam
 Enter a value
 5
 5
 5
 25
 Enter radius :
 6
 Area of the circle :  113.04
 
 */
