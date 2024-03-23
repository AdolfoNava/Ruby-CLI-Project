# Ruby-CLI-TeamManager

Use this repository as a template for your Ruby CLI (command line interface) project.

- Ruby version: `3.2.1`

Start the program with `ruby main.rb` command

This is a CLI program that is for making a collection of individual players and being able to see the players in different sorting ways from the four data attributes 
- name (doesn't check if it's proper)
- number (checks if it's a proper integer value)
- position (doesn't check if it's proper)
- costs (checks if it's a proper integer value)

## Main Menu
You start at the main menu that loops forever until you choose the following options
1. View Player Roster
2. Add a new player to the Roster
3. Remove a Player from the Roster
4. Exit application

### Display players
You will select the version sort you want to have the players displayed in
1. Name
2. Number
3. Position
4. Salary
### Add Player
Enter the values of the player in the order of name -> number -> position -> salary(costs)
There will be a check for integers but not for strings
### Remove Player
Enter the player number of the player that you want to remove after being shown all the players in the collection without having you try and remember it (it will delete duplicates as well)
