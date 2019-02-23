import mods.inspirations.Cauldron;
import scripts.helpers;

# ----------------
# Cauldron
# ----------------
# Fluid Recipes
Cauldron.addFluidTransform(<liquid:blessed_life_essence>, <contenttweaker:blood_raven_feather> * 5, <liquid:lifeessence>, 4, true);
Cauldron.addFluidRecipe(<astralsorcery:itemusabledust> * 4, <ore:dustGlowstone>, <liquid:astralsorcery.liquidstarlight>, 4, true);
Cauldron.addFluidRecipe(<inspirations:edibles>, <ore:cropBeetroot>, <liquid:blood>, 4, true);

# Brewing
Cauldron.removeBrewingRecipe("minecraft:regeneration", "minecraft:awkward", <inspirations:edibles>);

Cauldron.addBrewingRecipe("minecraft:awkward", "minecraft:water", <contenttweaker:troll_eye>);
Cauldron.addBrewingRecipe("cofhcore:regeneration3+", "minecraft:awkward", <inspirat ions:edibles>);

# ----------------
# Recipes
# ----------------
helpers.addAtlasTip(<minecraft:magma>, [
    format.yellow("Counts as a fire source for the Cauldron.")
]); 

helpers.addAtlasTip(<inspirations:edibles>, [
    format.yellow("Can be used as a Brewing ingredient"),
    format.yellow("to create Regeneration Potions."),
    format.yellow(""),
    format.yellow("Can also be crushed against a Coagulated Blood Block"),
    format.yellow("to gain Regenration IV for 1 minute.")
]); 