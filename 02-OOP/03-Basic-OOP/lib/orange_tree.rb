class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  def initialize
    @age = 0
    @dead = false
    @size = 0
    @fruits = 0
  end

  def one_more_year
    @age += 1
    @size += 1 if @age <= 10
    if @age >= 5
      @fruits += 100
    elsif @age >= 10
      @fruits += 200
    elsif @age >= 15
      @fruits

    end
  end

  def pick_fruit
    @fruits -= 1
  end

  def kill


  end

end
