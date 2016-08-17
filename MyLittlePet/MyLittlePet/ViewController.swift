import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImage: MonsterImg!
    @IBOutlet weak var foodImage: DragImage!
    @IBOutlet weak var heartImage: DragImage!
    @IBOutlet weak var penaltyOneImg: UIImageView!
    @IBOutlet weak var penaltyTwoImg: UIImageView!
    @IBOutlet weak var penaltyThreeImg: UIImageView!
    
    let DIM_ALPHA: CGFloat = 0.2
    let OPAQUE: CGFloat = 1.0
    let MAX_PENALTIES = 3
    
    var penalties = 0
    var timer: NSTimer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodImage.dropTarget = monsterImage
        heartImage.dropTarget = monsterImage
        
        penaltyOneImg.alpha = DIM_ALPHA
        penaltyTwoImg.alpha = DIM_ALPHA
        penaltyThreeImg.alpha = DIM_ALPHA
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(itemDroppedOnCharacter), name: "onTargetDropped", object: nil)
        
        startTimer()
    }
    
    func itemDroppedOnCharacter(notif: AnyObject) {
        
    }
    
    func startTimer() {
        if timer != nil {
            timer.invalidate()
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(changeGameState), userInfo: nil, repeats: true)
    }
    
    func changeGameState() {
        
        penalties += 1
        
        if penalties == 1 {
            penaltyOneImg.alpha = OPAQUE
            penaltyTwoImg.alpha = DIM_ALPHA
        } else if penalties == 2 {
            penaltyTwoImg.alpha = OPAQUE
            penaltyThreeImg.alpha = DIM_ALPHA
        } else if penalties >= 3 {
            penaltyThreeImg.alpha = OPAQUE
        } else {
            penaltyOneImg.alpha = DIM_ALPHA
            penaltyTwoImg.alpha = DIM_ALPHA
            penaltyThreeImg.alpha = DIM_ALPHA
        }
        
        if penalties >= MAX_PENALTIES {
            gameOver()
        }
    }
    
    func gameOver() {
        timer.invalidate()
        monsterImage.playDeathAnimation()
    }
}
