//
//  SnippetData.swift
//  Snippets
//
//  Created by Jak Tiano on 8/7/16.
//  Copyright © 2016 PacktPub. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

enum SnippetType: String {
    case text = "Text"
    case photo = "Photo"
}

class SnippetData {
    let type: SnippetType
    let date: Date
    let coordinate: CLLocationCoordinate2D?
    
    init ( snippetType: SnippetType, creationDate: Date, creationCoordinate: CLLocationCoordinate2D? ) {
        type = snippetType
        date = creationDate
        coordinate = creationCoordinate
        print ("\(type.rawValue) snippet created on \(date) at \(coordinate.debugDescription)")
    }
}

class TextData: SnippetData {
    let textData: String
    init ( text: String, creationDate: Date, creationCoordinate: CLLocationCoordinate2D? ) {
        textData = text
        super.init(snippetType: .text, creationDate: creationDate, creationCoordinate: creationCoordinate)
        print ("Text snippet data: \(textData)")
    }
}
class PhotoData: SnippetData {
    let photoData: UIImage
    init ( photo: UIImage, creationDate: Date, creationCoordinate: CLLocationCoordinate2D? ) {
        photoData = photo
        super.init(snippetType: .photo, creationDate: creationDate, creationCoordinate: creationCoordinate)
        print ("Photo snippet data: \(photoData)")
    }
}
