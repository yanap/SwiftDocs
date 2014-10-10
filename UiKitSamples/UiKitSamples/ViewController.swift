//
//  ViewController.swift
//  UiKitSamples
//
//  Created by masahiroyanai on 2014/09/27.
//  Copyright (c) 2014年 Masahiro Yanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ボタンを定義.
    let myInfoDarkButton: UIButton = UIButton.buttonWithType(UIButtonType.InfoDark) as UIButton
    let myInfoLightButton: UIButton = UIButton.buttonWithType(UIButtonType.InfoLight) as UIButton
    let myAddButton: UIButton = UIButton.buttonWithType(UIButtonType.ContactAdd) as UIButton
    let myDetailButton: UIButton = UIButton.buttonWithType(UIButtonType.DetailDisclosure) as UIButton
    let mySystemButton: UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンの位置を指定する.
        myInfoDarkButton.layer.position = CGPoint(x: self.view.frame.width/2, y:50)
        myInfoLightButton.layer.position = CGPoint(x: self.view.frame.width/2, y:100)
        myAddButton.layer.position = CGPoint(x: self.view.frame.width/2, y:150)
        myDetailButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        
        // mySystemButtonに枠を追加する.
        mySystemButton.frame = CGRectMake(0, 0, 200, 50)
        
        // mySystemButtonの位置を設定する.
        mySystemButton.layer.position = CGPoint(x: self.view.frame.width/2, y:250)
        
        // mySystemButtonにタイトルを設定する.
        mySystemButton.setTitle("mySystemButton", forState: UIControlState.Normal)
        
        // タグを設定する.
        myInfoDarkButton.tag = 1
        myInfoLightButton.tag = 2
        myAddButton.tag = 3
        myDetailButton.tag = 4
        mySystemButton.tag = 5
        
        // イベントを追加する.
        myInfoDarkButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        myInfoLightButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        myAddButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        myDetailButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        mySystemButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        // ボタンをViewに追加する.
        self.view.addSubview(myInfoDarkButton)
        self.view.addSubview(myInfoLightButton)
        self.view.addSubview(myAddButton)
        self.view.addSubview(myDetailButton)
        self.view.addSubview(mySystemButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    ボタンイベント
    */
    func onClickMyButton(sender: UIButton){
        println("onClickMyButton:")
        println("sender.currentTitile: \(sender.currentTitle)")
        println("sender.tag: \(sender.tag)")
        
        
    }
}