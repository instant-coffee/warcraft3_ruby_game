require_relative 'spec_helper'

# Introduce a SiegeEngine Unit. The SiegeEngine is very effective against buildings such as the Barracks. It is however ineffective against other units (can't attack them, as though they were dead).

# So unlike with Footman (whose attacks do a fraction of the damage they normally would), the SiegeEngine does 2x the damage against the Barracks

# Also, Siege Engines can attack other siege engines even though they cannot attack any other units (such as Peasants or Footmen)

# Stats:

# AP: 50
# HP: 400
# Cost: 200 gold, 60 lumber, 3 food
# Notes:

# You will need to require the seige_engine.rb file in spec_helper.rb

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
    @siege_engine2 = SiegeEngine.new
    @barrack = Barracks.new
    @footman = Footman.new
    @peasant = Peasant.new
  end

  it "should be a Unit" do
    expect(@siege_engine).to be_an_instance_of(SiegeEngine)
    # But should also be a Unit
    expect(@siege_engine).to be_a(Unit)
  end

  it "should inflict 2x damage on Barracks" do
    @siege_engine.attack!(@barrack)
    expect(@barrack.health_points).to eq(400)
  end

  it "can attack other siege_engines" do
    @siege_engine.attack!(@siege_engine2)
    expect(@siege_engine2.health_points).to eq(350)
  end

  it "cannot attack footman" do
    expect(@siege_engine.attack!(@footman)).to be_falsey
  end

  it "cannot attack peasant" do
    expect(@siege_engine.attack!(@peasant)).to be_falsey
  end

end

describe Barracks do 

  before :each do
    @barrack = Barracks.new
  end

  describe "#build_siege_engine" do

    it "costs 200 gold" do
      @barrack.build_siege_engine
      expect(@barrack.gold).to eq(800) # starts at 1000
    end

    it "costs 60 lumber" do
      @barrack.build_siege_engine
      expect(@barrack.lumber).to eq(440) # starts at 500
    end

    it "costs 3 food" do
      @barrack.build_siege_engine
      expect(@barrack.food).to eq(77) # starts at 80
    end

    it "produces a siege_engine unit" do
      siege_monster = @barrack.build_siege_engine
      expect(siege_monster).to be_an_instance_of(SiegeEngine)
    end

  end


end