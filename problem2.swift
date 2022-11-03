import UIKit
/* 2.გვაქვს 1,5,10,20 და 50 თეთრიანი მონეტები. დაწერეთ ფუნქცია, რომელსაც გადაეცემა თანხა (თეთრებში) და აბრუნებს მონეტების მინიმალურ რაოდენობას, რომლითაც შეგვიძლია ეს თანხა დავახურდაოთ.
*/

func minSplit(amount: Int) -> Int{
    let coinsArray = [50, 20, 10, 5, 1]
    var coinCount = 0
    var currentAmount = amount
    
    while currentAmount != 0 {
        let coin = getCoin(amount: currentAmount, coinsArray: coinsArray)
        currentAmount -= coin
        coinCount += 1
    }
    
    return coinCount
}

func getCoin(amount: Int, coinsArray: [Int]) -> Int {
    for element in coinsArray {
        if amount >= element { return element }
    }
    return 0
}

print(minSplit(amount: 155))
