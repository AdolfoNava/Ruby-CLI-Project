require "player.rb"

class TeamManager
  def initialize
    @players = []
  end

  def main_menu
    loop do
      pp "Please select from the available optionsin the Team management system"
      pp "1. View Player Roster"
      pp "2. Add new player to Roster"
      pp "3. Remove Player from Roster"
      pp "4. Exit application"
      case choice 
      when 1
        view_roster()
      when 2
        add_player()
      when 3
        display_players()
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
    number = "test"
    while (!number.instance_of? Integer)
    pp "What is the number of the player #{name}? "
      begin
      number = Integer(gets.chomp)
      rescue 
      pp "Failed to input the correct value please try again"
      end
    end
    salary = "test"
    while (!salary.instance_of? Integer)
    pp "What is the salary of the player?"
      begin
      salary = Integer(gets.chomp)
      rescue 
      pp "Failed to input the correct value please try again"
      end
    end
  end
  def display_players
    pp "Please select the version sort you want to have the players be displayed in"
    pp "1. Name"
    pp "2. Number"
    pp "3. Position"
    pp "4. Salary"
    choice = gets.chomp.to_i
    case choice
    when 1
    when 2
    when 3
    when 4
    else
      pp "Please enter a value between 1-4"
    end
  end
end
