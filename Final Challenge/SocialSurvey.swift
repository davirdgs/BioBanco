//
//  SocialSurvey.swift
//  Final Challenge
//
//  Created by Davi Rodrigues on 18/12/15.
//  Copyright © 2015 Davi Rodrigues. All rights reserved.
//

import UIKit
import ResearchKit

class SocialSurvey: ORKTaskViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let step = ORKInstructionStep(identifier: "indentifier")
        step.title = "Selection Survey"
        step.text = "bla"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
