import UIKit

/* 5.გვაქვს n სართულიანი კიბე, ერთ მოქმედებაში შეგვიძლია ავიდეთ 1 ან 2 საფეხურით. დაწერეთ ფუნქცია რომელიც დაითვლის n სართულზე ასვლის ვარიანტების რაოდენობას.
*/

func countVariants(stearsCount: Int) -> Int {
    if stearsCount == 1 {
        return 1
    }
    
    if stearsCount == 2 {
        return 2
    }
    
    return countVariants(stearsCount: stearsCount - 1) + countVariants(stearsCount: stearsCount - 2)
}

countVariants(stearsCount: 8)


