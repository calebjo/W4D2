module Slideable
    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def horizontal_dirs
        # VERTICAL
        (1..7).each do |i|
            HORIZONTAL_DIRS << [0, i]
            HORIZONTAL_DIRS << [0, -i]
        end
        # HORIZONTAL
        (1..7).each do |j|
            HORIZONTAL_DIRS << [i, 0]
            HORIZONTAL_DIRS << [-i, 0]
        end
    end

    def diagonal_dirs
    end

    def moves
        # returns the total moves arrays that work
    end

    private

    def move_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        #(pos[0]..)
    end
end

class Rook
end

class Bishop
end

class Queen
end