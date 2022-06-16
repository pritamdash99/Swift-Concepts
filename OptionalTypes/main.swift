//
//  main.swift
//  OptionalTypes
//
//  Created by Pritam Dash on 16/06/22.
//

import Foundation

var side : Int = 0
//Here side can be printed as a value is assigned to it.
//If you want to just declare the var and give it the possibility to store null value, you have to specially declare the variable as nullable or optional.
var area : Int? //default value the variable is now nil.(We want to assign the value later on)

//Optional types are the same basic data types with special power to have the value of nil when declared.
print(side) //o/p - 0
print(area) //o/p - nil

side = 4
area = side * side
print(area) //o/p - Optional(16)

//nil also can be assigned to optional values.
area = nil
print(area)

area = 68
print(area)

//print double of area

//optional variables cannot be operated on directly they first need to be unwrapped.
//eg - print(2 * area) is not allowed as first Int? has to be unwrapped to Int

//convert optional type to pure type by using ! at the end of var

var x : Int = area!
print(x)

print(2 * area!) //same as bellow
print(2 * x)

var salary : Float?
print("Enter salary: ")

var str = readLine()!
print(str) // O/p - Optional(value) for readLine()

salary = Float(str)
print(salary) //O/p - Optional(45600.0) upon entering 45600
//O/p - nil upon entering "hello" instead of a number.

//Optionals dont throw an error on a wrong input type, they just store nil

//Find tax on salary of 12%
//var tax : Float = salary! * 12/100
//print(tax)  //O/p - On entering 43200 on salary - tax = 5184.0
//On entering wrong input as "hello" in salary -
// nil gets stored in salary but we are forcefully unwrapping it to caluclate tax. So now exception will be thrown with message : Fatal Error : Unexpectedly found nil while unwrapping an Optional value.

//Hence while using optional type put a check - if(salary != nil) {...} other wise error will occur at run time.

if(salary != nil)
{
    var tax : Float = salary! * 12/100
    print(tax)
}else{
    print("Invalid value of Salary")
}

print("============================")
//Optional and required type

class Person {
    var firstName  : String = String() //required type
    var middleName : String? //optionl type
    var lastName : String = String()
    
    
        
    func printPersonInfo() -> ()    // (-> () and -> Void) same.
    {
        //print(firstName,middleName!,lastName) would throw an error if middlename is not present, so we need to handle it using if else.
        if(middleName != nil)
        {
            print(firstName,middleName!,lastName)
        }else
        {
            print(firstName,lastName)
        }
    }
}

let objPerson = Person()
objPerson.firstName = "Pritam"
objPerson.lastName = "Dash"

objPerson.printPersonInfo()
// O/p : Pritam Dash


