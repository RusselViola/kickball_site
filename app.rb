require "sinatra"
require_relative "models/player"
require_relative "models/team"
require 'pry'

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @teams = Team.all
  erb :teams
end

get "/teams/:team_name" do
  team = Team.new(params[:team_name])
  @team_name = team.name
  @players = team.players
  erb :team_name
end
