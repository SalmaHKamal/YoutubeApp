//
//  Model.swift
//  YoutubeApp
//
//  Created by Salma Hassan on 3/6/19.
//  Copyright © 2019 Salma Hassan. All rights reserved.
//

import UIKit
//{"title":"Taylor Swift - I Knew You Were Trouble (Exclusive)",
//    "number_of_views":319644991,
//    "thumbnail_image_name":"https://s3-us-west-2.amazonaws.com/youtubeassets/taylor_swift_i_knew_you_were_trouble.jpg",
//    "channel":{"name":"Taylor Fan Forever",
//        "profile_image_name":"https://s3-us-west-2.amazonaws.com/youtubeassets/taylor_fan_forever_profile.jpg"},
//    "duration":210}
struct Video: Codable {
    
    var thumbnail_image_name: String?
    var title: String?
    var number_of_views: Int?
    var uploadDate: Date?

    var channel: Channel?

//    //You have to include all properties in the enumeration, even if you don’t plan to rename them.
//    // lets you rename specific properties in case the serialized format doesn’t match the requirements of the API.
//    //By default, this enumeration is created by the compiler, but when you need to rename a key you need to implement it yourself.
    
//    enum CodingKeys : String , CodingKey {
//        case thumbnailImageName
//        case title
//        case nunumberOfViews
//        case uploadDate
//        case channel
//    }
    
}

struct Channel: Codable {
    var name: String?
    var profile_image_name: String?
    
    enum CodingKeys : String , CodingKey {
        case name
        case profile_image_name
    }
}
