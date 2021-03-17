require_relative "piece.rb"

class Pawn < Piece

    def symbol
        "♙".colorize(@color)
    end

    def moves

    end

    private

    def at_start_row?
        if @color == :white
            return @pos[0] == 1
        else
            return 
            @pos[0] == 6
        end
    end

    def forward_dir
        if @color == :white
            return 1
        else
            return -1
        end
    end

    def forward_steps
        forward_moves = []
         if self.at_start_row?
            forward_moves += [[forward_dir, 0], [foward_dir*2, 0]]
         else
            foward_moves << [foward_dir,0]
         end   
         foward_moves 
    end

    def side_attacks
        attacks = []
        next_step = self.forward_dir
        row, col = @pos
        side_moves = [[row + next_step, col -1], [row + next_step, col + 1]]
        side_moves
    end
end