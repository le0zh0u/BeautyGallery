//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by 周椿杰 on 16/1/19.
//  Copyright © 2016年 周椿杰. All rights reserved.
//

import UIKit

class GalleryViewController:UIViewController {
    
    @IBOutlet weak var beautyImage: UIImageView!
    
    var imageName: String?
    override func viewDidLoad(){
        super.viewDidLoad()
        if imageName != nil{
            beautyImage.image = UIImage(named: imageName!)
        }
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
}
