class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  def initialize
    @age = 0
    @dead = false
    @height = 0
    @fruits = 0
  end

  def produce_fruits
    @fruits = 0
    if @age > 5 && @age < 11
      @fruits = 100
    elsif @age > 10 && @age < 16
      @fruits = 200
    elsif @age > 15
      @fruits = 0
    else
    end
  end

  def getting_older
    @age += 1
  end

  def getting_taller
    @height += 1 if @age <= 10
  end

  def one_year_passes!
    getting_older()
    getting_taller()
    produce_fruits()
    random
  end

  def random
    if @age < 50
      @dead = false
    elsif @age > 49 && @age < 101
      if random(10) < 5
        @dead = true
      else
        @dead = false
      end
    else
      @dead = true
    end
  end

  def dead?
    return @dead
  end

  def pick_a_fruit!
    @fruits -= 1
  end

  attr_reader :dead, :height, :fruits, :age

end
