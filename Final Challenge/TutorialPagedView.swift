//
//  TutorialPagedView.swift
//  Final Challenge
//
//  Created by Davi Rodrigues on 21/10/15.
//  Copyright © 2015 Davi Rodrigues. All rights reserved.
//

import UIKit

class TutorialPagedView: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenWidth = self.view.bounds.size.width
        let screenHeight = self.view.bounds.size.height
        
        let page1: UIView! = NSBundle.mainBundle().loadNibNamed("Tutorial1",
            owner: self,
            options: nil)[0] as! UIView
        page1.frame = UIScreen.mainScreen().bounds
        
        let page2: UIView! = NSBundle.mainBundle().loadNibNamed("Tutorial2", owner: self, options: nil)[0] as! UIView
        page2.frame = UIScreen.mainScreen().bounds
        
        let pages: [UIView!] = [page1, page2]
        
        scrollView.contentSize = CGSizeMake(screenWidth*CGFloat(pages.count), screenHeight)
        
        scrollView.frame = self.view.bounds
        
        var i: CGFloat = 0
        
        for page in pages {
            
            let viewOrigin = screenWidth * i
            
            page.frame = CGRectMake(viewOrigin, 0, screenWidth, screenHeight)
            scrollView.addSubview(page)
            scrollView.layoutIfNeeded()
            
            i++
        }
        
        scrollView.pagingEnabled = true

    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
