import UIKit

var str = "Hello, playground"

//1번
var elements = [1,3,6,10,13,19,20,22]
for element in elements{
    if element % 2 == 0{
        print(element)
    }
}

//
//1번 답:
let answer1 = elements.filter{$0 % 2 == 0}.reduce("",{$0 + "\($1)\n"})
print(answer1)


var numbers = Array<Int>(1...9)

//2번
for number in numbers{
    print("\(number) 곱하기 3은 \(number*3)")
}

//2번 답:
let printString = numbers.reduce("",{$0 + "\($1) 곱하기 3은 \($1 * 3)\n"})
print(printString)


//3번
for number_1 in numbers {
    for number_2 in numbers {
        print("\(number_1) 곱하기 \(number_2)은 \(number_1*number_2)")
    }
}

//3번 답: /..

//4번

for number_1 in numbers {
    for number_2 in numbers {
        if number_1 * number_2 % 3 == 0{
            print("\(number_1)단에서 3의 배수는 \(number_1 * number_2)")
        }
    }
}
let printString2 = numbers.reduce("",{$0 + "\($1) 곱하기 \($1)은 \($1 * $1)\n"})
print(printString2)


//4번 답: \.
//5번
var sum = 0
var number_3 = [2,6,5,4,3,2,9,7,9,4]
for number in number_3{
    if number < 5 {
        sum += number
    }
}
print(sum)


//5번 답:


let answer5 = number_3.filter{$0 < 5}
let sum = answer5.reduce(0, +)
print(sum)
