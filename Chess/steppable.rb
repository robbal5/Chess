module Steppable 

    def moves 
        available_moves = []
        move_diffs.each do |possible_move|
                dir1, dir2 = possible_move        
                test_pos = @pos.dup
                test_pos[0] += dir1
                test_pos[1] += dir2
            if test_pos.min < 0 || test_pos.max > 7
                next 
            end  
                if @board[test_pos] != nil

                    if @board[test_pos].color == @color 
                        next 
                    else 
                        available_moves << test_pos
                    end
                else 
                    available_moves << test_pos  
                end
            end  
                available_moves
    end 
    
    def move_diffs
        raise "Must establish unique move_dirs for the child piece class"
    end 


end 