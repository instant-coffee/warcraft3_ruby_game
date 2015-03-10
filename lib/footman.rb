# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit
  
  def initialize
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy_unit)
    if enemy_unit.class == Barracks
      enemy_unit.damage( attack_power/2.ceil )
    else
      enemy_unit.damage( attack_power )
    end
  end

end


# ((attack_power/2).ceil)