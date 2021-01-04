import UIKit
class ViewController: UIViewController {
    //outletの接続
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextImage: UIButton!
    @IBOutlet weak var backImage: UIButton!
    
    
    //配列に指定するindex番号を宣言
    var nowIndex:Int=0
    //スライドショーに指定するタイマーを宣言
    var timer: Timer!
    //スライドショーさせる画像の配列を宣言
    var imageArray:[UIImage]=[UIImage(named:"img1.jpeg")!,UIImage(named:"img2.jpeg")!,UIImage(named:"img3.jpeg")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func slideShowButton(_ sender: Any) {
        imageView.isUserInteractionEnabled=true
        //再生中か停止しているかを判定
        if (timer == nil){
            //再生時の処理を実装
            //タイマーをセットする
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            //ボタンの名前を停止に変える
            startButton.setTitle("停止", for: .normal)
            //進む・戻るボタンを無効にする
            nextImage.isEnabled = false
            backImage.isEnabled = false
        }else{
            //停止時の処理を実装
            //タイマーを停止する
            timer.invalidate()
            //タイマーを削除しておく(timer.invalidateだけだとtimerがnilにならないため)
            timer=nil
            //ボタンの名前を再生に直しておく
            startButton.setTitle("再生", for: .normal)
            //進む・戻るボタンを有効にする
            nextImage.isEnabled = true
            backImage.isEnabled = true
        }
    }
    @objc func changeImage(){
    //indexを増やして表示する画像を切り替える
    nowIndex += 1
    
    //indexが表示予定の画像の数と同じ場合
    if (nowIndex == imageArray.count){
        //indexを一番最初の数字に戻す
        nowIndex = 0
        }
    //indexの画像をstoryboardの画像にセットする
    imageView.image = imageArray[nowIndex]
    }
    @IBAction func backImage(_ sender: Any) {
        if nowIndex == 0{
            nowIndex = 2
        }else{
            nowIndex -= 1
        }
        imageView.image = imageArray[nowIndex]
    }
    @IBAction func nextImage(_ sender: Any) {
        if nowIndex == 2{
            nowIndex = 0
        }else{
            nowIndex += 1
        }
        imageView.image = imageArray[nowIndex]
        }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        }
    
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
            let zoomViewController:zoomViewController = segue.destination as! zoomViewController
            zoomViewController.image=imageArray[nowIndex]
            //タイマーを停止する
            timer.invalidate()
            //タイマーを削除しておく(timer.invalidateだけだとtimerがnilにならないため)
            timer=nil
            //ボタンの名前を再生に直しておく
            startButton.setTitle("再生", for: .normal)
            //進む・戻るボタンを有効にする
            nextImage.isEnabled = true
            backImage.isEnabled = true
            }
        }
 
