require_relative 'footman'



class Barracks

  attr_accessor :gold, :food, :health_points, :lumber
  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
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
  def train_seige_unit
    
    if can_train_seige_engine?
      @gold -= 200
      @food -= 3
      @lumber -=60
      SeigeEngine.new
    else
      nil
    end
    
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
    
  end
  def can_train_seige_engine?
    gold >= 200 && food >= 3 && lumber >= 60
    
  end

  def train_peasant
    if can_train_peasant? 
      @gold -= 90
      @food -= 5
      Peasant.new
    else
      nil
    end
  end

  def damage(ap)

    @health_points -= ap
    
  end


end
