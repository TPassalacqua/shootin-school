//
//  ThreePointGradientView.swift
//  SS Free Throws
//
//  Created by Thomas Passalacqua on 1/4/18.
//  Copyright © 2018 TApps. All rights reserved.
//

import UIKit

@IBDesignable
class ThreePointGradientView: UIView{
    @IBInspectable var firstColor: UIColor = UIColor.white {
        didSet{
            updateView()
        }
    }
    @IBInspectable var secondColor: UIColor = UIColor.white {
        didSet{
            updateView()
        }
    }
    @IBInspectable var thirdColor: UIColor = UIColor.white {
        didSet{
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor.cgColor, secondColor.cgColor, thirdColor.cgColor]
        
        layer.startPoint = CGPoint(x:0, y:0)
        layer.endPoint = CGPoint(x:0, y:1)
    }
}
