 MENU_CALORIE = {

  "Cheese Burger" =>  290,
  "Big Mac"       =>  300,
  "Mc Bacon"      =>  400,
  "Royal Cheese"  =>  130,
  "French fries"  =>  130,
  "Potatoes"      =>  130,
  "Coca"          =>  160,
  "Sprite"        =>  170

}

def poor_calories_counter(burger, side, beverage)
  MENU_CALORIE[burger] + MENU_CALORIE[side] + MENU_CALORIE[beverage]
end

MENU_CALORIE["Happy Meal"] = MENU_CALORIE["Cheese Burger"] + MENU_CALORIE["French fries"] + MENU_CALORIE["Coca"]
MENU_CALORIE["Best Of Big Mac"] = MENU_CALORIE["Big Mac"] + MENU_CALORIE["French fries"] + MENU_CALORIE["Coca"]
MENU_CALORIE["Best Of Royal Cheese"] = MENU_CALORIE["Royal Cheese"] + MENU_CALORIE["Potatoes"] + MENU_CALORIE["Sprite"]


  def calories_counter(*orders)
     #TODO: return number of calories for a less constrained order
        sum = 0
    total = orders.each do |part|
      sum += MENU_CALORIE[part]
  end
    return sum

 end

