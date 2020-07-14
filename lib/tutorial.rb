
class Tutorial

  def initialize(tutorial)
    @tutorial = tutorial
  end

  def continue_rules
    puts "Hit 'Enter' or 'Return' once to continue, when you're ready"
    gets
  end

  def start_tutorial
    puts "------------------1------------------"
    puts "So you've decided to play BATTLESHIP."
    puts "Congratulations!"
    puts "You're on your way to becoming a"
    puts "captain of industry, or at least the"
    puts "commander in charge of a small fleet!"
    puts "But first, you're going to need to"
    puts "learn the ropes (yes, our modern"
    puts "warships still use ropes!)."
    puts "First things's first though, please"
    puts "adjust your terminal so you can see"
    puts "30 lines.  At the top it of your"
    puts "terminal it should say 'numberX30'"
    puts "--*---*---*---*---*---*---*---*---*--"
    sleep(5)
    continue_rules
    puts " "
    puts "------------------2------------------"
    puts "Battleship consists of two players"
    puts "each taking turns attempting to sink"
    puts "the other's ship. The problem is,"
    puts "you can't see where their ships are!"
    puts "Luckily, they can't see where yours"
    puts "are either!"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------3------------------"
    puts "After being asked your name you will"
    puts "be presented with your board."
    puts "It looks just like this:"
    puts "------------------------------------"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "*COMPUTER*"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . . . . |"
    puts "C . . . . |"
    puts "D . . . . |"
    puts "          "
    puts "-----------"
    puts "**PLAYER**"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . . . . |"
    puts "C . . . . |"
    puts "D . . . . |"
    puts "          "
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------4------------------"
    puts "You are in command of two ships, the"
    puts "valiant Cruiser, and the nobel Submarine."
    puts "The Cruiser takes up three(3) spaces,"
    puts "and the Submarine takes up two(2)."
    puts "They can only be placed on the board"
    puts "horizontally, or vertically, and they"
    puts "*cannot overlap*. For those trying to"
    puts "be sneaky, you should know you are"
    puts "also unable to place your ships"
    puts "diagonally or off the grid!"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------5------------------"
    puts "After you've started the game and seen"
    puts "the board, we're going to ask you to"
    puts "place your Cruiser (we named our's 'Tom'."
    puts "Think up a fun name for yours!)."
    puts "Don't forget! Your Cruiser is three(3)"
    puts "spaces long, so you'll need three"
    puts "*consecutive* coordinates!"
    puts "That will look like this:"
    puts "------------------------------------"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "Now, where would you like your ship to go? Remember"
    puts "1) The ship can't be diagonal"
    puts "2) The ship can't overlap any other ship"
    puts "3) You've gotta make sure it spans the"
    puts "length of the ship, no more, no less."
    puts "ex: a1, a2, a3"
    puts "------------------------------------"
    puts "So, where's it gonna go?"
    puts "   "
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------6------------------"
    puts "Next, we'll show you how the board"
    puts "looks now that you've placed your Cruiser:"
    puts "------------------------------------"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "Ok, here is where your Cruiser has been placed"
    puts "-------------------------------"
    puts "**PLAYER**"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . S S S |"
    puts "C . . . . |"
    puts "D . . . . |"
    puts "          "
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "------------------------------------"
    puts "You'll note that the coordinates that"
    puts "you entered now have the letter 'S'"
    puts "where the '.' used to be! That means"
    puts "your ship is now sitting in that"
    puts "position! You've done it!"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------7------------------"
    puts "Next, we'll ask you to place your"
    puts "Submarine (which we personally call"
    puts "'Renée', but you can think up your"
    puts "own fun names on your own. It raises"
    puts "the stakes!). The Submarine is only"
    puts "two(2) spaces long, so you'll only"
    puts "need two consecutive coordinates."
    puts "Don't forget! You can place your"
    puts "ships horizontally too! Placing your"
    puts "Submarine will look like this:"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------8------------------"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "Here's the board with your cruiser on there"
    puts "Obviously we won't show you COMPUTER's ship..."
    puts "It's not gonna be that easy."
    puts "------------------------------------"
    puts "Ok, here's the board..."
    puts "*COMPUTER*"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . . . . |"
    puts "C . . . . |"
    puts "D . . . . |"
    puts "-----------------"
    puts "**PLAYER**"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . S S S |"
    puts "C . . . . |"
    puts "D . . . . |"
    puts "Now let's add your Submarine!"
    puts "where would you like that to go?"
    puts "Remember, it only has 2 spaces"
    puts "So, where's it gonna go?"
    puts "   "
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------9------------------"
    puts "Next, we'll show you how the board"
    puts "looks now that you've placed your"
    puts "Submarine:"
    puts "------------------------------------"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "Ok, here's the board..."
    puts "*COMPUTER*"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . . . . |"
    puts "C . . . . |"
    puts "D . . . . |"
    puts "-----------------"
    puts "**PLAYER**"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . S S S |"
    puts "C S . . . |"
    puts "D S . . . |"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "------------------------------------"
    puts "Once again, the coordinates that you"
    puts "entered now have the letter 'S' where"
    puts "the '.' used to be! Your Submarine"
    puts "has been placed! You've done it again!"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------10------------------"
    puts "Now the fun begins. It is randomly"
    puts "determined who goes first, either you"
    puts "or the computer, but when it is your"
    puts "turn, you're going to 'fire' at the"
    puts "computer's ships."
    puts "Don't forget! You don't know where"
    puts "their ships are, just like they don't"
    puts "know where your ships are! Because of"
    puts "that, we will show you a print out of"
    puts "your ships, and the coordinates"
    puts "you've already 'fired' upon."
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------11------------------"
    puts "Before any shots are fired, that will"
    puts "look like this:"
    puts "------------------------------------"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "*COMPUTER*"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . . . . |"
    puts "C . . . . |"
    puts "D . . . . |"
    puts "-----------"
    puts "**PLAYER**"
    puts "  1 2 3 4 |"
    puts "A . . . . |"
    puts "B . S S S |"
    puts "C S . . . |"
    puts "D S . . . |"
    puts "          "
    puts "Where would you like to fire first?"
    puts "Remember, plese give us a coordinate in this"
    puts "in this format: 'A2' OR 'D3'"
    puts "     "
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------12------------------"
    puts "When you've hit one of the computer's"
    puts "ships, the '.' on their board will"
    puts "turn into an 'H', for 'Hit!'."
    puts "When you've hit every part of the"
    puts "computer's ship, the 'H's will be"
    puts "replaced with 'X's, indicating that"
    puts "you've sunk their ship! If you happen"
    puts "to miss their ships, the '.' will be"
    puts "replaced with an 'M', for 'Miss'."
    puts "You'll see this same pattern on your"
    puts "board as the computer attempts to"
    puts "sink your ships."
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------13------------------"
    puts "Here is what a game 4 turns in"
    puts "could look like:"
    puts "------------------------------------"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "*COMPUTER*"
    puts "  1 2 3 4 |"
    puts "A M . . H |"
    puts "B . . . . |"
    puts "C . X . . |"
    puts "D . X . . |"
    puts "-----------"
    puts "**PLAYER**"
    puts "  1 2 3 4 |"
    puts "A M . M . |"
    puts "B . S H S |"
    puts "C S . M . |"
    puts "D S . . . |"
    puts "~~~~~~~~~~~~~~example~~~~~~~~~~~~~~~"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts " "
    puts "------------------14------------------"
    puts "The game will continue on like this"
    puts "until one side's ships have both been"
    puts "sunk. When that occurs, you'll know"
    puts "whether or not you've truly learned"
    puts "the ropes, or if you maybe need to"
    puts "try your luck, and try again."
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    sleep(5)
    continue_rules
    puts "------------------------------------"
    puts "So, now that you've learned how to play, are you game?"
    puts "Can you sink our BATTLESHIPS?"
    puts "------------------------------------"
    puts "--*---*---*---*---*---*---*---*---*--"
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    p " "
    continue_rules
  end
end

# rules = Tutorial.new("go")
# rules.start_tutorial
#
