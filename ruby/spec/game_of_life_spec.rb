require 'game_of_life'

RSpec.describe GOL do
  let(:grid) { double("Grid") }
  let(:printer) { double("Printer") }
  
  let(:thyme) { double("thyme") }

  let(:cell)  { :cell  }
  let(:cells) { [cell] }

  let(:neighbors) { :neighbors }

# grid.cells
before do 
  allow(grid).to receive(:cells).and_return(cells)
  allow(grid).to receive(:neighbors).with(cell).and_return(neighbors)

  allow(printer).to receive(:print)

  allow(thyme).to receive(:age)
 
  subject.age
end

# what do we do with the cells?
# the view layer needs to be able to print the current state of the grid

  subject { GOL.new( grid: grid, printer: printer, thyme: thyme ) }

  it "can print" do
    expect(printer).to have_received(:print).with(cells)
  end

  it "can age a cell based on its neighbors" do
    expect(thyme).to have_received(:age).with(cell, neighbors)
  end

end
