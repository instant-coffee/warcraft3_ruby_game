class Barracks < Unit

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
  end

##why does it work with a local variable??
  def can_train_footman?
    if (gold >= 135) && (food >= 2)
      @gold = @gold -= 135
      @food = @food -= 2
      true
    else
      false
    end
  end

  def train_footman
    Footman.new if can_train_footman?
  end

  def can_train_peasant?
    ((gold >= 90) && (food >= 5)) ? true : false
  end

  ###??? why does it have to be in this order to pass?
  def train_peasant
    if can_train_peasant?
      @gold = @gold -= 90
      @food = @food -= 5
      Peasant.new
    end
  end


end
