Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'Pure Dessert', :cuisine => 'Cookies', :chef => 'Alice Medrich', :image => 'http://www.thenibble.com/reviews/reads/cooking/desserts/images/pure-dessert.jpg')

r1 = Recipe.create(:name => 'Chocolate Chip Cookies', :course => 'Dessert', :cooktime => 10, :servingsize => 24, :instructions => '', :image => 'http://c.o0bc.com/rf/image_539o215/Boston/2011-2020/2012/12/06/Boston.com/ReceivedContent/Images/alice%20medrich%20chocolate%20chip.jpg')

r2 = Recipe.create(:name => 'Almond Sticks with Cocoa Nibs', :course => 'Dessert', :cooktime => 12, :servingsize => 20, :instructions => '', :image => 'http://farm1.static.flickr.com/169/448649516_eaff2ddd3a_o.jpg')

r3 = Recipe.create(:name => 'Classic Bittersweet Brownies', :course => 'Dessert', :cooktime => 20, :servingsize => 16, :instructions => '', :image => 'http://www.refrigeratorsoup.com/wp-content/uploads/noid-alice_medrich_brownies.jpg')

i1 = Ingredient.create(:name => 'sugar', :measurement => '1 cup', :cost => 1.25, :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5d/Raw_sugar_closeup.jpg')
i2 = Ingredient.create(:name => 'flour', :measurement => '1 cup', :cost => 1.25, :image => 'http://3.bp.blogspot.com/_Iel3IXJ_g7A/RzIFHOZyqRI/AAAAAAAACvk/f6zlHQ_QFSA/s400/flour.jpg')
i3 = Ingredient.create(:name => 'eggs', :measurement => '2', :cost => 0.50, :image => 'http://thehealthreportertv.files.wordpress.com/2012/04/eggs2.jpg')
i4 = Ingredient.create(:name => 'vanilla', :measurement => '1 tsp', :cost => 0.25, :image => 'http://1.bp.blogspot.com/-F5Pe_Y6v3wo/TiCzzI3fgjI/AAAAAAAAA6A/Isu0Ur2pEQQ/s1600/vanilla.jpg')
i5 = Ingredient.create(:name => 'chocolate', :measurement => '12 oz', :cost => 8.00, :image => 'http://static.ddmcdn.com/gif/questions-about-cooking-with-chocolate-4.jpg')
i6 = Ingredient.create(:name => 'baking soda', :measurement => '1 tsp', :cost => 0.12, :image => 'http://naturesnurtureblog.com/wp-content/uploads/2011/11/baking-soda.jpg')
i7 = Ingredient.create(:name => 'baking powder', :measurement => '1 tsp', :cost => 0.15, :image => 'http://4.bp.blogspot.com/_Fp7uIhkqTZI/TUhp-Utaw8I/AAAAAAAAABU/h2Dbez2pDLc/s1600/Rumford_Baking_Powder_LG.jpg')
i8 = Ingredient.create(:name => 'milk', :measurement => '1 cup', :cost => 0.75, :image => 'http://www.todayifoundout.com/wp-content/uploads/2010/10/milk.jpg')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i1, i2, i3]
r2.ingredients = [i1, i2, i4, i5, i6]
r3.ingredients = [i2, i3, i4]





