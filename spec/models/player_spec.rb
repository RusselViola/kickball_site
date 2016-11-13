require "spec_helper"

RSpec.describe Player do
  # Player specs go here.
let(:player) {Player.new("Bart Simpson", "Catcher", "Simpson Slammers")}

  describe "Player.new" do
    it "should create a player with a name, position, and team name" do
      expect(player.name).to eq("Bart Simpson")
      expect(player.position).to eq("Catcher")
      expect(player.team_name).to eq("Simpson Slammers")
    end
  end

  
end
