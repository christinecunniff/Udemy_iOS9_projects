import Foundation

class Player: Character {

    private var _name = "Player"
    
    override var name: String {
        return _name
    }

    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        
        _name = name
    }
}
