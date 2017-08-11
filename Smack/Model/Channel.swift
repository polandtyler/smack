//
//  Channel.swift
//  Smack
//
//  Created by A664291 on 8/10/17.
//  Copyright © 2017 KingdomBits. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    
//    Swift 3 way of doing it (without conforming to Decodable)
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
    
//    Swift 4 way (with Decodable protocol adherence)
//    public private(set) var name: String!
//    public private(set) var description: String!
//    public private(set) var _id: String!
//    public private(set) var __v: Int!
}
