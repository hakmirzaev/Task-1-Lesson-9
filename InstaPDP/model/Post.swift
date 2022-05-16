//
//  File.swift
//  InstaPDP
//
//  Created by Bekhruz Hakmirzaev on 14/05/22.
//

import Foundation

class Post{
    var fullName: String? = ""
    var user_img: String? = ""
    var post_img1: String? = ""
    var post_img2: String? = ""
    
    init(fullName: String, user_img: String, post_img1: String, post_img2: String) {
        self.fullName = fullName
        self.user_img = user_img
        self.post_img1 = post_img1
        self.post_img2 = post_img2
    }
}
