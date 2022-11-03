import UIKit

/* 4.მოცემულია String რომელიც შედგება „(„ და „)“ ელემენტებისგან. დაწერეთ ფუნქცია რომელიც აბრუნებს ფრჩხილები არის თუ არა მათემატიკურად სწორად დასმული.*/

func isProperly(sequance: String) -> Bool {
    var isOpen = 0
    for item in sequance {
        if item == "(" {
            isOpen += 1
        } else if item == ")" {
            if isOpen <= 0 {
                return false
            } else {
                isOpen -= 1
            }
        }
    }
    return isOpen == 0
}

print(isProperly(sequance: "(())()"))

