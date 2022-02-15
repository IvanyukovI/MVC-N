//
//  Comment.swift
//  MVC-N
//
//  Created by Игорь Иванюков on 15.02.2022.
//

import Foundation

struct Comment {
//    "postId": 1,
//        "id": 1,
//        "name": "id labore ex et quam laborum",
//        "email": "Eliseo@gardner.biz",
//        "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
    
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    init?(dict: [String: AnyObject]){
        guard let postId = dict["postId"] as? Int,
              let id = dict["id"] as? Int,
              let name = dict["name"] as? String,
              let email = dict["email"] as? String,
              let body = dict["body"] as? String else {return nil}
        
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body
    }
    
}
