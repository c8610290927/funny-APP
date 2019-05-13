//
//  ViewController.swift
//  funny APP
//
//  Created by User20 on 2019/5/12.
//  Copyright © 2019 ouo. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        let content = UNMutableNotificationContent()
        content.title = "快來消滅無所不在的蟲蟲吧！！！"
        content.subtitle = "可憐的農場農夫qwq"
        content.body = "天啊！這些蟲已經困擾我好幾天了！請撥空前來幫助我消滅他們！"
        content.badge = 1
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let request = UNNotificationRequest(identifier: "notification1", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
       }

    
    
    
    
    @IBAction func GameRule(_ sender: Any) {
        let controller = UIAlertController(title: "遊戲說明 (GameRule)", message: "這是一個老少閒宜的殺蟲蟲遊戲。蟲蟲們會隨機出現在九個洞口，請於時間內用滑鼠點擊出現的蟲蟲並將他們殺掉！加油啊=u=", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "了解 (OK)", style: .default, handler: nil)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func HighScore(_ sender: Any) {
        let highest = UserDefaults.standard.string(forKey: "highest")
        let controller = UIAlertController(title: "高分紀錄 (HighestScore)", message: highest, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "我要超越他！", style: .default, handler: nil)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
        
        
    }
}

