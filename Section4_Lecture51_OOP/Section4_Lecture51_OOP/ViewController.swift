import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var monsterHpLabel: UILabel!
    @IBOutlet weak var knightHpLabel: UILabel!
    @IBOutlet weak var monsterAttackButton: UIButton!
    @IBOutlet weak var knightAttackButton: UIButton!

    
    var knight: Player!
    var monster: Enemy!
    var game: Game!
    var hp: Int!
    var ap: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startGame()
    }
    
    func startGame() {
        hp = Int(arc4random_uniform(19)) + 1
        ap = Int(arc4random_uniform(3)) + 1
        monsterHpLabel.text = "\(hp) HP"
        knightHpLabel.text = "\(hp) HP"
        knight = Player(name: "Sir Sir", hp: hp, attackPower: ap)
        monster = Enemy(name: "ORK", hp: hp, attackPower: ap)
        game = Game(playerOne: knight, playerTwo: monster, vc: self)
        winnerLabel.text = "Tap ATTACK!"
    }
    
    @IBAction func onMonsterAttack(sender: AnyObject) {
        knight.attack(monster.attackPower)
        game.updateHp(knight)
    }
    
    @IBAction func onKnightAttack(sender: AnyObject) {
        monster.attack(knight.attackPower)
        game.updateHp(monster)
    }

}