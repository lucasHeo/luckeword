//
//  ViewController.swift
//  luckeword
//
//  Created by heo on 2021/03/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    let score: Int = 0
    
    @IBOutlet weak var keywordLabel: UILabel!
    let keyword: String = ""
    
    @IBOutlet weak var colorView: UIView! {
        didSet {
            colorView.layer.cornerRadius = 18
        }
    }
    let colorName: UIColor = UIColor.white
    
    @IBOutlet weak var menuLabel: UILabel!
    let menu: String = ""
    
    @IBOutlet weak var scoreDateLabel: UILabel!
    @IBOutlet weak var keywordDateLabel: UILabel!
    @IBOutlet weak var colorDateLabel: UILabel!
    @IBOutlet weak var menuDateLabel: UILabel!
    
    @IBOutlet weak var versionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "100"
        keywordLabel.text = "행복"
        colorView.layer.backgroundColor = UIColor.green.cgColor
        menuLabel.text = "맛있는 요리"
    }


}

