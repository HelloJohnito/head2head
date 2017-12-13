//
//  ViewController2.swift
//  head2head
//
//  Created by John Lee on 12/12/17.
//  Copyright © 2017 John Lee. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var displayRound: UILabel!
    var timer = Timer()
    var time = 3
    
    @IBOutlet weak var displayTimer: UILabel!
    @IBOutlet weak var teamName: UILabel!
    
    @objc func processTimer() {
        if time == 1 {
            timer.invalidate()
            self.performSegue(withIdentifier: "goThree", sender: self)
        }
        else{
            time -= 1
            displayTimer.text = String(time)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayRound.text = String((GameState.turnNumber + 1)/2)
        
        if(GameState.turnNumber % 2 == 0) {
            teamName.text = GameState.teamTwo["name"]!
        }
        else {
            teamName.text = GameState.teamOne["name"]!
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
