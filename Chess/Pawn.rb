require_relative "piece.rb"

class Pawn < Piece

    def symbol
        "♙".colorize(@color)
    end

    def moves

    end

    def at_start_row?

    end

    def forward_dir
        if self.color == white
            return 1
        else
            return -1
        end
    end

    def forward_steps

    end

    def side_attacks

    end
end