//
//  User.swift
//  Athena
//
//  Created by Cray Jaeger on 6/8/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import Foundation

public struct User
{
    public enum Gender {
        case male
        case female
    }
    
    //Properties
    
    let userId: Int
    let guid: String
    let email: String
    let username: String
    let firstName: String
    let lastName: String
    let gender: Gender
    let dob: Date
    let created: Date
    let upated: Date
    
    // Accessor functions
    
    public static func userId(user: User) -> Int
    {
        return user.userId
    }
    
    public static func guid(user: User) -> String
    {
        return user.guid
    }
    
    public static func username(user: User) -> String
    {
        return user.username
    }
    
    public static func firstName(user: User) -> String
    {
        return user.firstName
    }
    
    public static func lastName(user: User) -> String
    {
        return user.lastName
    }
    
    public static func gender(user: User) -> Gender
    {
        return user.gender
    }
    
    public static func dob(user: User) -> Date
    {
        return user.dob
    }
    
    public static func created(user: User) -> Date
    {
        return user.created
    }
    
    public static func updated(user: User) -> Date
    {
        return user.upated
    }
    
    public static func age(dob: Date) -> Int
    {
        return Calendar.current.dateComponents([.day], from: dob).year!
    }
}


