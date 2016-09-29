//
//  NextVC.swift
//  UITableView-Swift
//
//  Created by 阳光 on 16/9/29.
//  Copyright © 2016年 阳光. All rights reserved.
//

import UIKit

class NextVC: UIViewController {

    var carName:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = carName
        
        self.view.backgroundColor=UIColor.lightGrayColor()
    
    }
    
}
