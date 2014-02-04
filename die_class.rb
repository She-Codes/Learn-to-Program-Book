class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def set(num)
    arr = [1,2,3,4,5,6]
    if arr.include?(num)
      @number_showing = num
    else
      false
    end
  end

end


dice = Die.new
puts dice.set(2)
