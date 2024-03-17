require "player.rb"

class TeamManager
  def initialize
    @players = []
    funds = 1000000
  end

  def main_menu
    loop do
      pp "Please select from the available optionsin the Team management system"
      pp "1. View Player Roster"
      pp "2. Add new player"
      pp "4. Exit application"
      case choice 
      when 1
        view_roster
      when 2
        add_player
      when 4
        break;
      else 
        pp "Failed menu option. Please try again."
      end
    end
  end
  def add_player
   pp "What is the name of the player? "
   name = gets.chomp
   number = "-1"
    while (!number.instance_of? Integer)
      pp "What is the number of the player #{name}? "
    number = Integer(gets.chomp)
    end
  end
end
