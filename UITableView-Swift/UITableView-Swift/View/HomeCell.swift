//
//  HomeCell.swift
//  UITableView-Swift
//
//  Created by 阳光 on 16/9/29.
//  Copyright © 2016年 阳光. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    var headImgView:UIImageView!
    var nameLabel:UILabel!
    var IdLabel:UILabel!
    var moneyLabel:UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCell(model:HomeModel){
        for subviews in self.contentView.subviews
        {
            subviews.removeFromSuperview()
        }
        
        self.headImgView=UIImageView(image: UIImage(named: "1.jpg"))
        self.headImgView.frame=CGRectMake(10,10,100,100)
        self.contentView.addSubview(self.headImgView)
        
        
        self.nameLabel=UILabel(frame: CGRectMake(120,10,self.contentView.frame.size.width-100,30))
        self.nameLabel.text="名字:\(model.name)"
        self.contentView.addSubview(self.nameLabel)
        
        self.IdLabel=UILabel(frame: CGRectMake(120,40,self.contentView.frame.size.width-100,30))
        self.IdLabel.text="编号：\(model.Id)"
        self.contentView.addSubview(self.IdLabel)
        
        self.moneyLabel=UILabel(frame: CGRectMake(120,70,self.contentView.frame.size.width-100,30))
        self.moneyLabel.text="价格：\(model.money)"
        self.contentView.addSubview(self.moneyLabel)
        
    }
    
}
