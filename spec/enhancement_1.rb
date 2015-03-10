require_relative 'spec_helper'

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  before :each do
    @footman = Footman.new
  end

  describe "barracks HP" do
    it "has 500 hp Yikes!" do
      @barracks.health_points
      expect(@barracks.health_points).to eq(500) 
    end
  end

  describe "footman vs barrack attack" do 
    it "attacks with half attack points" do
      @footman.attack!(@barracks)
      expect(@barracks.health_points).to eq(495)
    end
  end
    
  
  end

