//
//  KoreaViewContrlller.swift
//  BeautyGallery
//
//  Created by 周椿杰 on 16/1/22.
//  Copyright © 2016年 周椿杰. All rights reserved.
//

import UIKit
import Social

class KoreaViewController:UIViewController{
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func facebookTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        controller.setInitialText("分享测试")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        controller.setInitialText("分享测试")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func weiboTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        
        controller.setInitialText("分享测试")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }

}
