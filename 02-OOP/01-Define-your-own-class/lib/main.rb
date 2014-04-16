require_relative 'soldier'
require_relative 'picture'
require 'date'

soldier0001 = Soldier.new(0001, 'Mark')
soldier0002 = Soldier.new(0002, 'John')

picture0001 = Picture.new(0001, "/p10550_052.JPG")
picture0002 = Picture.new(0002, "/p10550_193.JPG")
picture0002 = Picture.new(0002, "/p10550_196.JPG")

picture0001.tag_soldier(soldier0001)
sleep 2
p "There are #{picture0001.nb_soldiers_tagged} soldiers tagged in this photography"
sleep 2
