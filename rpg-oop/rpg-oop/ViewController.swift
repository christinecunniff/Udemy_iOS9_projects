import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var playerHpLabel: UILabel!
    @IBOutlet weak var enemyHpLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    @IBAction func onChestTapped(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

