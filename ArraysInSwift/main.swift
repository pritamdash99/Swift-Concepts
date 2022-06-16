//
//  main.swift
//  ArraysInSwift
//
//  Created by Pritam Dash on 16/06/22.
//

import Foundation

//Array in swift are similar to arraylist in Java.
//dynamic collection of ordered values.

//empty array:
var array1 : [Int] = []

//array with initial data
var array2 : [Float] = [23.5,31.6,78.9]
print(array2)

//add new data in existing array
array1.append(23)
array1.append(12)
array1.append(87)

print(array1)

//fetching position of element
print(array1[1])

//adding element at last position
array2.append(14.5)
array2.append(100)
print(array2)

//replacing/updating an element at particular position.

array2[2] = 19.4
print(array2)

//inserting an element at a particular position
array2.insert(26, at: 3)
print(array2)

//getting the size of the array

print(array2.count)

//remove element at a particular position
array2.remove(at: 1)
print(array2)

//for loop on array
for i in 0...(array2.count - 1)
{
    print("data : ", array2[i])
}

//maximum of array2
var max : Float = 0
for i in 0...array2.count-1
{
    if(max < array2[i])
    {
        max = array2[i]
    }
}
print("Max value : ",max)

//for each - java = for in - swift

for x in array2
{
    print(x , "square" , x*x)
}

var x : Int = 0

var arr3 : [Int] = []

for x in 0...10 {
    arr3.append(x)
}
print(arr3)

