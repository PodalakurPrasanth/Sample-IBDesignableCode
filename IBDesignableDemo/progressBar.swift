//
//  progressBar.swift
//  IBDesignableDemo
//
//  Created by Apple on 24/06/18.
//  Copyright © 2018 Prasanth. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class StepProgressView: UIView {
    
    //@IBInspectable var progress: Float = 0
    @IBInspectable public var progress:CGFloat = 0.0
    var progressColor = UIColor.black
    var bgColor = UIColor.red
   
    override func layoutSubviews() {
        self.backgroundColor = UIColor.clear
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let height = frame.height-8
        
        let circle1 = UIView(frame: CGRect(x: frame.width*(1/4), y: 0, width: frame.height, height: frame.height))
        circle1.backgroundColor = UIColor.yellow//bgColor
        circle1.layer.cornerRadius = frame.height/2
        addSubview(circle1)
        
        let circle2 = UIView(frame: CGRect(x: frame.width*(2/4), y: 0, width: frame.height, height: frame.height))
        circle2.backgroundColor = UIColor.green//bgColor
        circle2.layer.cornerRadius = frame.height/2
        addSubview(circle2)
        
        let circle3 = UIView(frame: CGRect(x: frame.width*(3/4), y: 0, width: frame.height, height: frame.height))
        circle3.backgroundColor = UIColor.blue
        circle3.layer.cornerRadius = frame.height/2
        addSubview(circle3)
        
        let bgView = UIView(frame: CGRect(x: height/2, y: 6, width: frame.width-height/2, height: height))
        bgView.backgroundColor = bgColor
        bgView.layer.cornerRadius = height/2
        addSubview(bgView)
        
        let progressView = UIView(frame: CGRect(x: 0, y: 4, width: frame.width*CGFloat(progress), height: height))
        progressView.backgroundColor = progressColor
        progressView.layer.cornerRadius = height/2
        addSubview(progressView)
        if self.progress < 0 || self.progress > 1 {
            
        }else{
            
        }
        
    }
    
}
