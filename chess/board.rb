require_relative "./piece.rb"

class Board

    def self.grid
        Array.new(8) { Array.new(8) }
    end

    def initialize
        @rows = Board.grid
        Board.populate
    end

    def self.populate
        range = [0, 1, 6, 7]
        @rows.each_with_index do |row, i|
            if range.include?(i)
                row.map! {|pos| pos == Piece.new }
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
        
    end

end

b = Board.new
pos = [0,0]
b.print