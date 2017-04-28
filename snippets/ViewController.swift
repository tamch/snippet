//
//  ViewController.swift
//  snippets
//
//  Created by tam on 26/4/17.
//  Copyright © 2017 com.sap.cp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data: [SnippetData] = [SnippetData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func createNewSnippet(_ sender: Any) {
        let alert = UIAlertController(title: "Select a snippet type", message: nil, preferredStyle: .actionSheet)
        let textAction = UIAlertAction(title: "Text", style: .default) { (alert: UIAlertAction!) -> Void in
            self.data.append(SnippetData(snippetType: .text))
        }
        let photoAction = UIAlertAction(title: "Photo", style: .default) { (alert: UIAlertAction!) -> Void in
            self.data.append(SnippetData(snippetType: .photo))
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(textAction)
        alert.addAction(photoAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion:nil)
    }
}

