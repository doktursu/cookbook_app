def remove_ingredient_from_recipe(recipe)
  ingredient = Ingredient.find(params[:ingredient][:id])
  recipe = Ingredient.recipes.find(params[:recipe][:id])

  Recipe.ingredients.delete(ingredient) if ingredient
end