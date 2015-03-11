class SiegeEngine < Unit

  def initialize(health_points=400, attack_power=50)
    super
  end

  def attack!(enemy_unit)
    if enemy_unit.class == SiegeEngine
      enemy_unit.damage( attack_power )
    elsif enemy_unit.class == Barracks
      enemy_unit.damage((attack_power * 2))
    else
      false
    end
  end
    
end
