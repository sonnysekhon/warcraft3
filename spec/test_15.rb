require_relative 'spec_helper'

describe Unit do

  before :each do
    @barrack = Barracks.new
    @seige_engine = SeigeEngine.new
    @seige_engine_enemy = SeigeEngine.new
    @footman = Footman.new
    @peasant = Peasant.new
  end

  describe "#attack" do
    it "should reduce barrack's HP by 100" do
      @seige_engine.attack!(@barrack)
      expect(@barrack.health_points).to eq(400)
    end
    it "should reduce seige engine's HP by 50" do
      @seige_engine.attack!(@seige_engine)
      expect(@seige_engine.health_points).to eq(350)
    end
    it "should reduce footman's HP by 0" do
      @seige_engine.attack!(@footman)
      expect(@footman.health_points).to eq(60)
    end
    it "should reduce peasant's HP by 0" do
      @seige_engine.attack!(@peasant)
      expect(@peasant.health_points).to eq(35)
    end
  end
end
