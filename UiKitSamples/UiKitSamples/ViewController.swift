//
//  ViewController.swift
//  UiKitSamples
//
//  Created by masahiroyanai on 2014/09/27.
//  Copyright (c) 2014年 Masahiro Yanai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Tableで使用する配列を設定する
    let myItems: NSArray = ["TEST1", "TEST2", "TEST3"]
    
    override func viewDidLoad() {
        <#code#>
    }
    
    override func didReceiveMemoryWarning() {
        <#code#>
    }
    
    /*
    Cellが選択された際に呼び出される
    */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        <#code#>
    }
    
    /*
    Cellの総数を返す
    */
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    /*
    Cellに値を設定する
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        <#code#>
    }
}