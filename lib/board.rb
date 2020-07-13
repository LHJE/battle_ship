require './lib/cell'
require './lib/ship'


class Board

  attr_accessor :row_a, :row_b, :row_c,:row_d,
                :a1, :a2, :a3, :a4,
                :b1, :b2, :b3, :b4,
                :c1, :c2, :c3, :c4,
                :d1, :d2, :d3, :d4, :my_hash,
                :cord_one, :cord_two, :cord_three,
                :user_width, :user_height, :row_amount

  attr_reader :cells1, :coordinates_list

  def initialize
    # We can change @coordinates_list (the (1..10).map) to make board any size and it works.
    # I can put ships in those new coordinates.
    # puts "How wide?"
    @user_width = 4
    # @user_height = gets.chomp!.to_i
    # @row_amount = ('a'..'z').find.with_index{ |letter, index| index == user_height-1}.upcase
    @coordinates_list = ('a'..'d').flat_map{ |letter| (1..user_width).map{ |number| "#{letter.upcase}#{number}"}}
    @coordinate_symbols = coordinates_list.join(" ").split(" ").map{ |coordinate| coordinate.to_sym}
    @cells1 = coordinates_list.collect{ |coord| coord = Cell.new(coord)}
    @my_hash = {}
    @cord_one = cord_one
    @cord_two = cord_two
    @cord_three = cord_three


      coordinates_list.collect{ |numbs| my_hash[numbs] = cells1.find{ |numb| numb.coordinate == numbs}}

  end

  def cells
    my_hash
  end


  def valid_coordinate?(coordinate)
    if coordinate.all?{ |numbers| cells.include? numbers} && coordinate.all?{ |numbers| cells[numbers].fired == 0}
      true
    else
      false
    end
  end


  def valid_placement?(ship, coordinate)
    row_a = cells.keys.to_a[0..3]
    row_b = cells.keys.to_a[4..7]
    row_c = cells.keys.to_a[8..11]
    row_d = cells.keys.to_a[12..15]
    rows = []
    rows << row_a
    rows << row_b
    rows << row_c
    rows << row_d
    col_1 = []
    col_1 << cells.keys.to_a[0]
    col_1 << cells.keys.to_a[4]
    col_1 << cells.keys.to_a[8]
    col_1 << cells.keys.to_a[12]
    col_2 = []
    col_2 << cells.keys.to_a[1]
    col_2 << cells.keys.to_a[5]
    col_2 << cells.keys.to_a[9]
    col_2 << cells.keys.to_a[13]
    col_3 = []
    col_3 << cells.keys.to_a[2]
    col_3 << cells.keys.to_a[6]
    col_3 << cells.keys.to_a[10]
    col_3 << cells.keys.to_a[14]
    col_4 = []
    col_4 << cells.keys.to_a[3]
    col_4 << cells.keys.to_a[7]
    col_4 << cells.keys.to_a[11]
    col_4 << cells.keys.to_a[15]

    split_numbs = coordinate.collect{ |coordinates| coordinates.chars}.flatten
    rows_index = split_numbs.select.with_index{ |chars, index| index.even? }
    colum_index = split_numbs.select.with_index{ |chars, index| index.odd? }

    # Below is the column numbers converted to actual numbers instead of strings
    colum_numbers = colum_index.collect{ |number| number.to_i}

    # alpha is an array of alphabet, rows_index is only the letters of the
    # coordinates, where colum_index is the numbers of each coordinate
    alpha = ("A".."Z").to_a
    index_of_letters_of_coordinates = rows_index.collect{ |letters| alpha.index(letters)}
    index_of_colum_cooordinates = colum_index.collect{ |number| colum_index[0] == number}   # This one is saying "assigned but unused variable"

    if self.valid_coordinate?(coordinate) == false
      false
    elsif coordinate.length == 0
      false
    elsif coordinate.any?{ |pair| not cells[pair].empty?}
      false
    # Checks if ship length is equal to coordinate length, then checks if the letters of the coordinates are consecutive, lastly checks if coordinates have 2 elements
    elsif ship.length == coordinate.length && index_of_letters_of_coordinates[0] + 1 == index_of_letters_of_coordinates[1] && coordinate.length == 2 && colum_numbers.all?{ |numbs| colum_numbers[0] == numbs} && coordinate.all?{ |pair| cells[pair].empty?}
      true
    # Checks if ship length is equal to coordinate length, then checks if the letters of the coordinates are consecutive, lastly checks if coordinates have 3 elements
    elsif ship.length == coordinate.length && index_of_letters_of_coordinates[0] + 1 == index_of_letters_of_coordinates[1] && index_of_letters_of_coordinates[1] + 1 == index_of_letters_of_coordinates[2] && coordinate.length == 3 && colum_numbers.all?{ |numbs| colum_numbers[0] == numbs} && coordinate.all?{ |pair| cells[pair].empty?}
      true
    elsif ship.length == coordinate.length && index_of_letters_of_coordinates[0] == index_of_letters_of_coordinates[1] && index_of_letters_of_coordinates[1] == index_of_letters_of_coordinates[2] && coordinate.length == 3 && colum_numbers[1] == colum_numbers[0] + 1 && colum_numbers[2] == colum_numbers[1] + 1
      true
      # This one below checks if the coordinates are 2 long, with same letters, different numbers
    elsif ship.length == coordinate.length && index_of_letters_of_coordinates[0] == index_of_letters_of_coordinates[1] && colum_numbers[0] == colum_numbers[0] + 1 && coordinate.length == 2 && coordinate.all?{ |pair| cells[pair].empty?}
      true
    elsif ship.length == coordinate.length && colum_numbers[0] == colum_numbers[1] -1 && ship.length == 2 && index_of_letters_of_coordinates[0] == index_of_letters_of_coordinates[1]
      true
    else
      false
    end

  end

  def place(ship, coordinate)
    x = 0
    if valid_placement?(ship, coordinate)
      while x != coordinate.length
        cells[coordinate[x]].place_ship(ship)
        x +=1
      end
    else
      puts "Coordinate is invalid.  Coordinates need to be consecutive, not overlapping another ship, and not diagonal."
    end
  end

  def valid_placement_for_sub(ship)
    @cord_one = cells.keys.last
    @cord_two = cells.keys.last
    until self.valid_placement?(ship, [@cord_one, @cord_two]) == true
      @cord_one = cells.keys.shuffle.last
      @cord_two = cells.keys.shuffle.last
      coordaintes2 = [@cord_one, @cord_two]
    end
    coordaintes2
  end

  def valid_placement_for_cruiser(ship)
    @cord_one = cells.keys.last
    @cord_two = cells.keys.last
    @cord_three = cells.keys.last
    until self.valid_placement?(ship, [@cord_one, @cord_two, @cord_three]) == true
      @cord_one = cells.keys.shuffle.last
      @cord_two = cells.keys.shuffle.last
      @cord_three = cells.keys.shuffle.last

      coordaintes3 = [@cord_one, @cord_two, @cord_three]
    end
    coordaintes3
  end

  def test
    alpha = ('a'..'z').find.with_index{ |letter, index| index == user_height-1}.upcase
    p alpha
  end

  def render(show=false, second=false)
    # row_(user_width) = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "#{user_input}"}
    row_a = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "A"}
    row_b = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "B"}
    row_c = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "C"}
    row_d = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "D"}

    # (1..user_width).each{ |number| print " #{number}"}
    # puts ""
    puts "  1 2 3 4 |"
    if show == false && second == false
      puts "A #{row_a.map { |cell| cell.render}.join(" ")} |"
      puts "B #{row_b.map { |cell| cell.render}.join(" ")} |"
      puts "C #{row_c.map { |cell| cell.render}.join(" ")} |"
      puts "D #{row_d.map { |cell| cell.render}.join(" ")} |"
    elsif show == true && second != true
      puts "A #{row_a.map { |cell| cell.render(true)}.join(" ")} |"
      puts "B #{row_b.map { |cell| cell.render(true)}.join(" ")} |"
      puts "C #{row_c.map { |cell| cell.render(true)}.join(" ")} |"
      puts "D #{row_d.map { |cell| cell.render(true)}.join(" ")} |"
    elsif show == true && second == true
      puts "A #{row_a.map { |cell| cell.render(true, true)}.join(" ")} |"
      puts "B #{row_b.map { |cell| cell.render(true, true)}.join(" ")} |"
      puts "C #{row_c.map { |cell| cell.render(true, true)}.join(" ")} |"
      puts "D #{row_d.map { |cell| cell.render(true, true)}.join(" ")} |"
    elsif show == false && second == true
      puts "A #{row_a.map { |cell| cell.render(false, true)}.join(" ")} |"
      puts "B #{row_b.map { |cell| cell.render(false, true)}.join(" ")} |"
      puts "C #{row_c.map { |cell| cell.render(false, true)}.join(" ")} |"
      puts "D #{row_d.map { |cell| cell.render(false, true)}.join(" ")} |"
    end
  end


end

# board1 = Board.new
# ship1 = Ship.new("Submarine", 2)
# ship2 = Ship.new("Cruiser", 3)
# p board1.cells["A1"]
# board1.render

#
# board1.place(ship1, ["B4", "C4"])
# cell_1 = board1.cells["A1"]
# cell_2 = board1.cells["A2"]
# cell_3 = board1.cells["A3"]
# cell_4 = board1.cells["A4"]
# board1.cells["D4"].fire_upon
# board1.cells["C4"].fire_upon
# board1.cells["D1"].fire_upon
# board1.cells["D2"].fire_upon
# board1.cells["B4"].fire_upon
#
#
#
# board1.test
