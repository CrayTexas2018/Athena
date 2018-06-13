//
//  Group.swift
//  Athena
//
//  Created by Cray Jaeger on 6/12/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import Foundation

public struct Group {
    let groupId: String
    let name: String
    var isDeleted: Bool = false
    let created: Date
    var updated: Date
    
    private enum GroupError: Error {
        case GroupExists(error: String)
    }
    
    init(name: String, groupId: String = UUID().uuidString, created: Date = Date(), updated: Date = Date()) {
        self.name = name
        self.groupId = groupId
        self.created = created
        self.updated = updated
    }
    
    public static func groupID(group: Group) -> String {
        return group.groupId
    }
    
    public static func name(group: Group) -> String {
        return group.name
    }
    
    public static func created(group: Group) -> Date {
        return group.created
    }
    
    public static func updated(group: Group) -> Date {
        return group.updated
    }
    
    public static func createGroup(name: String, join: Bool = true) throws -> Group {
        // Create a new group
        var newGroup = Group(name: name)
        
        // Check if group exists
        if name == Group.name(group: newGroup) {
            throw GroupError.GroupExists(error: "Group name already exists!")
        }
        
        // Insert group into database
        
        // Get last created group from DB (for ID)
        newGroup = getGroup(groupId: "abc123")
        
        // Have user join group?
        if (join) {
            
        }
        
        // Return group
        return newGroup
    }
    
    public static func joinGroup(groupId: String) {
        joinGroup(groupId: groupId)
    }
    
    public static func getGroup(groupId: String) -> Group {
        // DB call
        print("!!! Group.getGroup not implemented !!!")
        abort()
    }
    
    public func memberCount(groupId: String) -> Int {
        // Make DB call and return count of users for given group ID
        return 0
    }
}



