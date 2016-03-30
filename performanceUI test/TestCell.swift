//
//  TestCell.swift
//  performanceUI test
//
//  Created by mac-226 on 3/30/16.
//  Copyright © 2016 mac-226. All rights reserved.
//

import Foundation
import UIKit

let fillViewWidth = 15
let fillViewHeight = 15
let borderImage = UIImage(named: "btn_bg_border_2_00A9CE")


class TestCell: UITableViewCell {
  override func awakeFromNib() {
    super.awakeFromNib()

    
    var insertPoint = CGPointZero
    while insertPoint.x < frame.width {
      while  insertPoint.y < frame.height {
        let fillView = UIView(frame: CGRect(origin: insertPoint, size: CGSize(width: fillViewWidth-1, height: fillViewHeight-1)))
        fillView.backgroundColor = UIColor.whiteColor()
        
        //comment smth
        
        addBorderToViewByImg(fillView)
        //addBorderToViewByLayer(fillView)
        
        contentView.addSubview(fillView)
        insertPoint.y = insertPoint.y + CGFloat(fillViewHeight)
      }
      insertPoint.x = insertPoint.x + CGFloat(fillViewWidth)
      insertPoint.y = 0
    }
  }
  
  
  func addBorderToViewByLayer(view: UIView) {
    view.layer.borderWidth = 1
    view.layer.borderColor = UIColor .blackColor().CGColor
    view.layer.cornerRadius = 2
  }
  
    func addBorderToViewByImg(view: UIView) {
    let borderImageView = UIImageView(image: borderImage)
    view.addSubview(borderImageView)
    borderImageView.frame = CGRect(x: 0, y: 0, width: fillViewWidth, height: fillViewHeight)

  }
}