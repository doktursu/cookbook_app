Category.create!([
  {name: "Mains"},
  {name: "Desserts"},
  {name: "Soups"}
])
Ingredient.create!([
  {name: "Carrots", image: "http://myzerowaste.com/wp-content/uploads/2009/01/carrots.jpg"},
  {name: "Peas", image: "http://topfoodfacts.com/wp-content/uploads/2013/01/Peas.jpg"},
  {name: "Honey", image: "http://peterturchin.com/blog/wp-content/uploads/2015/05/Honey.jpg"}
])
Ingredient::HABTM_Recipes.create!([
  {recipe_id: 5, ingredient_id: 2},
  {recipe_id: 5, ingredient_id: 4},
  {recipe_id: 2, ingredient_id: 3},
  {recipe_id: 2, ingredient_id: 3},
  {recipe_id: 9, ingredient_id: 4}
])
Recipe.create!([
  {name: "Pea Soup", method: "1. Roast garlic\r\n2. Mash peas", category_id: 6, image: "http://www.finecooking.com/CMS/uploadedimages/Images/Cooking/Articles/Issues_111-120/051120023-01-pea-parmigiano-soup-recipe_xlg.jpg"},
  {name: "Lentil Soup", method: "1. Soak Lentils\r\n2. Mash Lentils", category_id: 6, image: "http://p-fst1.pixstatic.com/545318542a099a167700f009/_w.540_s.fit_/red-lentil-soup.jpg"},
  {name: "Honey Carrots", method: "1. Heat oven to 190C/170C fan/gas 5. Tip the carrots into a roasting tin and toss with the oil and some salt and pepper. Roast for 30 mins.\r\n\r\n2. Drizzle the vinegar and honey over the carrots, toss well and return to the oven for a further 20 mins.", category_id: 4, image: "http://fivehearthome.com/wp-content/uploads/2014/03/Honey-Glazed-Carrots-with-Thyme-and-Lemon-Recipe-by-Five-Heart-Home_700pxPan.jpg"},
  {name: "Baklava", method: "1. Thaw phyllo dough according to package instructions (this is best done overnight in the fridge, then place it on the counter for 1 hour before starting your recipe to bring it to room temp).\r\n2. Trim phyllo dough to fit your baking sheet. My phyllo dough package had 2 rolls with a total of 40 sheets that measured 9×14 so I had to trim them slightly. You can trim one stack at a time then cover with a damp towel to keep from drying out.\r\n3. Butter the bottom and sides of a 13×9 non-stick baking pan.", category_id: 5, image: "http://natashaskitchen.com/wp-content/uploads/2014/12/Baklava-Recipe-16.jpg"}
])
Recipe::HABTM_Ingredients.create!([
  {recipe_id: 5, ingredient_id: 2},
  {recipe_id: 5, ingredient_id: 4},
  {recipe_id: 2, ingredient_id: 3},
  {recipe_id: 2, ingredient_id: 3},
  {recipe_id: 9, ingredient_id: 4}
])
