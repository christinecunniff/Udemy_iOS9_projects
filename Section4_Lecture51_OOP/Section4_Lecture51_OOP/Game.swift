import Foundation

class Game: NSObject {
    
    private var _playerOne: Player!
    private var _playerTwo: Enemy!
    private var _vc: ViewController
    
    init(playerOne: Player, playerTwo: Enemy, vc: ViewController) {
        self._playerOne = playerOne
        self._playerTwo = playerTwo
        self._vc = vc
    }
    
    func restartGame() {
        self._vc.startGame()
    }
    
    func updateWinnerLabel(message: String) {
        self._vc.winnerLabel.text = message
    }
    
    func updateHp(character: Character) {
        if !character.isAlive {
            self.updateWinnerLabel("\(character.name) LOSES!")
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(Game.restartGame), userInfo: nil, repeats: false)
        } else {
            self._vc.knightHpLabel.text = "\(_playerOne.hp)"
            self._vc.monsterHpLabel.text = "\(_playerTwo.hp)"
            disableAttackButtons()
        }
    }
    
    func disableAttackButtons() {
        self._vc.monsterAttackButton.enabled = false
        self._vc.knightAttackButton.enabled = false
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(Game.enableAttackButtons), userInfo: nil, repeats: false)
    }
    
    func enableAttackButtons() {
        self._vc.monsterAttackButton.enabled = true
        self._vc.knightAttackButton.enabled = true
    }
}