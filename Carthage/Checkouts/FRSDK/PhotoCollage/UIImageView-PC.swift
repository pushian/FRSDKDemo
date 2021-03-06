//
//  UIImageView-PC.swift
//  PhotoCollage
//
//  Created by Yangfan Liu on 24/8/17.
//  Copyright © 2017 Yangfan Liu. All rights reserved.
//


import UIKit

extension UIImageView {
    func FRApplyBundleImage(name: String, replaceColor: UIColor? = nil) -> Void  {
        if let bundlePath: String = Bundle.main.path(forResource: "FRPhotoCollageSDK", ofType: "bundle") {
            if let bundle = Bundle(path: bundlePath) {
                let resource: String = bundle.path(forResource: name, ofType: "png")!
                if let color = replaceColor {
                    self.image = UIImage(contentsOfFile: resource)?.FRImageByReplacingContentWithColor(color: color)
                } else {
                    self.image = UIImage(contentsOfFile: resource)
                }
                return
            }
        }
    }
}
