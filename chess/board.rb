require_relative "./piece.rb"
require "byebug"

class Board

    def self.grid
        Array.new(8) { Array.new(8) }
    end
    
    
    def initialize
        @rows = Board.grid
        # debugger
        # Board.populate
        self.populate
    end
    
    def populate
        range = [0, 1, 6, 7]
        # debugger
        @rows.each_with_index do |row, i|
            if range.include?(i)
                row.map! {|pos| pos = Piece.new }
            end
        end
    end

    def print
        @rows.each do |row|
            p row
        end
    end

    def [](pos)
        x, y = pos.first, pos.last
        @rows[x][y]
    end

    def []=(pos, value)
        x, y = pos.first, pos.last
        @rows[x][y] = value
    end

    def move_piece(start_pos, end_pos)
        this_piece = @rows[start_pos]
        @rows[end_pos] = this_piece
        @rows[start_pos] = nil
    end

end

b = Board.new
# pos = [0,0]
b.populate
b.print
puts "-----------------------------"
a = [1,0]
b = [3,0]
b.move_piece(a,b)
b.print