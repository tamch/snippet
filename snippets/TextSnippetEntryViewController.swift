//
//  TextSnippetEntryViewController.swift
//  snippets
//
//  Created by tam on 28/4/17.
//  Copyright © 2017 com.sap.cp. All rights reserved.
//

import Foundation
import UIKit
class TextSnippetEntryViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    var saveText: (_ text: String) -> Void = { (text:String) in }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textView.inputAccessoryView = createKeyboardToolbar()
        textView.becomeFirstResponder()
    }
    
    func createKeyboardToolbar () -> UIView {
        let keyboardToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44))
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonPressed))
        keyboardToolbar.setItems([flexSpace, doneButton], animated: false)
        
        return keyboardToolbar
    }
    
    func doneButtonPressed() {
        textView.resignFirstResponder()
    }
    
}
extension TextSnippetEntryViewController : UITextViewDelegate {
    func textViewDidEndEditing(_ textView: UITextView) {
        saveText(textView.text)
        dismiss(animated: true, completion: nil)
    }
}
