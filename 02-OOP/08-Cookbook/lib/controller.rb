require_relative 'cookbook'

class Controller
  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
    @file = file
    @cookbook = Cookbook.new(file)

  end

  def list
    @cookbook.retrieve_all
  end

  def add(name)
    @cookbook.add(name)
  end

  def delete(index)
    @cookbook.delete(index)
  end

  # TODO: Implement the methods to retrieve, add, and delete recipes through the model

end
