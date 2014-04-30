require_relative 'cookbook'

class Controller
  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
    @file = file
    @cookbook = Cookbook.new(file)

  end

  def list
    @cookbook.all
  end

  def add(name)
    @cookbook.create(name)
  end

  def delete(index)
    @cookbook.destroy(index)
  end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model

end
