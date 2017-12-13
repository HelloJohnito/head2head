//
//  ViewController4.swift
//  head2head
//
//  Created by John Lee on 12/13/17.
//  Copyright © 2017 John Lee. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var displayResult: UILabel!
    
    @IBOutlet weak var teamOneName: UILabel!
    @IBOutlet weak var teamOnePoints: UILabel!
    
    @IBOutlet weak var teamTwoName: UILabel!
    @IBOutlet weak var teamTwoPoints: UILabel!
    
    var timer = Timer()
    var time = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayResult.text = (GameState.sessionTimeout) ? "Time Out!" : "Good Job!"
        GameState.turnNumber += 1
        
        teamOneName.text = GameState.teamOne["name"]!
        teamOnePoints.text = GameState.teamOne["points"]!
        teamTwoName.text = GameState.teamTwo["name"]!
        teamTwoPoints.text = GameState.teamTwo["points"]!
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }
    
    @objc func processTimer(){
        if(time == 0) {
            timer.invalidate()
            
            if((GameState.turnNumber - 1) == 6){
                self.performSegue(withIdentifier: "goFive", sender: self)
            } else {
                self.performSegue(withIdentifier: "goTwo", sender: self)
            }
            
        } else {
            time -= 1
        }
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
