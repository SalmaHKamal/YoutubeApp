//
//  VideoCell.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/6/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit

class VideoCell: BaseCell {
    
    @IBOutlet weak var descTextView: UITextView!
    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        descTextView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        descTextView.textColor = .lightGray
        seperatorView.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        profileImage.layer.cornerRadius = 22
    }

}
