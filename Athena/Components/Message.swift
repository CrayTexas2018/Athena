//
//  Message.swift
//  Athena
//
//  Created by Cray Jaeger on 6/8/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import Foundation

public struct Message
{    
    enum MessageError: Error {
        case messageTooLong
    }
    
    let messageId: Int
    let userId: Int
    let text: String
    let created: Date
    let isSuccessful: Bool
    let isSent: Bool
    let isReceived: Bool
    
    public static func messageId(message: Message) -> Int
    {
        return message.messageId
    }
    
    public static func userId(message: Message) -> Int
    {
        return message.userId
    }
    
    public static func text(message: Message) -> String
    {
        return message.text
    }
    
    public static func created(message: Message) -> Date
    {
        return message.created
    }
    
    public static func isSuccessful(message: Message) -> Bool
    {
        return message.isSuccessful
    }
    
    public static func isSent(message: Message) -> Bool
    {
        return message.isSent
    }
    
    public static func isReceived(message: Message) -> Bool
    {
        return message.isReceived
    }
}
