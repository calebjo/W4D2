
class King < Piece
    def symbol
        @color == "white" ? ♔ : ♚
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
        MOVES = 
    end

    private 
    def moves_diffs
    end

end