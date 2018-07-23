//
//  BIgViewController.swift
//  SlideshowApp
//
//  Created by HaseMac on 2018/07/23.
//  Copyright © 2018年 ryou.hasegawa. All rights reserved.
//

import UIKit

class BIgViewController: UIViewController {
    
    @IBOutlet weak var bigimage: UIImageView!
    //imageはUIimageということを宣言しておく
    var image: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bigimage.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
