require_relative 'spec_helper'

describe Unit do 

  before :each do 
    @dead_unit = Unit.new(0, 100)
    @zombie_killer = Unit.new(100, 100)
  end

  describe "dead men dont attack others whilst wearing plaid" do 
    it "@dead_unit is dead and can't attack" do 
      @dead_unit.attack!(@zombie_killer)
      expect(@dead_unit.attack!(@zombie_killer)).to be_falsey
    end
  end

  describe "can't kill whats already dead" do 
    it "cannot attack a dead unit" do 
      @zombie_killer.attack!(@dead_unit)
      expect(@zombie_killer.attack!(@dead_unit)).to be_falsey
    end
  end

end