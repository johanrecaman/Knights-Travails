class Travails
    def initialize
        @moves = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]
    end

    def knight_moves(startHouse, endHouse)
        queue = [[startHouse]]
        visited = [startHouse]

        until queue.empty?
            path = queue.pop
            position = path.last

            if position == endHouse
                printPath(path)
                return path
            end

            @moves.each do |move|
                new_position = [position[0] + move[0], position[1] + move[1]]
                if isValid?(new_position) && !visited.include?(new_position)
                    visited << new_position
                    new_path = path + [new_position]
                    queue << new_path
                end
            end
        end
    end

    def isValid?(position)
        position[0] >= 0 && position[0] <= 7 && position[1] >= 0 && position[1] <= 7
    end

    def printPath(path)
        path.each { |position| puts "#{position}" }
    end
end
