//
//  TutorialView1.swift
//  Final Challenge
//
//  Created by Davi Rodrigues on 22/10/15.
//  Copyright © 2015 Davi Rodrigues. All rights reserved.
//

import UIKit

class TutorialView1: UIView {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func drawRect(rect: CGRect) {
        background.image = UIImage(named: "Background")
        logoView.image = UIImage(named: "LogoSemFundo")
        
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        layoutIfNeeded()
        label.text = "Bem vindo ao PlaceholderName\nPlaceholderSlogan"
    }


}
