//
//  SettingsMenuView.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/8/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit
import SnapKit

class SettingsMenuView: UIView {
    
    let overlayView = UIView()
    @IBOutlet weak var stackView: UIStackView!
   
    var y : CGFloat = 0
    var height : CGFloat = 0
    var windowHeight : CGFloat = 0
    var windowWidth : CGFloat = 0
    
    override func awakeFromNib() {
        //overlay
        guard let window = UIApplication.shared.keyWindow else { return }
        overlayView.backgroundColor = UIColor(white: 0, alpha: 0.5)
        overlayView.frame = window.frame
        overlayView.alpha = 0
        overlayView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(dismissOverlay)))
        window.addSubview(overlayView)
        
        //settings
        y = window.frame.height - stackView.frame.height
        height = stackView.frame.height
        windowHeight = window.frame.height
        windowWidth = window.frame.width
        
        self.frame = CGRect(x: 0, y: windowHeight , width: windowWidth, height: height)
        window.addSubview(self)

        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.overlayView.alpha = 1
            self.frame = CGRect(x: 0, y: self.y , width: self.windowWidth, height: self.height)
            
        }, completion: nil)
    }
    
    @objc fileprivate func dismissOverlay(){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.overlayView.alpha = 0
            self.frame = CGRect(x: 0, y: self.windowHeight , width: self.windowWidth, height: self.height)
        }, completion: nil)
    }

}
