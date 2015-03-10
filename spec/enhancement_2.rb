require_relative 'spec_helper'

#unit can die

describe Unit do 

  before :each do
    @footman = Footman.new
  end

  before :each do
    @footman2 = Footman.new
  end

  describe "#dead?" do
    it "return true if unit health_points <= 0" do
      @footman.should_receive(:health_points).and_return(0)
      expect(@footman.dead?).to be_truthy
    end

    it "return flase if unit health_points > 0" do
    expect(@footman2.dead?).to be_falsey
    end
  end




end


