class Board

    def initialize
        @rows = Array.new(8) {Array.new(8)}
        @null_piece = nil
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

end