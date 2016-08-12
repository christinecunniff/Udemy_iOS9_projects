import Foundation

class PlayerOne {

    private var _hp: Int = 100
    private var _attackPower: Int = 10
    private var _name: String = "Player"
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var name: String {
        get {
            return _name
        }
    }

    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPower: Int) {
        self._hp = startingHp
        self._attackPower = attackPower
    }
    
    func attack(attackPower: Int) ->Bool {
        self._hp -= attackPower
        
        return true
    }
}
