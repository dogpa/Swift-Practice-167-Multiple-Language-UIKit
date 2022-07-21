//
//  ViewController.swift
//  Swift Practice 167 Multiple Language UIKit
//
//  Created by Dogpa's MBAir M1 on 2022/7/19.
//

import UIKit

class ViewController: UIViewController {
    
    //顯示週一至週日
    @IBOutlet weak var randomDayLabel: UILabel!
    
    //顯示1+1 = 2
    @IBOutlet weak var onePlusOneLabel: UILabel!
        
    //顯示問候
    @IBOutlet weak var randomdayBtn: UIButton!
    
    //週一至週日的NSLocalizedString後續對應不同語系使用
    var weekdaysArray = [
        NSLocalizedString("週一", comment: ""),
        NSLocalizedString("週二", comment: ""),
        NSLocalizedString("週三", comment: ""),
        NSLocalizedString("週四", comment: ""),
        NSLocalizedString("週五", comment: ""),
        NSLocalizedString("週六", comment: ""),
        NSLocalizedString("週日", comment: ""),
    ]
    
    //問候的NSLocalizedString後續對應不同語系使用
    var greeting = NSLocalizedString("問候", comment: "")
    
    //1+1的NSLocalizedString後續對應不同語系使用
    var onePlusOne = NSLocalizedString("壹加壹", comment: "")
    
    //1+1的結果與onePlusOne一起使用
    var answer: Int = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func getRandomDayBtn(_ sender: Any) {
        onePlusOneLabel.text = String.localizedStringWithFormat(onePlusOne, answer)
        randomDayLabel.text = weekdaysArray[Int.random(in: 0...6)]
        randomdayBtn.setTitle(greeting, for: .normal)
    }
    
}

