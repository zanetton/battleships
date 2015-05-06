require_relative 'ship'

class Port

  attr_accessor :capacity

  def initialize(capacity = 10)
    @ships = []
    @capacity = capacity
  end

  def dock ship
    fail "Overlap!" if full?
    ships << ship
  end

  def explode_target
    fail 'No ships there!' if empty?
		ships.pop
  end

  private
  attr_reader :ships

  def full?
    ships.length >= capacity
  end

  def empty?
		ships.empty?
  end


end
