class Restaurant

  #TODO add relevant accessors if necessary
  attr_reader :name :city :type_of_food :average_rating

  def initialize(city, name)
    #TODO: implement constructor with relevant instance variables
    @name = name
    @city = city
    @average_rating = "No visitor has given a rating yet"
    @ratings = []
  end

  def rate(rating)
    @ratings << rating
    @average_rating = @ratings.reduce(:+) / ratings.length
  end

  #TODO: implement #filter_by_city and #rate methods

  def slef.filter_by_city(restaurants, city) #méthode de classe
    city_restos = []
    restos.each do |resto|
      city_resto <<  resto if resto.city == city
    end
    city_resto
    end
  end

  def rate

  end

end
