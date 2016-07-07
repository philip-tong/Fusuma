//
//  FSImageCropOverlay.swift
//  Fusuma
//
//  Created by Tong Chun Yin on 7/7/2016.
//  Copyright © 2016 ytakzk. All rights reserved.
//

import UIKit

final class FSImageCropOverlay: UIView {

    @IBOutlet var cropAreaView: UIView!
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!
        
        let firstView = NSBundle.mainBundle().loadNibNamed("FSImageCropOverlay", owner: self, options: nil).first as! UIView
        self.addSubview(firstView)
        
        firstView.translatesAutoresizingMaskIntoConstraints = false;
        
        self.addConstraint(self.pin(firstView, attribute:NSLayoutAttribute.Top))
        self.addConstraint(self.pin(firstView, attribute:NSLayoutAttribute.Left))
        self.addConstraint(self.pin(firstView, attribute:NSLayoutAttribute.Bottom))
        self.addConstraint(self.pin(firstView, attribute:NSLayoutAttribute.Right))
    }

    
    func pin(item: NSObject, attribute: NSLayoutAttribute) -> NSLayoutConstraint
    {
        return NSLayoutConstraint(item: self, attribute: attribute, relatedBy: NSLayoutRelation.Equal, toItem: item, attribute: attribute, multiplier: 1.0, constant: 0.0)
        
    }
    
    static func instance() -> FSImageCropOverlay {
        
        return UINib(nibName: "FSImageCropOverlay", bundle: NSBundle(forClass: self.classForCoder())).instantiateWithOwner(self, options: nil)[0] as! FSImageCropOverlay
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
