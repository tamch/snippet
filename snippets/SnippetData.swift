//
//  SnippetData.swift
//  snippets
//
//  Created by tam on 26/4/17.
//  Copyright © 2017 com.sap.cp. All rights reserved.
//

import Foundation

enum SnippetType: String {
    case text = "text"
    case photo = "photo"
}

class SnippetData {
    let type: SnippetType
    
    init ( snippetType: SnippetType ) {
        type = snippetType
        print ("\(type.rawValue) snippet created")
    }
}

class TextData: SnippetData {
    let textData: String
    
    init ( text: String ) {
        textData = text
        super.init(snippetType: .text)
        print ("Text snippet data: \(textData)")
    }
}
