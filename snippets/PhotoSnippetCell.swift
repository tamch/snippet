//
//  PhotoSnippetCell.swift
//  Snippets
//
//  Created by Jak Tiano on 8/8/16.
//  Copyright © 2016 PacktPub. All rights reserved.
//

import UIKit

class PhotoSnippetCell : UITableViewCell {
    
    @IBOutlet var photo: UIImageView!
    @IBOutlet var date: UILabel!
    
    var shareButton: (() -> Void)?
    @IBAction func shareButtonPressed(_ sender: Any) {
        print("Tweet button pressed from Photo")
        if let callback = shareButton {
            callback()
        }
    }
}
