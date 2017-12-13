//
//  ViewController3.swift
//  head2head
//
//  Created by John Lee on 12/12/17.
//  Copyright © 2017 John Lee. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var displayRound: UILabel!
    @IBOutlet weak var word: UILabel!
    @IBOutlet weak var gameTimer: UILabel!
    var timer = Timer()
    var time = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayRound.text = String((GameState.turnNumber + 1)/2)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }
    
    @objc func processTimer(){
        if time == 1 {
            time -= 1
            timer.invalidate()
            
            self.performSegue(withIdentifier: "goFour", sender: self)
            
        } else {
            time -= 1
            gameTimer.text = String(time)
        }
    }

    @IBAction func addPoint(_ sender: UIButton) {
        timer.invalidate()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if(time > 0){
            if(GameState.turnNumber % 2 == 0){
                GameState.teamTwo["points"] = String(Int(GameState.teamTwo["points"]!)! + 1)
            } else {
                GameState.teamOne["points"] = String(Int(GameState.teamOne["points"]!)! + 1)
            }
        }
        
        GameState.sessionTimeout = (time == 0) ? true : false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
