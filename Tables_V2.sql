-- Category Table
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL
);

-- Recipe Table
CREATE TABLE Recipe (
    RecipeID INT PRIMARY KEY,
    RecipeName VARCHAR(255) NOT NULL,
    TotalCookingTime INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

-- Ingredients Table
CREATE TABLE Ingredients (
    IngredientID INT PRIMARY KEY,
    IngredientName VARCHAR(255) NOT NULL
);

-- Junction between Recipe and Ingredients
CREATE TABLE Ingredients_In_Recipes (
    RecipeID INT NOT NULL,
    IngredientID INT NOT NULL,
    PRIMARY KEY (RecipeID, IngredientID),
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID)
);

-- CookingHardware Table
CREATE TABLE CookingHardware (
    HardwareID INT PRIMARY KEY,
    HardwareName VARCHAR(255) NOT NULL
);

-- Junction between Recipe and CookingHardware
CREATE TABLE CookingHardware_In_Recipes (
    RecipeID INT NOT NULL,
    HardwareID INT NOT NULL,
    PRIMARY KEY (RecipeID, HardwareID),
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (HardwareID) REFERENCES CookingHardware(HardwareID)
);

-- Instructions Table
CREATE TABLE Instructions (
    InstructionID INT PRIMARY KEY,
    InstructionText TEXT NOT NULL,
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- Alternative ingredient table
CREATE TABLE Ingredients_And_Alternatives (
    RecipeID INT NOT NULL,
    OriginalIngredientID INT NOT NULL,
    AlternativeIngredientID INT NOT NULL,
    PRIMARY KEY (RecipeID, OriginalIngredientID, AlternativeIngredientID),
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (OriginalIngredientID) REFERENCES Ingredients(IngredientID),
    FOREIGN KEY (AlternativeIngredientID) REFERENCES Ingredients(IngredientID)
);

-- AlternativeRecipes Table
CREATE TABLE AlternativeRecipes (
    OriginalRecipeID INT NOT NULL,
    AlternativeRecipeID INT NOT NULL,
    PRIMARY KEY (OriginalRecipeID, AlternativeRecipeID),
    FOREIGN KEY (OriginalRecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (AlternativeRecipeID) REFERENCES Recipe(RecipeID)
);

-- Images Table
CREATE TABLE Images (
    ImageID INT PRIMARY KEY,
    ImageURL VARCHAR(255) NOT NULL,
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);

-- AllergyWarnings Table
CREATE TABLE AllergyWarnings (
    WarningID INT PRIMARY KEY,
    AllergyWarning VARCHAR(255) NOT NULL,
    RecipeID INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID)
);
