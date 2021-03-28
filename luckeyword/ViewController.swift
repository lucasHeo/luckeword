//
//  ViewController.swift
//  luckeword
//
//  Created by heo on 2021/03/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int = 0
    
    @IBOutlet weak var keywordLabel: UILabel!
    var keyword: String = ""
    
    @IBOutlet weak var colorView: UIView! {
        didSet {
            colorView.layer.cornerRadius = 18
        }
    }
    var colorName: UIColor = UIColor.white
    
    @IBOutlet weak var menuLabel: UILabel!
    var menu: String = ""
    
    @IBOutlet weak var scoreDateLabel: UILabel!
    @IBOutlet weak var keywordDateLabel: UILabel!
    @IBOutlet weak var colorDateLabel: UILabel!
    @IBOutlet weak var menuDateLabel: UILabel!
    
    @IBOutlet weak var versionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeScoreLabel()
        keywordLabel.text = "행복"
        colorView.layer.backgroundColor = UIColor.green.cgColor
        menuLabel.text = "맛있는 요리"
    }
    
    /// change Score Label
    func changeScoreLabel() {
        score = Int.random(in: 2...10) * 10
        scoreLabel.text = String(score)
    }
    
    /// change Keyword Label
    func changeKeywordLabel() {
        let keywordArray = ["때로는 한순간의 결정이 인생을 바꾼다.",
                           "최선을 다한 사람은 결코 후회하지 않는다.",
                           "이미 가진 것에 감사할 줄 알아야 행복이 온다."]
        print(keywordArray.count)
        let randNum = Int.random(in: 0..<keywordArray.count)
        keywordLabel.text = keywordArray[randNum]
    }

    @IBAction func pressReloadButton(_ sender: Any) {
        changeScoreLabel()
        changeKeywordLabel()
    }
}

