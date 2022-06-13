//
//  main.swift
//  SwiftControlFlow
//
//  Created by Pritam Dash on 13/06/22.
//
import Foundation
//If syntax
//check if a person can vote or not

print("Enter age : ")
var age : Int = 0

age = Int(readLine()!)!

if (age >= 18){
    print("You can vote")
}
else{
    print("You cannot vote")
}

//while loop
//Print 1 to n using while loop

print("Enter n : ")
var n : Int = 0

n = Int(readLine()!)!

var i = 0;
while (i<n)
{
    i = i+1
    print(i)
}

//for loop
//Find sum of First N values i.e 1 + 2 + 3 +.. N

//Java syntax - for(i = 0< i< n, i++)
var sum = 0
for i in 0...n      //in 0...n the increment is by default by 1
{
    print("Value in for loop is ",i)
    sum = sum + i
}

print("Total sum : ",sum)

//increment by 2 or more in for loop :
var sum2 = 0;
for i in stride(from: 1, to: n, by: 3)  //increment by 3
{
    print("Using steps of 3:",i)
    sum2 = sum2 + i
}
print("Total sum by new method for loop is : ",sum2)

//reverse for loop

for i in (1...n).reversed()
{
    print("Reversed: ", i)
}


//Switch

print("Enter Day No. 1 for Monday, 2 for Tuesday and so on...")
var day = Int(readLine()!)!

switch day      //break is automatic in swift, no need to mention specialy after a case.
// day here is Int, you can take String, Enum, Character, etc.
{
case 1 :
    print("Monday")
    print("Office Day")
case 2 :
    print("Tuesday")
    print("Office Day")
case 3 :
    print("Wednesday")
    print("Office Day")
case 4 :
    print("Thursday")
    print("Office Day")
case 5 :
    print("Friday")
    print("Office Day")
case 6 :
    print("Saturday")
    fallthrough // Is implemented if you want to execute the next case after this case(breakless) automatically.    eg : if you enter 6, 7 will also will get executed.
case 7 :
    print("Sunday")
    print("Weekend")
default :   //default is compulsory
    print("No match found")
}

/*
 Output :
 Enter age :
 5
 You cannot vote
 Enter n :
 6
 1
 2
 3
 4
 5
 6
 Value in for loop is  0
 Value in for loop is  1
 Value in for loop is  2
 Value in for loop is  3
 Value in for loop is  4
 Value in for loop is  5
 Value in for loop is  6
 Total sum :  21
 Using steps of 3: 1
 Using steps of 3: 4
 Total sum by new method for loop is :  5
 Reversed:  6
 Reversed:  5
 Reversed:  4
 Reversed:  3
 Reversed:  2
 Reversed:  1
 Enter Day No. 1 for Monday, 2 for Tuesday and so on...
 4
 Thursday
 Office Day
 */
