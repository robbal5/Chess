require_relative "piece.rb"
require 'singleton'

class NullPiece 
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