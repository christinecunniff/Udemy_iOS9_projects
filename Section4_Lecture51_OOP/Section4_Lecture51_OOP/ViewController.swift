import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var playerOneHp: UILabel!
    @IBOutlet weak var playerTwoHp: UILabel!
    
    var playerOne: PlayerOne!
    var playerTwo: PlayerTwo!
    var winnerMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerOne = PlayerOne(startingHp: 100, attackPower: 10)
        playerTwo = PlayerTwo(startingHp: 100, attackPower: 10)
        
        playerOneHp.text = "\(playerOne.hp) HP"
        playerTwoHp.text = "\(playerTwo.hp) HP"
    }
    
    @IBAction func onPlayerOneAttack(sender: AnyObject) {
        if playerTwo.attack(playerOne.attackPower) {
            playerTwoHp.text = "\(playerTwo.hp) HP"
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ViewController.onPlayerTwoAttack(_:)), userInfo: nil, repeats: false)
        }
        
        if !playerTwo.isAlive {
            winnerLabel.text = "Player 2 defeated!!!"
            playAgainButton.hidden = false
        }
    }
    
    @IBAction func onPlayerTwoAttack(sender: AnyObject) {
        if playerOne.attack(playerTwo.attackPower) {
            playerOneHp.text = "\(playerOne.hp) HP"
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ViewController.onPlayerOneAttack(_:)), userInfo: nil, repeats: false)
        }
        
        if !playerOne.isAlive {
            winnerLabel.text = "Player 1 defeated!!!"
        }
    }

    @IBAction func onPlayAgainTapped(sender: AnyObject) {
        playAgainButton.hidden = true
    }
    
    
   
}