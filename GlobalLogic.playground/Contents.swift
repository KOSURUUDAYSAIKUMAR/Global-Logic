import UIKit

func solve<T: Hashable & Comparable>(_ array1: [T], _ array2: [T]) -> [T] {
    let set1 = Set(array1)
    let set2 = Set(array2)
    
    var result = [T]()
    
    for element in set2 {
        let count1 = array1.filter { $0 == element }.count
        let count2 = array2.filter { $0 == element }.count
        
        if count1 != count2 || !set1.contains(element) {
            result.append(element)
        }
    }
    
    return result.sorted()
}

let array1 = [8, 8, 7, 2, 1, 7, 9]
let array2 = [14, 8, 2, 7, 7]
let one = solve(array1, array2)
print(one) // Answer: [8, 14]



let array11 = [9, 4, 7, 9, 3]
let array22 = [9, 11, 9, 13, 9]
let two = solve(array11, array22)
print(two) // Answer: [9, 11, 13]


let array111 = ["goat", "fish", "deer", "goat", "bear"]
let array222 = ["ant", "bear", "goat"]
let three = solve(array111, array222)
print(three) // Answer: ["ant", "goat"]

