
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
    enemy.damage(@attack_power)

  end
  

  


end