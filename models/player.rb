require_relative "../lib/team_data"
require 'pry'

class Player
  attr_reader :name, :position, :team_name
  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    players_array = []
    TeamData.to_h.each do |team, player_info|
      player_info.each do |position, name|
        players_array << Player.new(name, position, team)
      end
    end
  end
end
