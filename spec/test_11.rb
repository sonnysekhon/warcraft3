require_relative 'spec_helper'


describe Footman do

  before :each do
    @footman = Footman.new
    @barrack = Barracks.new
  end

  describe "#attack" do
    it "should reduce barrack's HP by AP specified" do
      @footman.attack!(@barrack)
      expect(@barrack.health_points).to eq(495)
    end
  end

end