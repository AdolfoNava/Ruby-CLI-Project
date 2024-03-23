require "./player.rb"

class TeamManager
  def initialize
    @players = []
  end

  def main_menu
    loop do
      pp "Please select from the available options in the Team management system"
      pp "1. View Player Roster"
      pp "2. Add new player to Roster"
      pp "3. Remove Player from Roster"
      pp "4. Exit application"
      choice = gets.chomp.to_i
      case choice 
      when 1
        self.display_players
      when 2
        self.add_player
      when 3
        self.remove_player
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
    pp "What is the position of the player #{name}"
    position = gets.chomp
    salary = "test"
    while (!salary.instance_of? Integer)
    pp "What is the salary of the player #{name}?"
      begin
      salary = Integer(gets.chomp)
      rescue 
      pp "Failed to input the correct value please try again"
      end
    end
    @players << Player.new(name,number,position,salary)
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
      @players.sort_by {|player| [player.name, player.number, player.position, player.costs]}
      @players.each do |player|
        pp "#{player.name}, #{player.number}, #{player.position}, #{player.costs}"
      end
    when 2
      @players.sort_by {|player| [player.number, player.name, player.position, player.costs]}
      @players.each do |player|
        pp "#{player.name}, #{player.number}, #{player.position}, #{player.costs}"
      end
    when 3
      @players.sort_by {|player| [player.position, player.name, player.number, player.costs]}
      @players.each do |player|
        pp "#{player.name}, #{player.number}, #{player.position}, #{player.costs}"
      end
    when 4
      @players.sort_by {|player| [player.costs, player.name, player.number, player.position]}
      @players.each do |player|
        pp "#{player.name}, #{player.number}, #{player.position}, #{player.costs}"
      end
    else
      pp "Please enter a value between 1-4 now returning to the main menu"
    end
  end
  def remove_player
    for player in @players
    puts "#{player.name}, #{player.number}, #{player.position}, #{player.costs}" 
    end
    pp "Which player do you want to remove please type the number of the player you want to delete from the roster?"
    choice = gets.chomp.to_i
    @players.delete_if{|player| player.number == choice}
    pp "Player(s) with the number #{choice} is deleted from the roster."
  end
end
