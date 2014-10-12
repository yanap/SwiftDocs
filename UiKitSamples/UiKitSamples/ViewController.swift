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
    
        // UIImageViewを作成する
        let myImageView: UIImageView = UIImageView(frame: CGRectMake(0, 0, 240, 120))
        
        // 表示する画像を設定する
        let myImage = UIImage(named: "logo.png")
        
        // 画像をUIImageViewに設定する
        myImageView.image = myImage
        
        // 画像の表示する座標を指定する
        myImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y:200.0)
        
        // UIImageViewをViewに追加する
        self.view.addSubview(myImageView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}