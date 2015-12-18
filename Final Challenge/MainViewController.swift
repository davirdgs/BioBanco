//
//  MainViewController.swift
//  Final Challenge
//
//  Created by Davi Rodrigues on 23/10/15.
//  Copyright © 2015 Davi Rodrigues. All rights reserved.
//

import UIKit

class MainViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView?.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        self.collectionView?.registerNib(UINib(nibName: "MainHeaderCell", bundle: NSBundle.mainBundle()), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "mainHeaderCell")
    }
    
    override func viewDidAppear(animated: Bool) {
        if(!NSUserDefaults.standardUserDefaults().boolForKey("Tutorial")) {
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "Tutorial")
            performSegueWithIdentifier("toTutorial", sender: self)
        }
    }
    
    @IBAction func returnToMain(segue: UIStoryboardSegue) {
    
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
   override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        switch kind {
        case UICollectionElementKindSectionHeader:
            let headerView = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "mainHeaderCell", forIndexPath: indexPath) as! MainHeaderCell
            headerView.layer.cornerRadius = Constants.cellCornerRadius()
            return headerView
        default:
            assert(false, "Unexpected element kind")
        }
        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        //Altura do header igual a quinta parte da altura da tela
        let headerSize = CGSizeMake(self.view.bounds.width, self.view.bounds.height/5)
        
        return headerSize
        
    }
}
