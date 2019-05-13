//
//  GameScoreController.swift
//  funny APP
//
//  Created by User20 on 2019/5/12.
//  Copyright © 2019 ouo. All rights reserved.
//

import UIKit

class GameScoreController: ViewController {

    @IBOutlet weak var score: UILabel!
    var scoreText : String?
    
    @IBOutlet weak var fightingText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let highest = UserDefaults.standard.integer(forKey: "highest")
        if let lastScore = scoreText, let finalScore = Int(lastScore)
        {
            score.text = String(lastScore)
            print(highest)
            if finalScore > highest{
                UserDefaults.standard.set(finalScore, forKey: "highest")
                fightingText.text = "恭喜你刷新了最高分數！"
            }
            else{
                fightingText.text = "還有進步空間！請加油！"
            }
        }
        
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func retry(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "second") {
            present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func home(_ sender: UIButton) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "first") {
            present(controller, animated: true, completion: nil)
        }
    }
    
}
