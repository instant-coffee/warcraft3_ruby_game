class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
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

end
