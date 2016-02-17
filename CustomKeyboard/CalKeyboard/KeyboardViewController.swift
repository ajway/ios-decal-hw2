//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var bearKeyboardButton: UIButton!
    @IBOutlet var catKeyboardButton: UIButton!
    @IBOutlet var fishKeyboardButton: UIButton!
    @IBOutlet var pigKeyboardButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        loadTargets()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
    }
    
    func loadTargets() {
        returnKeyboardButton.addTarget(self, action:"returnAction", forControlEvents: .TouchUpInside)
        deleteKeyboardButton.addTarget(self, action:"deleteAction", forControlEvents: .TouchUpInside)
        bearKeyboardButton.addTarget(self, action:"bearAction", forControlEvents: .TouchUpInside)
        catKeyboardButton.addTarget(self, action:"catAction", forControlEvents: .TouchUpInside)
        fishKeyboardButton.addTarget(self, action:"fishAction", forControlEvents: .TouchUpInside)
        pigKeyboardButton.addTarget(self, action:"pigAction", forControlEvents: .TouchUpInside)
    }
    
    func returnAction() {
        (textDocumentProxy as UIKeyInput).insertText("\n")
    }
    
    func deleteAction() {
        (textDocumentProxy as UIKeyInput).deleteBackward()
    }
    
    func bearAction() {
        (textDocumentProxy as UIKeyInput).insertText("ʕ⊙ᴥ⊙ʔ")
    }
    
    func catAction() {
        (textDocumentProxy as UIKeyInput).insertText("(^._.^)ﾉ")
    }
    
    func fishAction() {
        (textDocumentProxy as UIKeyInput).insertText(">ﾟ)))彡")
    }
    
    func pigAction() {
        (textDocumentProxy as UIKeyInput).insertText("[ ಠ (oo) ಠ ]")
    }


}
