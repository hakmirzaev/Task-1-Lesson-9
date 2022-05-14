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
    var post_img: String? = ""
    
    init(fullName: String, user_img: String, post_img: String) {
        self.fullName = fullName
        self.user_img = user_img
        self.post_img = post_img
    }
}
