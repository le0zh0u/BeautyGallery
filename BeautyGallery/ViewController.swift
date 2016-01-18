//
//  ViewController.swift
//  BeautyGallery
//
//  Created by 周椿杰 on 16/1/12.
//  Copyright © 2016年 周椿杰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰","李冰冰","王菲","杨幂","周迅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.dataSource=self
        beautyPicker.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

