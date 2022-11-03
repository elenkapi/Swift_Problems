import UIKit

/* 3.მოცემულია მასივი, რომელიც შედგება მთელი რიცხვებისგან. დაწერეთ ფუნქცია რომელსაც გადაეცემა ეს მასივი და აბრუნებს მინიმალურ მთელ რიცხვს, რომელიც 0-ზე მეტია და ამ მასივში არ შედის.*/

func sortArr(arr: [Int]) -> [Int] {
    var result = [Int]()
    
    for elem in arr {
        if elem > 0 {
            let ind = getFillInd(arr: result, n: elem)
            let leftSide = result[0..<ind]
            let rightSide = result[ind..<result.count]
            result = leftSide + [elem] + rightSide
        }
    }
    
    return result
}

func getFillInd(arr: [Int], n: Int) -> Int{
    for index in 0..<arr.count {
        if arr[index] > n {
            return index
        }
    }
    return arr.count
}

func notContains(arr: [Int]) -> Int {
    let sortedArray = sortArr(arr: arr)
    var result = 1
    
    for item in sortedArray {
        if item != result {
            return result
        }
        result += 1
    }
    
    return result
}

print(notContains(arr: [1, 4, 6, 2, 4]))

