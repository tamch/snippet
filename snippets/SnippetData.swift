//
//  SnippetData.swift
//  snippets
//
//  Created by tam on 26/4/17.
//  Copyright © 2017 com.sap.cp. All rights reserved.
//

import Foundation

enum SnippetType: String {
    case text = "Text"
    case photo = "Photo"
}

struct SnippetData {
    
    let type: SnippetType
    
    init ( snippetType: SnippetType ) {
        type = snippetType
        print ("\(type.rawValue) snippet created")
    }
}
