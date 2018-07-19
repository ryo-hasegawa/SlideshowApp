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
    //スライドショーのステータスを判別してボタンの表示を再生にするメソッド
    func slidestatus(){
       playbutton.setTitle("再生", for: .normal)}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        slidestatus()
        
    }
    //まずは画像の配列を作る
    var IMG = [UIImage(named: "IMG1"),
               UIImage(named: "IMG2"),
               UIImage(named: "IMG3")].compactMap{$0}
    
    //再生アクション
    //タップのカウント用変数
    var count = 0
    @IBAction func play(_ sender: Any) {
        //1タップ目の挙動→スタート、ラベルを”停止”に
        //２タップ目の挙動→ストップ、ラベルを”再生”に変数を初期化
        //スライドの設定
        images.animationImages = IMG
        images.animationDuration = 6.0
        //開始
        images.startAnimating()
        //停止
        images.stopAnimating()
        //ボタンの切り替え
        playbutton.setTitle("停止", for: .normal)
        playbutton.setTitle("再生", for: .normal)
        
        
    }
    //停止アクション
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

