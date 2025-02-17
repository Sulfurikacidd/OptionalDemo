//Let's learn about different ways to un-wrap optionals

import Foundation


//Force unwrap.
func force_unwrap(value: String?) {
    
    let myOptional: String?
    myOptional = value
    
    print(myOptional!) //here we are "force unwrapping" an optional which is un-safe as if the optional is nil it would crash the program at run-time. Extremely NOT ideal.
}


//Check for the nil value.
func check_nil(value: String?) {
    
    let myOptional: String?
    myOptional = value
    
    if myOptional != nil {
        print(myOptional!) //as you can see this method is also not very safe.
    } else {
        print("myOptional is nil")
    }
    
}


//Optional binding.
func optional_binding(value: String?) {
    
    let myOptional: String?
    myOptional = value
    
    if let _myOptional = myOptional {
        print(_myOptional) //very safe to do so
    } else {
        print("myOptional is nil")
    }
    
}


//Providing a default value.
func default_value(value: String?) {
    
    let myOptional: String?
    myOptional = value
    
    print(myOptional ?? "I am the default value. myOptional is nil")
    
}


//Optional chaining
struct MyOptional {
    
    var property = 123
    
    func do_something() {
        print("Do something !!")
    }
    
}

let myOptional: MyOptional?

myOptional = MyOptional() //myOptional is still an optional type BOX.

myOptional?.do_something() //Optional chaining first checks to see if myOptional has a value or not then call the method if safe to do.
