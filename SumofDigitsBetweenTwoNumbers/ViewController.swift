//
//  ViewController.swift
//  SumofDigitsBetweenTwoNumbers
//
//  Created by Daniel Washington Ignacio on 12/06/21.
//

/*
 Create a function that sums the total number of digits between two numbers, inclusive. For example, between the numbers 19 and 22 we have:

 // 19, 20, 21, 22
 (1 + 9) + (2 + 0) + (2 + 1) + (2 + 2) = 19
 Examples

 sumDigits(7, 8) ➞ 15

 sumDigits(17, 20) ➞ 29

 sumDigits(10, 12) ➞ 6
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(self.sumDigits(7, 8))
        print(self.sumDigits(17, 20))
        print(self.sumDigits(10, 12))
    }

    func sumDigits(_ a: Int, _ b: Int) -> Int {
        var digits: [Int] = []
        var sum: Int = 0
        for var n in a...b{
          //  print(n)
            digits.append(n % 10)
                while n >= 10  {
                    n = n / 10
                    digits.append(n % 10)
                }
        }
        for m in digits{
            sum = sum + m
        }
        return sum
    }
}

