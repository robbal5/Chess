require "byebug"
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
        # debugger
          
          dir1, dir2 = dir
        possible_moves += grow_unblocked_moves_in_dir(dir1, dir2) 
      
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
      raise "Must establish unique move_dirs for the child piece class"
    end 

    def grow_unblocked_moves_in_dir(dx, dy)
      current_pos = @pos.dup
      moves = []
      finished = false
      # debugger
      until finished 
          current_pos[0] += dx
          current_pos[1] += dy

          break unless current_pos.min >= 0 && current_pos.max <= 7 
        
          if @board[current_pos].nil?
            moves << current_pos.dup
          else
             if @color == @board[current_pos].color
                finished = true
             else
                moves << current_pos.dup
                finished = true
             end
          end
      end
      # debugger
      moves 
    end 

end 