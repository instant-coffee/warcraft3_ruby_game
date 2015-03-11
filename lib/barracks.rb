class Barracks < Unit

  attr_accessor :lumber

  def initialize 
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def can_build_siege_engine?
    if (gold >= 200) && (lumber >= 60) && (food >= 3)
      true
    else
      false
    end
  end

  def build_siege_engine
    if can_build_siege_engine?
      @gold = @gold -= 200
      @lumber = @lumber -= 60
      @food = @food -= 3
      SiegeEngine.new
    end
  end

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

  def train_peasant
    if can_train_peasant?
      @gold = @gold -= 90
      @food = @food -= 5
      Peasant.new
    end
  end


end
