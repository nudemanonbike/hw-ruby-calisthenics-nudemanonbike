class Dessert
  def initialize(name, calories)
      @name = name
      @calories = calories
  end
  def healthy?
       if @calories > 200
	       return false
       end
       true
  end

  def name
	  @name
  end

  def name= (newName)
	@name = newName
  end
	
  def calories
	  @calories
  end

  def calories= (newCalories)
	  @calories = newCalories
  end

  def delicious?
      true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = flavor + " jelly bean"
    @calories = 5
  end

  def delicious?
	return  !(@flavor == "licorice")
  end	
end
