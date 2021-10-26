require_relative "./piece.rb"

class King < Piece

    include Stepable

    def symbol
        @color == "white" ? "♚" : "♔"
    end
    
    protected
    def move_diffs 
        moves = [
            [0,1],
            [0,-1],
            [1,0],
            [-1,0],
            [1,1],
            [-1,1],
            [1,-1],
            [-1,-1],
        ]
    end

end

class Knight < Piece

end

module Stepable
    def moves
        moves_array = []
        (0..7).each do |i|
            (0..7).each do |j|
                moves_array << [i,j] if @board[[i,j]] == nil 
            end
        end
    end


    private 
    def moves_diffs
        raise NotImplementedError, "Not implemented"
    end

end