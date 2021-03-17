require_relative "pieces.rb"
class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}
        self.pieces
    end

    def [](position)
        row, col = position
        @rows[row][col]

    end

    def []=(position, value)
        row, col = position
        @rows[row][col] = value
    end


    def move_piece(start_pos, end_pos)
        raise "Invalid starting position, empty space" if self[start_pos] == nil
        # raise "Invalid end position, cannot take piece of same color" if self[start_pos].color == self[end_pos].color
        raise "Invalid move for this piece" if !self[start_pos].moves.include?(end_pos)
        self[end_pos] = self[start_pos]
        self[end_pos].pos = end_pos
        self[start_pos] = nil
            
    end
    def pieces
        (2..5).each do |row|
            (0..7).each do |col|
                self[[row,col]] = NullPiece.instance
                self[[1,col]] = Pawn.new(:white, self, [1,col]) 
                self[[6,col]] = Pawn.new(:black, self, [6,col])
            end 
        end 
        self[[0,0]]= Rook.new(:white, self, [0,0])
        self[[0,7]]= Rook.new(:white, self, [0,7])
        self[[7,0]]= Rook.new(:black, self, [7,0])
        self[[7,7]]= Rook.new(:black, self, [7,7])
        self[[0,1]]= Knight.new(:white, self, [0,1])
        self[[0,6]]= Knight.new(:white, self, [0,6])
        self[[7,1]]= Knight.new(:black, self, [7,1])
        self[[7,6]]= Knight.new(:black, self, [7,6])
        self[[0,2]]= Bishop.new(:white, self, [0,2])
        self[[0,5]]= Bishop.new(:white, self, [0,5])
        self[[7,2]]= Bishop.new(:black, self, [7,2])
        self[[7,5]]= Bishop.new(:black, self, [7,5])
        self[[0,3]]= Queen.new(:white, self, [0,3])
        self[[0,4]]= King.new(:white, self, [0,4])
        self[[7,3]]= Queen.new(:black, self, [7,3])
        self[[7,4]]= King.new(:black, self, [7,4])
    end 

end