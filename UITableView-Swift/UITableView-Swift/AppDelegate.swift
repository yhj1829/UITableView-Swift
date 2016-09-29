//
//  AppDelegate.swift
//  UITableView-Swift
//
//  Created by 阳光 on 16/9/29.
//  Copyright © 2016年 阳光. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       
        let rootVC=HomeVC();
        let rootNavVC=UINavigationController(rootViewController:rootVC);
        self.window!.rootViewController=rootNavVC;
        
        return true
    }

}

