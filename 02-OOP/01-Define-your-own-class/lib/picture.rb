require 'date'

class Picture
  def initialize(pix_id, url)
    @pix_id = pix_id
    @url = url
    @soldiers = {}
    @civilians = {}
  end

  def tag_soldier(soldier)
    @soldiers[soldier.soldier_id] = soldier
    p "#{soldier} tagged !"
  end

  def tag_civilian(civilian_id, civilian_name)
    @civilians[civilian_id] = civilian_name
  end

  def nb_soldiers_tagged
    @soldiers.length
  end

  def nb_civilians_tagged
    @civilians.length
  end

  def pix_age
    @pix_age = Date.today - @date
  end

  attr_accessor :id, :date, :url, :soldiers
end
