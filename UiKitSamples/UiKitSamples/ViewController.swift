//
//  ViewController.swift
//  UiKitSamples
//
//  Created by masahiroyanai on 2014/09/27.
//  Copyright (c) 2014年 Masahiro Yanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UITextFieldを作成する
        let myTextField: UITextField = UITextField(frame: CGRectMake(0, 0, 200, 30))
        
        // 表示する文字を代入する
        myTextField.text = "Hello Swift!!"
        
        // Delegateを設定する
        myTextField.delegate = self
        
        // 枠を表示する
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // UITextFieldの表示する位置を設定する
        myTextField.layer.position = CGPoint(x:self.view.bounds.width/2, y:100)
        
        // Viewに追加する
        self.view.addSubview(myTextField)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    UITextFieldが編集された直後に呼ばれる
    */
    func textFieldDidBeginEditing(textField: UITextField) {
        println("textFieldDidBeginEditing:" + textField.text)
    }
    
    /*
    UITextFieldが編集終了する直前に呼ばれる
    */
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        println("textFieldShouldEndEditing:" + textField.text)
        
        return true
    }
    
    /*
    改行ボタンが押された際に呼ばれる
    */
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
}