class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    return true if @calories < 200
  end
  def delicious?
    # your code here
    return true unless @name.nil? || @calories.nil?
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    # your code here
    @flavor = flavor
    
  end
  
  def calories=(new_calories = 5)
    @calories = new_calories
    raise ArgumentError, "calories == 5" if @calories < 5
  end
  
  def calories
    @calories = 5
    super
  end
    
  def name
    return @flavor + " jelly bean"
  end
  def delicious?
     if @flavor == "licorice"
       return false
     else
       return true
     end 
  end
end

@subject = JellyBean.new('vanilla')
p @subject.calories

