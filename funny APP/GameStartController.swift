//
//  GameStartController.swift
//  funny APP
//
//  Created by User20 on 2019/5/12.
//  Copyright © 2019 ouo. All rights reserved.
//

import UIKit

var timer: Timer?
var timerBug: Timer?
var sec = 30
var score = 0
var checkClick = 0

class GameStartController: ViewController {

    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timeUpPic: UIImageView!
    @IBOutlet weak var nextPageButton: UIButton!
    let dieBugImage = UIImage(named: "dieBug.png")
    let bugImage = UIImage(named: "bug.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var bugPosition:Int = 0
        sec = 30
        score = 0
        checkClick = 0
        self.button1.isHidden = true;
        self.button2.isHidden = true;
        self.button3.isHidden = true;
        self.button4.isHidden = true;
        self.button5.isHidden = true;
        self.button6.isHidden = true;
        self.button7.isHidden = true;
        self.button8.isHidden = true;
        self.button9.isHidden = true;
        self.timeUpPic.isHidden = true;
        self.nextPageButton.isHidden = true;
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true)
        { (_) in
            self.timeLabel.text = String(sec)
            if sec > 0{
                sec = sec - 1
            }
            else
            {
                if timer != nil {
                    timer?.invalidate()
                    self.timeUpPic.isHidden = false;
                    self.nextPageButton.isHidden = false;
                    
                }
            }
        }
        
        timerBug = Timer.scheduledTimer(withTimeInterval: 0.6, repeats: true)
        { (_) in
            if sec > 0
            {
                self.button1.isHidden = true;
                self.button2.isHidden = true;
                self.button3.isHidden = true;
                self.button4.isHidden = true;
                self.button5.isHidden = true;
                self.button6.isHidden = true;
                self.button7.isHidden = true;
                self.button8.isHidden = true;
                self.button9.isHidden = true;
                
                bugPosition = Int.random(in: 1...9)
                checkClick = 0
                if bugPosition == 1
                {
                    self.button1.setImage(self.bugImage, for: .normal)
                    self.button1.isHidden = false;
                }
                if bugPosition == 2
                {
                    self.button2.setImage(self.bugImage, for: .normal)
                    self.button2.isHidden = false;
                }
                if bugPosition == 3
                {
                    self.button3.setImage(self.bugImage, for: .normal)
                    self.button3.isHidden = false;
                }
                if bugPosition == 4
                {
                    self.button4.setImage(self.bugImage, for: .normal)
                    self.button4.isHidden = false;
                }
                if bugPosition == 5
                {
                    self.button5.setImage(self.bugImage, for: .normal)
                    self.button5.isHidden = false;
                }
                if bugPosition == 6
                {
                    self.button6.setImage(self.bugImage, for: .normal)
                    self.button6.isHidden = false;
                }
                if bugPosition == 7
                {
                    self.button7.setImage(self.bugImage, for: .normal)
                    self.button7.isHidden = false;
                }
                if bugPosition == 8
                {
                    self.button8.setImage(self.bugImage, for: .normal)
                    self.button8.isHidden = false;
                }
                if bugPosition == 9
                {
                    self.button9.setImage(self.bugImage, for: .normal)
                    self.button9.isHidden = false;
                }
            }
            
            
        }
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func click1(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button1.setImage(dieBugImage, for: .normal)
        }
    }
    @IBAction func click2(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button2.setImage(dieBugImage, for: .normal)
        }
    }
    @IBAction func click3(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button3.setImage(dieBugImage, for: .normal)
        }
    }
    @IBAction func click4(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button4.setImage(dieBugImage, for: .normal)
        }
    }
    @IBAction func click5(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button5.setImage(dieBugImage, for: .normal)
        }
    }
    @IBAction func click6(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button6.setImage(dieBugImage, for: .normal)
        }
    }
    @IBAction func click7(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button7.setImage(dieBugImage, for: .normal)
        }
    }
    @IBAction func click8(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button8.setImage(dieBugImage, for: .normal)
        }
    }
    @IBAction func click9(_ sender: UIButton) {
        if checkClick == 0
        {
            score = score+1;
            checkClick = 1
            scoreLabel.text = String(score)
            button9.setImage(dieBugImage, for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? GameScoreController
        controller?.scoreText = scoreLabel.text
        //controller?.lose = lose.text
    }
    
}
