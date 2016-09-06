require_relative "../lib/team_data"
require_relative "./player"

class Team
  attr_reader :name

  @@team = []

  def self.all
    @@team
  end

  def initialize(name)
    @name = name
    @@team << self
  end

  def players
    player_array = Player.all
    team_array = []
    player_array.each do |player|
      if player.team_name == @name
        team_array << player
      end
    end
    return team_array
  end
end
