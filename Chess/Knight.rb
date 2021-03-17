require_relative "piece.rb"
require_relative "steppable.rb"

class Knight < Piece
    include Steppable
    def symbol
        "♘".colorize(@color)
    end

    protected
    
    def move_diffs
possible_moves = [ 
    [2, 1], [1, 2],[-1, -2],[-1, 2],[1, -2],[2, -1],[-2, -1],[-2, 1]
]
    end

end