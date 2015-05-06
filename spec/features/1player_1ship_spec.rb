require 'port'
require 'ship'

feature 'a player can place a ship in the port' do
  scenario 'port accepts 1 ship' do
    port = Port.new
    port.dock Ship.new
    capacity = port::capacity
    expect(port.capacity).to eq capacity
  end

  scenario 'ships cannot overlap' do
    port = Port.new
    capacity = port::capacity
    capacity.times{port.dock Ship.new}
    expect{port.dock Ship.new}.to raise_error 'Overlap!'
end
  scenario 'ships can be fired at and exploded' do
    port = Port.new
    port.dock Ship.new
    ship = port.explode_target
    expect(ship).to be_fired
  end
end












# array = [[1,2,3,4,5,6,7,8,9,19 ,["a","b","c","d","e","f","j",]]
