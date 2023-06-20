//
//  Post.swift
//  Table_ZZZZZ
//
//  Created by Bakhrom Masharipov on 18.06.23.
//

import Foundation

class Post{
    var name: String? = ""
    var content: String? = ""
    var image: String? = ""
    
    
    init(name: String, content: String, image: String) {
        self.name = name
        self.content = content
        self.image = image
    }
}
