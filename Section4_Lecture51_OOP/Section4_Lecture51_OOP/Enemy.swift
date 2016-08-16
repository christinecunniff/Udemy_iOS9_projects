import Foundation

class Enemy: Character {
    
    private var _name = "Enemy"
    
    override var name: String {
        return _name
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        
        _name = name
    }
}