require 'date'

class Soldier
  def initialize(soldier_id, soldier_name = 'Unknown')
    @soldier_id = soldier_id
    @soldier_name = soldier_name
    @tagged_in = []
  end

  def add_death_date(death_date)
    @death_date = death_date
  end

  def add_birth_date(birth_date)
    @birth_date = birth_date
  end

  def tagged_in(picture_id)
    @tagged_in << picture_id
  end

  def nb_pix_tagged?
    @tagged_in.length
  end

  attr_accessor :soldier_id, :soldier_name
end
