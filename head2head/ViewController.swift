//
//  ViewController.swift
//  head2head
//
//  Created by John Lee on 12/12/17.
//  Copyright © 2017 John Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var teamOne: UITextField!
    @IBOutlet weak var teamTwo: UITextField!
    
    
    @IBAction func submit(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(teamOne.text! != "") {
            GameState.teamOne["name"] = teamOne.text!
        }
        
        if(teamTwo.text! != "") {
            GameState.teamTwo["name"] = teamTwo.text!
        }
    }


}

