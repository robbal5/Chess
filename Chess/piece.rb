require "colorize"
require_relative "board.rb"
class Piece
attr_accessor :color, :board, :pos
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        self.symbol
    end 
    
    def empty?
        self == NullPiece.instance
    end 

    def valid_moves

    end 

    def pos=(val)
        @pos= val 
    end 

    def symbol

    end 
    
    private

    def move_into_check?(end_pos)

    end 

end