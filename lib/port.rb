class Port

  attr_accessor :capacity

  def initiazlize(capacity = 1)
    @ship = []
    @capacity = capacity
  end

  def dock ship

  end

  def full?
    true
  end
end
