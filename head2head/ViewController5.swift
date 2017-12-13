//
//  ViewController5.swift
//  head2head
//
//  Created by John Lee on 12/13/17.
//  Copyright © 2017 John Lee. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var displayTeam: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var teamOnePoints = Int(GameState.teamOne["points"]!)!
        var teamTwoPoints = Int(GameState.teamTwo["points"]!)!
        
        if(teamOnePoints > teamTwoPoints){
            displayTeam.text = GameState.teamOne["name"]
        }
        else if (teamTwoPoints > teamOnePoints) {
            displayTeam.text = GameState.teamTwo["name"]
        }
        else {
            displayTeam.text = "TIE"
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
