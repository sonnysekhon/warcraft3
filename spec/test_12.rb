require_relative 'spec_helper'


describe Unit do

  before :each do
    # @unit = Unit.new
    @dead_unit = Unit.new(0, 0)
    @footman = Footman.new
    
    
  end

  describe "#dead?" do
    it "should check if a unit is dead" do
      expect(@footman.dead?).to eq(false)
      #expect(@footman.dead?).to eq(false)
    end
  end

  describe "#attack if dead?" do
    it "should not attack if dead" do
      expect { @dead_unit.attack!(@footman) }.to raise_error DeadError, "Attacker is dead!"
    end
    it "should not attack a dead unit" do
      expect { @footman.attack!(@dead_unit) }.to raise_error DeadError, "Victim is dead!"
    end
  end


  # describe "#attack if dead?" do
  #   it "should not attack if dead" do
  #     @unit.attack!().to eq("Can't attack if dead")
  #   end
  # end



  # describe "#attack" do
  #    it "should be alive to be able to attack" do
  #    ###setup
  #      agressor = Unit.new(0, 100)
  #      victim = Unit.new(100, 100)
  #      full_health = victim.health_points
  #      agressor.health_points = 0
  #      agressor.attack!(victim)
  #      #expectations
  #      expect(victm.health_points).to eq(full_health)
  #     end
  #   end
end