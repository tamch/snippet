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
        let newSnippet = SnippetData()
        data.append(newSnippet)
    }
}

