//
//  VideoCell.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/6/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit
import SDWebImage

class VideoCell: BaseCell {
    
    var video : Video? {
        didSet{
            if let video = video , let channel = video.channel {
                nameLabel.text = video.title
                videoImage?.sd_setImage(with: URL(string: video.thumbnail_image_name ?? ""), completed: nil)
                profileImage.sd_setImage(with: URL(string: channel.profile_image_name ?? ""), completed: nil)
                
                let numberFormatter = NumberFormatter()
                numberFormatter.numberStyle = .decimal
                let formattedNOV = numberFormatter.string(from: video.number_of_views! as NSNumber)
                descTextView.text = "\(channel.name ?? "") • \(formattedNOV ?? "") • 2 years ago "
                
            }
        }
    }
    
    @IBOutlet weak var descTextView: UITextView!
    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var videoImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        descTextView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        descTextView.textColor = .lightGray
        seperatorView.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        profileImage.layer.cornerRadius = 22
    }

}
