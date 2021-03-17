require_relative "piece.rb"
require 'singleton'

class NullPiece < Piece
    include Singleton
    def initialize
        @color = :no_color
    end

    def moves
        []
    end

    def symbol
        ' '
    end

end