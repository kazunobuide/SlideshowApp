//
//  zoomViewController.swift
//  SlideshowApp
//
//  Created by 井手和宣 on 2020/12/26.
//

import UIKit

class zoomViewController: UIViewController {
    var image: UIImage?
    @IBOutlet weak var zoomImage: UIImageView!
 
    
    //受け取るためのプロパティ（変数）を宣言しておく
    override func viewDidLoad() {
        super.viewDidLoad()
        zoomImage.image = image
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
