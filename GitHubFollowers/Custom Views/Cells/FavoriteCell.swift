//
//  FavoriteCell.swift
//  GitHubFollowers
//
//  Created by Samuel Esserman on 4/22/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import UIKit

class FavoriteCell: UITableViewCell {
    
    static let reuseID  = "FavoriteCell"
    let avaterImageView = GFAvatarImageView(frame: .zero)
    let usernameLabel   = GFTitleLabel(textAlignment: .left, fontSize: 26)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(favorite: Follower) {
        usernameLabel.text = favorite.login
        avaterImageView.downloadImage(from: favorite.avatarUrl)
    }
    
    
    private func configure() {
        addSubview(avaterImageView)
        addSubview(usernameLabel)
        
        accessoryType           = .disclosureIndicator
        let padding: CGFloat    = 12
        
        NSLayoutConstraint.activate([
            avaterImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avaterImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            avaterImageView.heightAnchor.constraint(equalToConstant: 60),
            avaterImageView.widthAnchor.constraint(equalToConstant: 60),
            
            usernameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avaterImageView.trailingAnchor, constant: 24),
            usernameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
