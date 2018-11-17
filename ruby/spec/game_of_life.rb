
class GOL

    def initialize(grid:, printer:, thyme:)
        @grid = grid
        @printer = printer
        @thyme = thyme
    end

    def age
        cells = @grid.cells
        @printer.print(cells)
        cells.each do |cell|
          neighbors = @grid.neighbors(cell)
          @thyme.age(cell, neighbors)
        end
    end


end
