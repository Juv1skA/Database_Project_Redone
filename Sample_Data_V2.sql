INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Breakfast'),
(2, 'Lunch'),
(3, 'Dinner'),
(4, 'Dessert');

INSERT INTO Recipe (RecipeID, RecipeName, TotalCookingTime, CategoryID) VALUES
(1, 'Scrambled Eggs', 15, 1),
(2, 'Grilled Chicken Salad', 30, 2),
(3, 'Spaghetti Bolognese', 45, 3),
(4, 'Chocolate Cake', 60, 4),
(5, 'Garlic Shrimp Appetizer', 20, 2),
(6, 'Caesar Salad', 20, 2),
(7, 'Tomato Basil Soup', 25, 1),
(8, 'Beef Stroganoff', 40, 3),
(9, 'Garlic Mashed Potatoes', 25, 2),
(10, 'Iced Tea', 5, 4);

INSERT INTO Ingredients (IngredientID, IngredientName) VALUES
(1, 'Eggs'),
(2, 'Salt'),
(3, 'Chicken Breast'),
(4, 'Lettuce'),
(5, 'Spaghetti'),
(6, 'Ground Beef'),
(7, 'Chocolate'),
(8, 'Flour'),
(9, 'Shrimp'),
(10, 'Garlic'),
(11, 'Parmesan Cheese'),
(12, 'Croutons'),
(13, 'Tomatoes'),
(14, 'Basil'),
(15, 'Beef Sirloin'),
(16, 'Onion'),
(17, 'Potatoes'),
(18, 'Butter'),
(19, 'Tea Bags'),
(20, 'Sugar'),
-- Alternatives 
(21, 'Egg Whites'),
(22, 'Ground Turkey'),
(23, 'Cocoa Powder'),
(24, 'Chicken'),
(25, 'Rice Flour'),
(26, 'Cabbage'),
(27, 'Sweet Potatoes'),
(28, 'Lemonade Mix');

INSERT INTO Ingredients_In_Recipes (RecipeID, IngredientID) VALUES
(1, 1),  
(1, 2),  
(2, 3),  
(2, 4),  
(3, 5),  
(3, 6),  
(4, 7), 
(4, 8),  
(5, 9),  
(5, 10), 
(6, 11), 
(6, 12), 
(7, 13), 
(7, 14), 
(8, 15), 
(8, 16), 
(9, 17), 
(9, 18), 
(10, 19),
(10, 20);

INSERT INTO CookingHardware (HardwareID, HardwareName) VALUES
(1, 'Frying Pan'),
(2, 'Grill'),
(3, 'Pot'),
(4, 'Oven'),
(5, 'Skillet'),
(6, 'Blender'),
(7, 'Saucepan'),
(8, 'Grater'),
(9, 'Mixing Bowl'),
(10, 'Whisk');

INSERT INTO CookingHardware_In_Recipes (RecipeID, HardwareID) VALUES
(1, 1),   
(2, 2),   
(3, 3),   
(4, 4),   
(5, 5),   
(6, 6),   
(7, 7),   
(8, 8),  
(9, 9),  
(10, 10); 

INSERT INTO Instructions (InstructionID, InstructionText, RecipeID) VALUES
(1, 'Beat eggs and salt in a bowl. Heat frying pan and add beaten eggs. Cook until set.', 1),
(2, 'Season chicken breasts with salt and pepper. Grill until cooked through. Slice and serve over lettuce.', 2),
(3, 'Cook spaghetti according to package instructions. Brown ground beef, add sauce, and simmer. Serve over cooked spaghetti.', 3),
(4, 'Preheat oven to 350°F (175°C). Mix chocolate cake ingredients and bake for 30-35 minutes. Let cool before serving.', 4),
(5, 'Peel and devein shrimp. Heat oil in a skillet, add minced garlic and shrimp. Cook until shrimp turn pink.', 5),
(6, 'Combine lettuce, croutons, and parmesan cheese. Toss with Caesar dressing until coated. Serve chilled.', 6),
(7, 'Sauté minced garlic and tomatoes with basil in olive oil. Simmer for 20 minutes. Serve hot.', 7),
(8, 'Sauté onion in a skillet until soft. Add sliced beef sirloin and brown. Serve with rice or noodles.', 8),
(9, 'Boil potatoes until tender, then mash with butter until smooth. Season with salt and pepper to taste.', 9),
(10, 'Steep tea bags in hot water for 5 minutes. Stir in sugar. Serve over ice.', 10);

INSERT INTO Ingredients_And_Alternatives (RecipeID, OriginalIngredientID, AlternativeIngredientID) VALUES
(1, 1, 21),
(3, 6, 22),
(4, 7, 23),
(5, 9, 24),
(4, 8, 25),
(7, 13, 26),
(8, 15, 3),
(9, 17, 27),
(10, 19, 28);

INSERT INTO AlternativeRecipes (OriginalRecipeID, AlternativeRecipeID) VALUES
(1, 2),   
(3, 4),  
(5, 6),  
(7, 8),  
(9, 10); 

INSERT INTO Images (ImageID, ImageURL, RecipeID) VALUES
(1, 'url_to_image1.jpg', 1),
(2, 'url_to_image2.jpg', 2),
(3, 'url_to_image3.jpg', 3),
(4, 'url_to_image4.jpg', 4),
(5, 'url_to_image5.jpg', 5),
(6, 'url_to_image6.jpg', 6),
(7, 'url_to_image7.jpg', 7),
(8, 'url_to_image8.jpg', 8),
(9, 'url_to_image9.jpg', 9),
(10, 'url_to_image10.jpg', 10);

INSERT INTO AllergyWarnings (WarningID, AllergyWarning, RecipeID) VALUES
(1, 'Contains gluten', 3),
(2, 'Contains eggs and dairy', 4),
(3, 'Contains shellfish', 5),
(4, 'Contains nuts', 6),
(5, 'Contains dairy', 7),
(6, 'Contains soy', 8),
(7, 'Contains wheat', 9),
(8, 'Contains fish', 10);
