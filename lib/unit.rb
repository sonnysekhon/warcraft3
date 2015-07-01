class DeadError < StandardError
end


class Unit
  attr_reader :health_points, :attack_power
  #attr_accessor :damage
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
    #@damage = damage
  end

  def damage(ap)

    @health_points -= ap
    
  end

  def attack!(enemy)

    if enemy.is_a?(Barracks)
      enemy.damage(@attack_power / 2)
    else
      raise DeadError, "Attacker is dead!" if dead?
    raise DeadError, "Victim is dead!" if enemy.dead?
      enemy.damage(@attack_power)
    end

  end
  
  def dead?
    @health_points <= 0
  end

  


end