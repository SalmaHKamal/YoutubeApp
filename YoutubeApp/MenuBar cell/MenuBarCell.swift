//
//  MenuBarCell.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/6/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit

class MenuBarCell: UICollectionViewCell {
    
    let imageNames = ["home" , "trending" , "subscriptions" , "account"]

    @IBOutlet weak var menuItemImage: UIImageView!
    @IBOutlet weak var underline: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }


}
