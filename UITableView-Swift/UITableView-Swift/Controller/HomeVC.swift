//
//  HomeVC.swift
//  UITableView-Swift
//
//  Created by 阳光 on 16/9/29.
//  Copyright © 2016年 阳光. All rights reserved.
//

import UIKit

class HomeVC: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var tableView:UITableView!
    
    var dataArr:[HomeModel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "UITableView-Swift"
        self.dataArr=[HomeModel]()
        for var i=0;i<=50;i++
        {
            let car:HomeModel = HomeModel()
            car.money=Int(arc4random()%100)+1
            car.Id=i;
            if i%2==0
            {
                car.name="宝马"
            }
            else
            {
                car.name="奔驰"
            }
            self.dataArr.append(car)
        }
        
        createTableView()
    }
    
    func createTableView()
    {
        tableView=UITableView(frame: self.view.frame, style: UITableViewStyle.Plain)
        tableView.dataSource=self
        tableView.delegate=self
        tableView.showsVerticalScrollIndicator=false
        tableView.registerClass(HomeCell.self, forCellReuseIdentifier:"cell")
        self.view.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as?HomeCell
        cell?.selectionStyle=UITableViewCellSelectionStyle.None
        let carModel=dataArr[indexPath.row]
        cell?.setCell(carModel)
        return cell!
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let nextVC = NextVC()
        let carModel=dataArr[indexPath.row]
        nextVC.carName=carModel.name
        self.navigationController?.pushViewController(nextVC, animated:false)
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120;
    }
    
   
}
