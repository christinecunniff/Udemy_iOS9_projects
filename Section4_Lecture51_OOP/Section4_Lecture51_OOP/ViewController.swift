import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var playerOneHp: UILabel!
    @IBOutlet weak var playerTwoHp: UILabel!
    @IBOutlet weak var playerOneAttackButton: UIButton!
    @IBOutlet weak var playerTwoAttackButton: UIButton!
    
    var playerOne: Player!
    var playerTwo: Player!
    //var winnerMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerOne = Player(startingHp: 100, attackPower: 20)
        playerTwo = Player(startingHp: 150, attackPower: 15)
        
        playerOneHp.text = "\(playerOne.hp) HP"
        playerTwoHp.text = "\(playerTwo.hp) HP"
        
    }
    
    @IBAction func onPlayerOneAttack(sender: AnyObject) {
        if playerTwo.attack(playerOne.attackPower) {
            playerTwoHp.text = "\(playerTwo.hp) HP"
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ViewController.attackFinished), userInfo: nil, repeats: false)
            playerTwoAttackButton.enabled = false
        }
        
        if !playerTwo.isAlive {
            winnerLabel.text = "Player 2 defeated!!!"
        }
    }
    
    @IBAction func onPlayerTwoAttack(sender: AnyObject) {
        if playerOne.attack(playerTwo.attackPower) {
            playerOneHp.text = "\(playerOne.hp) HP"
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ViewController.attackFinished), userInfo: nil, repeats: false)
            playerOneAttackButton.enabled = false
        }
        
        if !playerOne.isAlive {
            winnerLabel.text = "Player 1 defeated!!!"
        }
    }

    @IBAction func onPlayAgainTapped(sender: AnyObject) {
       
        resetGame()
    }
    
    
    func attackFinished() {
        playerOneAttackButton.enabled = true
        playerTwoAttackButton.enabled = true
    }
    
    func resetGame() {
        winnerLabel.text = "Tap ATTACK!"
        playerOne = Player(startingHp: 100, attackPower: 20)
        playerTwo = Player(startingHp: 150, attackPower: 15)
        playerOneHp.text = "\(playerOne.hp) HP"
        playerTwoHp.text = "\(playerTwo.hp) HP"
    }
   
}