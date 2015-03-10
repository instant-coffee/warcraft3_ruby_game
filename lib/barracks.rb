class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    true
    @gold = @gold -= 135
    @food = @food -= 2
  end

  def train_footman
    Footman.new if can_train_footman?
  end

end
