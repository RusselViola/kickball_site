require_relative "../lib/team_data"
require_relative 'player'

class Team
  attr_reader :name
  def initialize(name)
    @name = name
    # @players = TeamData.to_h[:name]
  end

  def players
    team_players = []
    TeamData.to_h[@name].each do |position, player_name|
      team_players << Player.new(player_name, position, @team)
    end
    team_players
  end

  def self.all
  league_teams = []
    TeamData.to_h.each do |team, player_info|
    league_teams << Team.new(team)
    end
    league_teams
  end
end
