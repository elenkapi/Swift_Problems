import UIKit
/* 1.დაწერეთ ფუნქცია, რომელსაც გადაეცემა ტექსტი  და აბრუნებს პალინდრომია თუ არა. (პალინდრომი არის ტექსტი რომელიც ერთნაირად იკითხება ორივე მხრიდან). */

func isPalindrome(text: String) -> Bool {
    if text.count == 0 { return true }
    for index in 0...text.count / 2 {
        let leftChar = text[text.index(text.startIndex, offsetBy: index)]
        let rightChar = text[text.index(text.startIndex, offsetBy: text.count - 1 - index)]
        if leftChar.lowercased() != rightChar.lowercased() {
            return false
        }
    }
    return true
}

print(isPalindrome(text: "Abccba"))

