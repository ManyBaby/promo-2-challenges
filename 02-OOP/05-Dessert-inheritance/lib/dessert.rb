class Dessert

attr_reader :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert

  attr_reader :flavor

  def initialize(name = "", calories = 0, flavor ="")
    @flavor = flavor
    super(name)
    super(calories)
  end

  def delicious?
    false if @flavor == "black licorice"
  end
end


glace = Dessert.new(glace, 199)
puts glace.delicious?
puts glace.healthy?
