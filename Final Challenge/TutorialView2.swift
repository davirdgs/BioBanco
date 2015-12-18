//
//  TutorialView2.swift
//  Final Challenge
//
//  Created by Davi Rodrigues on 23/10/15.
//  Copyright © 2015 Davi Rodrigues. All rights reserved.
//

import UIKit

class TutorialView2: UIView {
    
    @IBOutlet weak var termsWebView: UIWebView!
    
    @IBOutlet weak var acceptButton: UIButton!
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        loadTermsHTML()
        
    }
    
    
    func loadTermsHTML() {
        
        //Load the HTML file from resources
        guard let path = NSBundle.mainBundle().pathForResource("terms", ofType: "html") else {
            return
        }
        
        let url = NSURL(fileURLWithPath: path)
        
        if let data = NSData(contentsOfURL: url) {
            
            termsWebView.loadHTMLString(NSString(data: data,
                encoding: NSUTF8StringEncoding) as! String, baseURL: nil)
            
        }
    }
    
}
