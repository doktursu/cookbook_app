class AddNewIngredientNameToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :new_ingredient_name, :string
  end
end
