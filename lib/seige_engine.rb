

class SeigeEngine < Unit

  
    def initialize
      super(400, 50)
    end
    def attack!(enemy)

    if enemy.is_a?(Barracks)
      enemy.damage(@attack_power * 2)
    elsif enemy.is_a?(SeigeEngine)
      enemy.damage(@attack_power)
    else
      raise DeadError, "Attacker is dead!" if dead?
    raise DeadError, "Victim is dead!" if enemy.dead?
      
    end

  end
    

end