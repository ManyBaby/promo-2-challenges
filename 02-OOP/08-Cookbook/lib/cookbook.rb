require 'csv'

class Cookbook

  attr_reader :contents

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    load_csv(file)
    @file = file
  end

  def load_csv(file)
    @contents = []
    CSV.foreach(file) do|row|
      @contents << row.first
    end
  end
  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  def all
    puts "Here are all your recipes :"
    @contents.each_with_index do |item, index|
      puts "#{index + 1}. #{item}"
    end

  end

  def create(name)
    @contents << name
    save
  end

  def destroy(index)
    @contents.delete_at(index)
    save
  end

  # TODO: Implement a save method that will write the data into the CSV

  def save
    CSV.open(@file, "w") do |csv|
      @contents.each do |element|
        csv << [element]
      end
    end
  end

  # And don't forget to use this save method when you have to modify something in your recipes array.
end

mycookbook = Cookbook.new('lib/recipes.csv')

# mycookbook.create("maman gateau")
#
# puts mycookbook.retrieve_all

# mycookbook.delete(4)

# puts mycookbook.retrieve_all



