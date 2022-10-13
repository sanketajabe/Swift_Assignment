// Sum of array elements
var array : [Int] = [10, 20, 33, 25]
var sum = 0
for i in array{
    sum += i
}
print("sum of array elements = \(sum)")


// EvenOdd numbers in an array
var arrayEvenOdd : [Int] = [27, 46, 33, 25, 200, 556]
for eachNumber in arrayEvenOdd{
    if(eachNumber % 2 == 0){
        print("Number \(eachNumber) is even")
    }
    else{
        print("Number \(eachNumber) is odd")
    }
}

// Find Minimum Number in an array
var arrayNumber : [Int] = [22, 16, 33, 55, 09, 556]
var minimum = arrayNumber[0]
for eachNumber in stride(from: 0, to: arrayNumber.count, by: 1){
    if (arrayNumber[eachNumber] < minimum){
        minimum = arrayNumber[eachNumber]
    }
}
print("minimum number = \(minimum)")



// Sorting array elements by Ascending Order
var arrayNumber1 : [Int] = [22, 16, 33, 55, 09, 556]
var temp : Int
for i in stride(from: 0, to: arrayNumber1.count, by: 1){
    for j in stride(from: i, to: arrayNumber1.count, by: 1){
        if(arrayNumber1[i] > arrayNumber1[j]){
            temp = arrayNumber1[i]
            arrayNumber1[i] = arrayNumber1[j]
            arrayNumber1[j] = temp
        }
    }
}
print(arrayNumber1)


// Sorting array elements by Descending order
var arrayNumber2 : [Int] = [22, 16, 33, 55, 09, 556]
var temp1 : Int
for i in stride(from: 0, to: arrayNumber2.count, by: 1){
    for j in stride(from: i, to: arrayNumber2.count, by: 1){
        if(arrayNumber2[i] < arrayNumber2[j]){
            temp1 = arrayNumber2[i]
            arrayNumber2[i] = arrayNumber2[j]
            arrayNumber2[j] = temp1
        }
    }
}
print(arrayNumber2)


// switch case program to perform mathematical operation
var choice2 = "*"
var numberOne : Int = 47
var numberTwo : Int = 12
switch choice2{
case "+":
    var addition = numberOne + numberTwo
    print(addition)
break
    
case "-":
    var subtraction = numberOne - numberTwo
    print(subtraction)
break
    
case "*":
    var multiplication = numberOne * numberTwo
    print(multiplication)
break
    
case "/":
    var division = numberOne / numberTwo
    print(division)
break
    
default:
    print("wrong choice")
break
}

// addtion using function
func addition(number num1 : Double, number num2 : Double){
    print("addition = \(num1 + num2)")
}
addition(number : 12.33, number : 33.44)


// subtraction
func subtraction(number num1 : Int, number num2 : Int){
    print("subtraction = \(num1 - num2)")
}
subtraction(number : 120, number : 33)


// multiplication
func multiplication(number num1 : Float, number num2 : Float){
    print("multiplication = \(num1 * num2)")
}
multiplication(number : 12.33, number : 13.44)


// division
func division(number num1 : Float, number num2 : Float){
    print("division = \(num1 / num2)")
}
division(number : 1444, number : 33.77)


// print reverse string
var stringName = "Bitcode"
var revStr = " "
for i in stringName{
    revStr = "\(i)" + revStr
}
print(revStr)

