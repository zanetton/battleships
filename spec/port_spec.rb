require 'port'
require 'ship'

describe Port do
  it {is_expected.to respond_to(:dock).with(1).argument}

  it 'allows ship to be docked' do
  port = Port.new
  port.dock Ship.new
end
  it 'states overlaps if you try to add ship to occupied port'do
  capacity = subject::capacity
  capacity.times{subject.dock Ship.new}
  expect{subject.dock Ship.new}.to raise_error 'Overlap!'
end
  


end
