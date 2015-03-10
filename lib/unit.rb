class Unit

  attr_accessor :gold, :food, :attack_power
  attr_reader :health_points

  def initialize(health_points, attack_power = 0)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy_unit)
    self.dead? || enemy_unit.dead? ? false : enemy_unit.damage(attack_power)
  end

  def damage(attack_power)
    @health_points = @health_points -= attack_power
  end

  def dead?
    self.health_points <= 0 ? true : false
  end

end
