//
//  DemoViewController.swift
//  PKHUD Demo
//
//  Created by Philip Kluz on 6/18/14.
//  Copyright (c) 2014 NSExceptional. All rights reserved.
//

import UIKit
import PKHUD

class DemoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PKHUD.sharedHUD.dimsBackground = false
        PKHUD.sharedHUD.userInteractionOnUnderlyingViewsEnabled = false
    }

    @IBAction func showAnimatedSuccessHUD(_ sender: AnyObject) {
        PKHUD.sharedHUD.contentView = PKHUDSuccessView()
        PKHUD.sharedHUD.show()
        PKHUD.sharedHUD.hide(afterDelay: 2.0);
    }
    
    @IBAction func showAnimatedErrorHUD(_ sender: AnyObject) {
        PKHUD.sharedHUD.contentView = PKHUDErrorView()
        PKHUD.sharedHUD.show()
        PKHUD.sharedHUD.hide(afterDelay: 2.0);
    }
    
    @IBAction func showAnimatedProgressHUD(_ sender: AnyObject) {
        PKHUD.sharedHUD.contentView = PKHUDProgressView()
        PKHUD.sharedHUD.show()
        
        let delayTime = DispatchTime.now() + Double(Int64(2.0 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) {
            PKHUD.sharedHUD.contentView = PKHUDSuccessView()
            PKHUD.sharedHUD.hide(afterDelay: 2.0)
        }
    }
    
    @IBAction func showTextHUD(_ sender: AnyObject) {
        PKHUD.sharedHUD.contentView = PKHUDTextView(text: "Requesting Licence…")
        PKHUD.sharedHUD.show()
        PKHUD.sharedHUD.hide(afterDelay: 2.0)
    }
    
    @IBAction func showAnimatedSuccessSubtitleHUD(_ sender: AnyObject) {
        PKHUD.sharedHUD.contentView = PKHUDSuccessSubtitleView(subtitle: "Success")
        PKHUD.sharedHUD.show()
        PKHUD.sharedHUD.hide(afterDelay: 2.0)
    }
    
    @IBAction func showAnimatedErrorSubtitleHUD(_ sender: AnyObject) {
        PKHUD.sharedHUD.contentView = PKHUDErrorSubtitleView(subtitle: "Error")
        PKHUD.sharedHUD.show()
        PKHUD.sharedHUD.hide(afterDelay: 2.0)
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.allButUpsideDown;
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
}
