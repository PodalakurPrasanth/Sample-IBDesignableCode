//
//  CustomLabel.swift
//  IBDesignableDemo
//
//  Created by Apple on 24/06/18.
//  Copyright © 2018 Prasanth. All rights reserved.
//

import Foundation
import UIKit
@IBDesignable
class customLabel1:UILabel{
    


    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var labelTextColor:UIColor? = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1.0) {
        didSet{
            textColor  = labelTextColor
        }
        
        
    }
    
    @IBInspectable var shadowColor2:UIColor? = UIColor(displayP3Red: 157/255, green: 157/255, blue: 157/255, alpha: 1){
        
        didSet{
            layer.shadowColor = shadowColor2?.cgColor
        }
        
    }

    @IBInspectable var cornerRadiusval:CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerRadiusval
            layer.masksToBounds = cornerRadiusval > 0
        }
    }



    @IBInspectable var backgroundColor1: UIColor? = UIColor(displayP3Red: 157/255, green: 157/255, blue: 157/255, alpha: 1){
        
        didSet{
            backgroundColor = backgroundColor1
            
        }
    }
    






}
