//
//  ViewController.swift
//  UiKitSamples
//
//  Created by masahiroyanai on 2014/09/27.
//  Copyright (c) 2014年 Masahiro Yanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 小さめのフォントの文字列をラベルに表示する
        let mySmallLabel: UILabel = UILabel()
        mySmallLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        mySmallLabel.text = "小さめのフォントサイズ"
        mySmallLabel.frame = CGRect(x: 25, y: 0, width: 300, height: 150)
        self.view.addSubview(mySmallLabel)
        
        // システムの標準フォントサイズの文字列をラベルに表示する
        let myNormalLabel: UILabel = UILabel()
        myNormalLabel.font = UIFont.systemFontOfSize(UIFont.systemFontSize())
        myNormalLabel.text = "UIButtonのフォントサイズ"
        myNormalLabel.frame = CGRect(x: 25, y:30, width: 200, height: 150)
        self.view.addSubview(myNormalLabel)
        
        // UIButton用のフォントサイズの文字列をラベルに表示する
        let myButtonLabel: UILabel = UILabel()
        myButtonLabel.font = UIFont.systemFontOfSize(UIFont.buttonFontSize())
        myButtonLabel.text = "UIButtonのフォントサイズ"
        myButtonLabel.frame = CGRect(x: 25, y: 60, width: 300, height: 150)
        
        // カスタムしたフォントサイズ(20)の文字列をラベルに表示する
        let myCustomLabel: UILabel = UILabel()
        myCustomLabel.font = UIFont.systemFontOfSize(CGFloat(20))
        myCustomLabel.text = "ポイント20のフォントサイズ"
        myCustomLabel.frame = CGRect(x: 25, y: 90, width: 300, height: 150)
        self.view.addSubview(myCustomLabel)
        
        // Italic System Fontの文字列をラベルに表示する
        let myItalicLabel: UILabel = UILabel()
        myItalicLabel.font = UIFont.italicSystemFontOfSize(UIFont.labelFontSize())
        myItalicLabel.text = "Italicフォント"
        myItalicLabel.frame = CGRect(x: 25, y: 120, width: 300, height: 150)
        self.view.addSubview(myItalicLabel)
        
        // Boldの文字列をラベルに表示する
        let myBoldLabel: UILabel = UILabel()
        myBoldLabel.font = UIFont.boldSystemFontOfSize(UIFont.labelFontSize())
        myBoldLabel.text = "Boldフォント"
        myBoldLabel.frame = CGRect(x: 25, y: 150, width: 300, height: 150)
        self.view.addSubview(myBoldLabel)
        
        // Arialの文字列をラベルに表示する
        let myArialLabel: UILabel = UILabel()
        myArialLabel.font = UIFont(name:"ArialHebrew", size:UIFont.labelFontSize())
        myArialLabel.text = "ArialHebrew"
        myArialLabel.frame = CGRect(x: 25, y: 180, width: 300, height: 150)
        self.view.addSubview(myArialLabel)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}