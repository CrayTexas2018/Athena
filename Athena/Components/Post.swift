//
//  Post.swift
//  Athena
//
//  Created by Cray Jaeger on 6/12/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import Foundation

public struct Post {
    let postId: String
    let userId: String
    let text: String?
    let media: Media?
    var isDeleted: Bool = false
    let created: Date
    var updated: Date
    
    public static func postId(post: Post) -> String {
        return post.postId
    }
    
    public static func userId(post: Post) -> String {
        return post.userId
    }
    
    public static func text(post: Post) -> String? {
        if let text = post.text {
            return text
        }
        return nil
    }
    
    public static func media(post: Post) -> Media? {
        if let media = post.media {
            return media
        }
        return nil
    }
    
    public static func isDeleted(post: Post) -> Bool {
        return post.isDeleted
    }
    
    public static func created(post: Post) -> Date {
        return post.created
    }
    
    public static func updated(post: Post) -> Date {
        return post.updated
    }
}
