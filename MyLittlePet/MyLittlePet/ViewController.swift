import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImage: MonsterImg!
    @IBOutlet weak var foodImage: DragImage!
    @IBOutlet weak var heartImage: DragImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodImage.dropTarget = monsterImage
        heartImage.dropTarget = monsterImage
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(itemDroppedOnCharacter), name: "onTargetDropped", object: nil)
    
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        print("ITEM DROPPED ON CHARACTER")
    }
}
