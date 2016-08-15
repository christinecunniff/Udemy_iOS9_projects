import Foundation

class PlayerOne: Character {

    private var _name = "Player One"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        
        _name = name
    }

}
