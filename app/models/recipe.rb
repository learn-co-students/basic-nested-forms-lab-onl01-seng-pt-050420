class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  def ingredient_attributes=(ingredient)
    self.ingredient = Ingredient.find_or_create_by(name: ingredient[:name])
    if self.ingredient.name != nil && self.ingredient.quantity != nil
    self.ingredient.update(ingredient)
    end

    
  end
end
