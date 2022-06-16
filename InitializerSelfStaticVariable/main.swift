//
//  main.swift
//  InitializerSelfStaticVariable
//
//  Created by Pritam Dash on 16/06/22.
//

import Foundation

//Initializer is like a constructor or a function which execute when we create object of the class. Use init keyword

class BankAccount {
    //object variables / class data members
    var accNo : Int = 0
    var name : String = ""
    var balance : Float = 0
    
    //class variable/ static variable
    static var branchName : String = "OLD Palasiya"
    //can only be accessed by CLassname.var
    
    init()  //code inside this block will get executed when an obj of this class will be formed.
    {
        print("Default Initializer...")
        balance = 1000
    }
    
    init(a:Int, b:Float, n:String)  //parameterised initializer
    //Here a, b , n are all of "let" type not "var", they are immutable.
    //Here a, b, n are all local variables.
    {
        print("I'm parameterized initializer")
        accNo = a
        name = n
        balance = b
    }
    
    func display() -> Void {
        print(accNo, " - ",name," - ",balance, " - ",BankAccount.branchName)
    }
    
    func transferMoney(from:BankAccount, to:BankAccount, amount:Float) -> Void {
        from.balance = from.balance - amount
        to.balance = to.balance + amount
    }
    
    func transferMoney(to:BankAccount, amount:Float) -> Void {
        self.balance = self.balance - amount
        to.balance = to.balance + amount
    }
    static func whichBranch() -> Void {
        print(branchName)
        //Everywhere else it is called by BankAccount.branchName, but here it can be called  directly via variableName
    }
}

var b1 = BankAccount()
//O/p : Default Initializer...

b1.display() //O/p : 0  -    -  1000.0
//In default initializer balance has been updated.

var b2 = BankAccount(a: 1001, b: 45000, n: "Pritam")
//O/p :I'm parameterized initializer
b2.display() //O/p : 1001  -  Pritam  -  45000.0


//Self Keyword is used to help to determine all the object variables.
//Self is a reference of the current object
//In java - this keyword,   In swift - self keyword.
//self.balance = balance indicates that the (self i.e object balance) has now stored the value of (local variable balance)
//balance = balance wouldnot be allowed because the compiler won't understand which balance is what and the local balance is immutable. So throws the error.

var b3 = BankAccount(a: 1002, b: 3400000, n: "Priya")
b1.transferMoney(from: b3, to: b2, amount: 20000)

print("----------")

b3.display()
b2.display()

print("Post Transfer ---")
b3.transferMoney(from: b3, to: b2, amount: 20000)
b3.display()
b2.display()
/*
 O/p :
 1002  -  Priya  -  3380000.0
 1001  -  Pritam  -  65000.0
 Post Transfer ---
 1002  -  Priya  -  3360000.0
 1001  -  Pritam  -  85000.0
 */
//Right now you can call the transforMoney evenn from b1 and trasfermoney from b3 to b2. That is not correct logic, there is another beter way.

print("----Another way -----")
b3.display()
b2.display()
print("After transfer---")
b3.transferMoney(to: b2, amount: 5000)
b3.display()
b2.display()
/*
 O/p :
 ----Another way -----
 1002  -  Priya  -  3360000.0
 1001  -  Pritam  -  85000.0
 After transfer---
 1002  -  Priya  -  3355000.0
 1001  -  Pritam  -  90000.0
 */

//Static Variables : Also known as class variables are the variables shared bwteen all objects of the chosen class or data at the class level. You create 1000s of objects that variable's data will remaain the same.
//Static variables get allocated in memory only once.

BankAccount.branchName = "VijayNagar"
print("----------")
b3.display()
b2.display()
/*
 O/p :
 1002  -  Priya  -  3355000.0  -  VijayNagar
 1001  -  Pritam  -  90000.0  -  VijayNagar
 */

//Static method - The methods / functions which donot use object variable or data of the current object can be made static. These methods are accesible only through class name

BankAccount.whichBranch()
//O/p : VijayNagar

