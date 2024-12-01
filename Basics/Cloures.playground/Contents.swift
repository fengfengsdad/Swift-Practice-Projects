import UIKit

//1.1
struct Address {
    var city: String
}

struct User {
    var address: Address?
}

let user = User(address: Address(city: "New York"))
// 使用 Optional Chaining 获取 city

print(user.address?.city ?? "0")

//1.2

let numbers = [1, 2, 3, 4, 5]
// 实现一个函数，该函数接受一个闭包作为参数，返回数组中所有元素的平方

let add: (Int, Int) -> Int = {(a,b) in a + b}

print(add(2,4))

func operateNums(nums: [Int] , operation: (Int) -> Int){
    print(nums.map(operation))
}

let square:(Int) -> Int = {
    a in a*a
}

operateNums(nums: numbers, operation: square)

//filter out even numbers
print(numbers.filter({$0 % 2 == 1 }))

//Sort array deceding
print(numbers.sorted(by: {$0 > $1}))




