//
//  Followers.swift
//  GitHubFollowers
//
//  Created by Samuel Esserman on 4/20/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
