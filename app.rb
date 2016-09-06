require 'pry'
require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "lib/team_data"

get "/" do
  "<h1>The LACKP Homepage<h1>"
  # whatsup?
end

get "/teams" do
  @teams = TeamData.to_h
  erb :'teams/index'
end

get "/teams/:team_name" do

  @teams = TeamData.to_h
  @name = params[:team_name]
  erb :'players/index'
end

get "/positions" do
  @teams = TeamData.to_h
  erb :'positions/index'
end

get "/positions/:position" do
  @teams = TeamData.to_h
  @name = params[:position]
  erb :'position/index'
end
