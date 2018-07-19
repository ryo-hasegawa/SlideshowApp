//
//  ViewController.swift
//  SlideshowApp
//
//  Created by HaseMac on 2018/07/19.
//  Copyright © 2018年 ryou.hasegawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //表示場所の準備
    @IBOutlet weak var images: UIImageView!
    //再生ボタンの準備
    @IBOutlet weak var playbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
    }
    //まずは画像の配列を作る
    var IMG = [UIImage(named: "IMG1"),
               UIImage(named: "IMG2"),
               UIImage(named: "IMG3")].compactMap{$0}
    
    //再生アクション
    @IBAction func play(_ sender: Any) {
        //ボタンの切り替え
        
        //スライドの設定
        images.animationImages = IMG
        images.animationDuration = 6.0
        
        //開始
        images.startAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

