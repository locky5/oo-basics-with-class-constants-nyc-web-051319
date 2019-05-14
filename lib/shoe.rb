class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []

  def initialize(brand)
    @brand = brand
    if BRANDS.include?(brand) # checks if brand is already in []
      BRANDS # returns original array if this is true
    else
      BRANDS << brand 
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end