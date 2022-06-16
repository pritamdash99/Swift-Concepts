//
//  main.swift
//  DictionaryDemo
//
//  Created by Pritam Dash on 16/06/22.
//

import Foundation

//HashMap in java , similar opertion in Dictionary in Swift
//Dictionary is a dynamic collection of KeyValuePair of any type.

//Empty Dictionary :
var result : [Int : Float] = [:]
print(result)
//Initilazed dictionary
//store pincode and city in dictionary

var cities : [Int : String] = [452001 : "GPO Indoor", 452010 :"Vijaynagar Indoor", 457555: "Bhopal", 452016 : "Khajrana"]

print(cities)

//add new pair in existing dictionary
result[101] = 78.9  //dictionaryName[key] = value
result[109] = 45.3
result[104] = 89

print(result)

//assigning a new value to the same key won't create a new pair, new value will just replace the old value to maintian uniqueness of keys

result[109] = 23
print(result)

//Fetch value using key
var x = result[101]
print(x)    //O/p - Optional(78.9).
//The value fetched by a key is always optional because in case you try to fetch a key that doesnot exist, instead of throwing an error it will just fetch nil
var y = result[109]!        //Here unwraping is done for nonoptional output
print(y) //O/p - 23.0

//Remove from Dictionary
//dictionary.removeValue(forkey) also returns an optional value.
var z = result.removeValue(forKey: 104)
print("z : ",z)     //O/p = z :  Optional(89.0)

print("remaining dictionary : ",result)

//There is no proper order in dictionary as there is no indexing in dictionary as there is no indexing in hashmap(java)

//Iterating in dictionary:
//for each / for in loop
//Get all city names from cities dictionary
for pair in cities
{
    print(pair) //directly printing all the elements in the dictionary
}

//Separately printing key and values
for p in cities{
    print(p.key , p.value)
}

print(cities.count) //total number of pairs in dictionary  :  .count
print(result.count)

