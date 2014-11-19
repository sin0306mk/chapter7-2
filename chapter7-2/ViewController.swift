//
//  ViewController.swift
//  chapter7-2
//
//  Created by SMB開発部 on 2014/11/19.
//  Copyright (c) 2014年 Sorimachi,corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //カウント用の変数
    var myCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func returnMenu(segue: UIStoryboardSegue){
        let newVC = segue.sourceViewController as nextViewController
        myCount = newVC.tmpCount
        myCount++
        
        println("前の画面から戻ってきた時<\(myCount)>")
    }
    @IBAction func tapBtn(sender: AnyObject) {
        self.performSegueWithIdentifier("mySegue", sender: nil)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "mySegue") {
            //カウントアップ
            myCount++
            var newVC = segue.destinationViewController as nextViewController
            newVC.tmpCount = myCount
        }
    }
}

