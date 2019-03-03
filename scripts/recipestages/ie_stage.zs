import mods.recipestages.Recipes;
import scripts.helpers;

Recipes.setRecipeStage("ie_stage", <immersiveengineering:tool:0>);

helpers.addAtlasTip(<immersiveengineering:tool:0>, [
    format.yellow("Can be crafted after learning everything in the Engineers Handbook")
]);

helpers.addAtlasTip(<gamestagebooks:ie_stage>, [
    format.yellow("Found in Jungle & Mesa biomes in the Contained Ecosystems dimension")
]);