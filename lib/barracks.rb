require_relative 'Footman'



class Barracks

  attr_accessor :gold, :food
  def initialize
    @gold = 1000
    @food = 80
  end
  
  def can_train_footman?
    gold >= 135 && food >= 2
    
  end

  def train_footman
    # gold(gold - 135)
    # food(food - 2)
    if can_train_footman? 
      @gold -= 135
      @food -= 2
      
      Footman.new
    else
      nil
    end
    
  end



end
