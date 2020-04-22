//
//  GFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Samuel Esserman on 4/21/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
            super.viewDidLoad()
            configureItems()
        }
        
        
        private func configureItems() {
            itemInfoViewOne.set(itemInfoType: .followers, with: user.followers)
            itemInfoViewTwo.set(itemInfoType: .following, with: user.following)
            actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
        }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
}

