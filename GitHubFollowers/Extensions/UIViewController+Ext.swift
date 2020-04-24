//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Samuel Esserman on 4/20/20.
//  Copyright © 2020 Samuel Esserman. All rights reserved.
//

import UIKit
import SafariServices

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle  = .overFullScreen
            alertVC.modalTransitionStyle    = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariaVC = SFSafariViewController(url: url)
        safariaVC.preferredControlTintColor = .systemGreen
        present(safariaVC, animated: true)

    }
}
