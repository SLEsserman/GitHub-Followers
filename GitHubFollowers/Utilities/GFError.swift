//
//  GFError.swift
//  GitHubFollowers
//
//  Created by Samuel Esserman on 4/21/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername       = "This username is invalid, check inputs."
    case unableToComplete      = "Unable to complete the request, please check your WIFI connection"
    case invalidResponse       = "Invalide response from the server. Please try again."
    case invalidData           = "The data recieved from the server was invalid. Please try again."
    case unableToFavorite      = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites    = "You have already added this user to your favorites."
}
