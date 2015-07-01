# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit

  
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    #attr_reader :health_points, :attack_power
    def initialize
      # @health_points = 60
      # @attack_power = 10
      super(60, 10)
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
    

end
