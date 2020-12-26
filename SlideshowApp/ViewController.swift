//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 井手和宣 on 2020/12/22.
//

import UIKit

class ViewController: UIViewController {
    //バンドルした画像ファイルを読み込み
    
    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    var image1:UIImage!
    var image2:UIImage!
    
    var flg = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        image1=UIImage(named:"img1")
        image2=UIImage(named:"img2")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapped(_ sender: Any) {
        if flg{
            imageView.image=image1
        }
        else{
            imageView.image=image2
            flg=true
        }
    }
}
