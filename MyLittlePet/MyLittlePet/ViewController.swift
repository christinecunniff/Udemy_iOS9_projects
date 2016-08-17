import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImage: MonsterImg!
    @IBOutlet weak var foodImage: DragImage!
    @IBOutlet weak var heartImage: DragImage!
    @IBOutlet weak var penaltyOneImg: UIImageView!
    @IBOutlet weak var penaltyTwoImg: UIImageView!
    @IBOutlet weak var penaltyThreeImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodImage.dropTarget = monsterImage
        heartImage.dropTarget = monsterImage
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(itemDroppedOnCharacter), name: "onTargetDropped", object: nil)
    
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        
    }
}
