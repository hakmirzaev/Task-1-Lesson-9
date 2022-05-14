//
//  Post.swift
//  InstaPDP
//
//  Created by Bekhruz Hakmirzaev on 26/04/22.
//

import Foundation

class Post{
    var name: String? = ""
    var time: String? = ""
    var content: String? = ""
    var profileImage: String? = ""
    var postPhoto: String? = ""
    
    init(name:String,time:String,content:String,profileImage:String,postPhoto:String){
        self.name = name
        self.time = time
        self.content = content
        self.profileImage = profileImage
        self.postPhoto = postPhoto
    }
}
