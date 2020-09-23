class Recipe < ActiveRecord::Base
  has_many :ingredients 

  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |i, ingredients_attributes|
      self.ingredients.build(ingredients_attributes)
    end 
  end 
end
