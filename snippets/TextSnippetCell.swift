//
//  TextSnippetCell.swift
//  Snippets
//
//  Created by Jak Tiano on 8/8/16.
//  Copyright © 2016 PacktPub. All rights reserved.
//

import UIKit

class TextSnippetCell : UITableViewCell {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var date: UILabel!
    
    var shareButton: (() -> Void)?
    
    @IBAction func shareButtonPressed(_ sender: Any) {
        print("Tweet button pressed for textview")
        if let callback = shareButton {
            callback()
        }
    }
       
}
