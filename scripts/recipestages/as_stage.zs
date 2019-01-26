import mods.recipestages.Recipes;
import scripts.helpers;


Recipes.setRecipeStage("as_stage", <astralsorcery:itemwand>);

helpers.addAtlasTip(<astralsorcery:itemwand>, [
    format.yellow("Can be crafted after learning everything from"),
    format.yellow("The Astronomers Guide To the Galaxy")
]);

helpers.addAtlasTip(<gamestagebooks:as_stage>, [
    format.yellow("Found in the Dark Thicket biome on the Lunar Plane")
]);