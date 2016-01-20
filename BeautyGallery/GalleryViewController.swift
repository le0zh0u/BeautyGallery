//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 周椿杰 on 16/1/19.
//  Copyright © 2016年 周椿杰. All rights reserved.
//

import UIKit
import Social

class GalleryViewController:UIViewController {

    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName: String?
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if let name = imageName{
            beautyImage.image = UIImage(named: name)
            
            switch name{
            case "fanbingbing":
                navigationItem.title = "范冰冰"
            case "libingbing":
                navigationItem.title = "李冰冰"
            case "wangfei":
                navigationItem.title = "王菲"
            case "yangmi":
                navigationItem.title = "杨幂"
            case "zhouxun":
                navigationItem.title = "周迅"
            default:
                navigationItem.title = "女神画廊"
            }
        }
    

    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func shareTapped(sender: AnyObject) {
        let controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        controller.setInitialText("分享测试")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
}
