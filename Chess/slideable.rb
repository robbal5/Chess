module Slideable
  HORIZONTAL_DIRS = [
    [1,0],
    [-1,0],
    [0,1],
    [0,-1]
  ]
DIAGONAL_DIRS = [
 [1,1],
 [1,-1],
 [-1,-1],
 [-1,1]
]
private_constant :DIAGONAL_DIRS, :HORIZONTAL_DIRS    
def moves
      possible_moves = []
      move_dirs.each do |dir|
        
        dir.each do |subD|
          
          dir1, dir2 = subD
        possible_moves += grow_unblocked_moves_in_dir(dir1, dir2) 
      end
    end  
    possible_moves
    end 

    def horizontal_dirs
      HORIZONTAL_DIRS
    end 

    def diagonal_dirs
      DIAGONAL_DIRS
    end 

    private
    
    def move_dirs

    end 

    def grow_unblocked_moves_in_dir(dx, dy)
      current_pos = @pos.dup
      moves = []
      current_pos[0] += dx
        current_pos[1] += dy
      until @board[current_pos] != nil 
          
        if current_pos.min >= 0 && current_pos.max < 7 
          moves << current_pos
          else
            break 
          end

        current_pos[0] += dx
        current_pos[1] += dy
      end
      if @board[current_pos] != nil && @board[current_pos].color != @color
      moves << current_pos
      end 
      moves 
    end 

end 