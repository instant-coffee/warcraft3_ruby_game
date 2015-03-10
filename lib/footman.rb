# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  attr_reader :health_points, :attack_power

  def initialize
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy)
    enemy.damage(attack_power)
  end

  def damage(attack_power)
    @health_points = @health_points -= attack_power
  end

end
