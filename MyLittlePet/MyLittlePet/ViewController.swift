import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImage: UIImageView!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var heartImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageArray = [UIImage]()
        for image in imageArray {
            let img = UIImage(named: "idle\(image).png")
            imageArray.append(img!)
        }
        
        monsterImage.animationImages = imageArray
        monsterImage.animationDuration = 0.8
        monsterImage.animationRepeatCount = 0
        monsterImage.stopAnimating()
    }
    
    
}

