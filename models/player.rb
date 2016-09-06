require_relative "../lib/team_data"

class Player

  attr_accessor :name, :position, :team_name

  @@player = []

  def self.all
    @@player
  end

  def initialize (name,position,team_name)
    @name = name
    @position = position
    @team_name = team_name
    @@player << self
  end
end
