//
//  UINavControllerExtension.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/5/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    open override func awakeFromNib() {
        navigationBar.isTranslucent = false
        navigationBar.barTintColor = UIColor.rgb(red: 230, green: 32, blue: 31)
    }

}


extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIApplication {
    var statusBarView: UIView? {
        if responds(to: Selector("statusBar")) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
}
