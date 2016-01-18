//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by 周椿杰 on 16/1/17.
//  Copyright © 2016年 周椿杰. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource{
    @available(iOS 2.0, *)
    func numberOfComponentsInPickerView(pickerView: UIPickerView)-> Int{
        return 1
    }
    
    @available(iOS 2.0, *)
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int)->Int{
        return beauties.count
    }
}

extension ViewController:UIPickerViewDelegate{
    @available(iOS 2.0, *)
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beauties[row]
    }
}