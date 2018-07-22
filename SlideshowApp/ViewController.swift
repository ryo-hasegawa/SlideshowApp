//
//  ViewController.swift
//  SlideshowApp
//
//  Created by HaseMac on 2018/07/19.
//  Copyright © 2018年 ryou.hasegawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //再生ボタンの準備
    @IBOutlet weak var playbutton: UIButton!
    //進むボタンの準備
    @IBOutlet weak var goNext: UIButton!
    //戻るボタンの準備
    @IBOutlet weak var goBack: UIButton!
    //表示場所の準備
    @IBOutlet weak var images: UIImageView!
    //表示する画像の格納庫
    let imageindex = [#imageLiteral(resourceName: "IMG1"),#imageLiteral(resourceName: "IMG2"),#imageLiteral(resourceName: "IMG3")]
    //表示する画像の配列番号
    var dispimageno = 0
    //画像を配列から取得して表示するメソッド
    func dispimage() {
        let name = imageindex[dispimageno]
        images.image = name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //最初の画像を表示しておく
        images.image = imageindex[0]
        playbutton.setTitle("再生", for: .normal)
        
    }
    
    //再生アクション(実装途中)
    //
    var timer: Timer!
    
    
    @objc func updatetimer(){
        
        if dispimageno < imageindex.count-1{
            dispimageno += 1
            dispimage()
        }
        else{dispimageno = 0
            dispimage()
        }
    }
    @IBAction func play(_ sender: Any) {
        
        
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updatetimer), userInfo: nil, repeats: true)
            playbutton.setTitle("停止", for: .normal)
            goBack.isEnabled = false
            goNext.isEnabled = false
            updatetimer()
        }
            
        else{
            self.timer.invalidate()
            timer = nil
            playbutton.setTitle("再生", for: .normal)
            goBack.isEnabled = true
            goNext.isEnabled = true
        }
    }
    //進むアクション
    @IBAction func goNext(_ sender: Any) {
        
        if dispimageno < imageindex.count-1{
            dispimageno += 1
            dispimage()
        }
        else{dispimageno = 0
            dispimage()
        }
    }
    //戻るアクション
    @IBAction func goBack(_ sender: Any) {
        if dispimageno > 0{
            dispimageno -= 1
            dispimage()
        }
        else{dispimageno = imageindex.count-1
            dispimage()}
    }
    //進む戻るはそれぞれ逆の処理をさせる。
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

