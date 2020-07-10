require './lib/cell'
require './lib/ship'


class Board

  attr_accessor :row_a, :row_b, :row_c,:row_d,
                :a1, :a2, :a3, :a4,
                :b1, :b2, :b3, :b4,
                :c1, :c2, :c3, :c4, :d1, :d2, :d3, :d4

  def initialize
    @a1 = Cell.new("A1")
    @a2 = Cell.new("A2")
    @a3 = Cell.new("A3")
    @a4 = Cell.new("A4")
    @b1 = Cell.new("B1")
    @b2 = Cell.new("B2")
    @b3 = Cell.new("B3")
    @b4 = Cell.new("B4")  #could be more dry
    @c1 = Cell.new("C1")   # we don't need all of them however
    @c2 = Cell.new("C2")  # some kind of collection that can be itterated upon
    @c3 = Cell.new("C3")  # a-d, 1-4.  Pass some arguements
    @c4 = Cell.new("C4")  # if board grows, the arguements can help with that
    @d1 = Cell.new("D1")  #this is more static
    @d2 = Cell.new("D2")
    @d3 = Cell.new("D3")
    @d4 = Cell.new("D4")
  end

  def cells
    {"A1" => a1,
      "A2" => a2,
      "A3" => a3,
      "A4" => a4,
      "B1" => b1,
      "B2" => b2,
      "B3" => b3,
      "B4" => b4,
      "C1" => c1,
      "C2" => c2,
      "C3" => c3,
      "C4" => c4,
      "D1" => d1,
      "D2" => d2,
      "D3" => d3,
      "D4" => d4
    }

  end
  # require "pry"; binding.pry


  def valid_coordinate?(coordinate)
    coordinate.all?{ |numbers| cells.include? numbers}
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
    index_of_colum_cooordinates = colum_index.collect{ |number| colum_index[0] == number}


    # Checks if ship length is equal to coordinate length, then checks if numbers in coordinates are consecutive. After, it checks if all letters are identical.
    # This method underneath was throwing things off, so I commented it out and got it to work

    # if ship.length == coordinate.length && colum_numbers.collect{ |numbs| colum_numbers[0] == numbs} && index_of_letters_of_coordinates.all?{ |numb| numb == index_of_letters_of_coordinates[0]} && coordinate.all?{ |pair| cells[pair].empty?}
    #   "true1"
    if self.valid_coordinate?(coordinate) == false
      false
    # Checks if ship length is equal to coordinate length, then checks if the letters of the coordinates are consecutive, lastly checks if coordinates have 2 elements
    elsif ship.length == coordinate.length && index_of_letters_of_coordinates[0] + 1 == index_of_letters_of_coordinates[1] && coordinate.length == 2 && colum_numbers.all?{ |numbs| colum_numbers[0] == numbs} && coordinate.all?{ |pair| cells[pair].empty?}
      true
    # Checks if ship length is equal to coordinate length, then checks if the letters of the coordinates are consecutive, lastly checks if coordinates have 3 elements
    elsif ship.length == coordinate.length && index_of_letters_of_coordinates[0] + 1 == index_of_letters_of_coordinates[1] && index_of_letters_of_coordinates[1] + 1 == index_of_letters_of_coordinates[2] && coordinate.length == 3 && colum_numbers.all?{ |numbs| colum_numbers[0] == numbs} && coordinate.all?{ |pair| cells[pair].empty?}
      true
    elsif ship.length == coordinate.length && index_of_letters_of_coordinates[0] == index_of_letters_of_coordinates[1] && index_of_letters_of_coordinates[1] == index_of_letters_of_coordinates[2] && coordinate.length == 3
      true
      # This one below checks if the coordinates are 2 long, with same letters, different numbers
    elsif ship.length == coordinate.length && index_of_letters_of_coordinates[0] == index_of_letters_of_coordinates[1] && coordinate.length == 2 && colum_numbers[0] != colum_numbers[1]
      true
    elsif coordinate.length == 0
      false
    elsif coordinate.any?{ |pair| not cells[pair].empty?}
      false
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

  def render(show=false, second=false)
    row_a = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "A"}
    row_b = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "B"}
    row_c = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "C"}
    row_d = cells.values.select{ |all_cells| all_cells.coordinate.split("")[0] == "D"}

    p "  1 2 3 4 |"
    if show == false && second == false
      p "A #{row_a.map { |cell| cell.render}.join(" ")} |"
      p "B #{row_b.map { |cell| cell.render}.join(" ")} |"
      p "C #{row_c.map { |cell| cell.render}.join(" ")} |"
      p "D #{row_d.map { |cell| cell.render}.join(" ")} |"
    elsif show == true && second != true
      p "A #{row_a.map { |cell| cell.render(true)}.join(" ")} |"
      p "B #{row_b.map { |cell| cell.render(true)}.join(" ")} |"
      p "C #{row_c.map { |cell| cell.render(true)}.join(" ")} |"
      p "D #{row_d.map { |cell| cell.render(true)}.join(" ")} |"
    elsif show == true && second == true
      p "A #{row_a.map { |cell| cell.render(true, true)}.join(" ")} |"
      p "B #{row_b.map { |cell| cell.render(true, true)}.join(" ")} |"
      p "C #{row_c.map { |cell| cell.render(true, true)}.join(" ")} |"
      p "D #{row_d.map { |cell| cell.render(true, true)}.join(" ")} |"
    end
  end


end

# board1 = Board.new
# ship1 = Ship.new("Submarine", 2)
# ship2 = Ship.new("Cruiser", 3)
# board1.cells
# p board1.valid_placement?(ship1, ["A1", "A3", "A4"])
# board1.place(ship2, ["A1", "A2", "A3"])
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
#
# p board1.valid_placement?(ship1, ["A5", "A6"])
