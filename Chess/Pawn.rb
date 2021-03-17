require_relative "piece.rb"
require "byebug"
class Pawn < Piece

    def symbol
        "♙"
    end

    def moves
        forward_steps + side_attacks
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
        
        row, col = @pos
         if at_start_row?
            forward_moves += [[row + forward_dir, col], [row + forward_dir*2, col]]
         else
            forward_moves << [row + forward_dir,col]
         end   
         forward_moves 
         forward_moves.select {|move| @board[move].empty?}
    end

    def side_attacks
        attacks = []
        next_step = forward_dir
        row, col = @pos
        side_moves = [[row + next_step, col -1], [row + next_step, col + 1]]
        side_moves.each do |move|
            unless move.min < 0 || move.max > 7 
                if @board[move].color != @color && !empty?
                    attacks << move 
                end  
            end 
        end
        attacks  
    end
end