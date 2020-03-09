class Player
  
    def get_move
        print "enter a position with coordinates seperated with a space like '4 7'"
        move = gets.chomp.split(" ")
        move.map! { |ele| ele.to_i }
    end

end
