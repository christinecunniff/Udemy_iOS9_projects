import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var heartImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imgArray = [UIImage]()
        for var x = 1; x <= 4; x += 1 {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        monsterImage.animationImages = imgArray
        monsterImage.animationDuration = 0.8
        monsterImage.animationRepeatCount = 0
        monsterImage.startAnimating()
    }
    
    
}

