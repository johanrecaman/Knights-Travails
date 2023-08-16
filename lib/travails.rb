require_relative './board.rb'

class Travails
    def initialize
        @board = Array.new(8) { Array.new(8, false) }
        @moves = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]
    end

    def knight_moves(startHouse, endHouse)
    end
end