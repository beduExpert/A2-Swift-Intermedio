
//*----------------------| SWIFT FUNCTIONS |----------------------*//

//-----------> BASICS <-----------//
//Swift copies the value before passing it oto the function, a behavior known as pass-by-value
// Ideally a function doesn't alter its parameters.
func printHola() {
    print("hola")
}


func printHola(v:String){
    print(v)
}

func printHola(_ v:String){
    print(v)
}
printHola("hola")

func printHola(v:String, i:Int){
    print("\(v) \(i)")
}

func printTwoThings(name:String, and lastName:String){
    print("\(name) \(lastName)")
}
printTwoThings(name: "Bedu", and: "Education")

func multiply(number:Int, by number2:Int)->Int{
    return number * number2
}
multiply(number: 3, by: 5)

func process(input:Int, by input2:Int, and input3:Int) -> (Int,Int) {
    return (3,4)
}
process(input: 5, by: 19, and: 22)

func multiplyAndDivide(_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
    return (number * factor, number / factor)
}

let p = process(input:1, by: 4, and: 3)
var p0 = p.0
var p1 = p.1

let results = multiplyAndDivide(4, by: 2)
let product = results.product
let quotient = results.quotient

printHola()
printHola(v: "hola que hace")
printHola("hola que hace")
printHola(v: "hola", i: 6)
printTwoThings(name: "Bedu", and: "Education")
multiply(number: 8, by: 5)


//-----------> INOUT <-----------//

/*The inout keyword before the parameter type indicates that this parameter should be copied in,
 that local copy used within the function, and then copied back out when the function returns.*/
func increment(value:inout Int){
    value += 1
    print(value)
}

var val = 5 // como si fuera por referencia
increment(value: &val)
print(val)

//-----------> VARIADIC PARAMETERS <-----------//
/*
 A variadic parameter is used to pass an unknown number of parameters to a function.
 You use 3 dots ... after the type to mark it as variadic.
 This parameter is considered to be an array.
 */

func sum(numbers:Int...)->Int{
    var total = 0
    for n in numbers{
        total += n
    }
    return total
}
print(sum(numbers: 1,2,3,4,5,6,7,8,9,10))


