//
//  ViewController.swift
//  UiKitSamples
//
//  Created by masahiroyanai on 2014/09/27.
//  Copyright (c) 2014年 Masahiro Yanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // サイズ
        myButton.frame = CGRectMake(0, 0, 200, 40)
        
        // 背景色を設定
        myButton.backgroundColor = UIColor.redColor()
        
        // 枠を丸くする
        myButton.layer.masksToBounds = true
        
        // タイトルを設定
        myButton.setTitle("ボタン(通常)", forState: UIControlState.Normal)
        myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        // タイトルを設定
        myButton.setTitle("ボタン(押された時)", forState: UIControlState.Highlighted)
        myButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        // コーナーの半径
        myButton.layer.cornerRadius = 20.0
        
        // ボタンの位置を指定
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y: 200)
        
        // タグを設定
        myButton.tag = 1
        
        // イベントを追加
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        // UIボタンをViewに追加
        self.view.addSubview(myButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /* ボタンイベント */
    func onClickMyButton(sender: UIButton){
        println("OnClickMyButton:")
        println("sender.CurrentTitle: \(sender.currentTitle)")
        println("sender.tag: \(sender.tag)")
    }

}

