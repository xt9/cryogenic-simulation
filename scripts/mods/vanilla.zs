# ----------------
# Recipe removal
# ----------------
# Remove smelting glass & brick furnace not hot enough
furnace.remove(<minecraft:brick>);
furnace.remove(<minecraft:hardened_clay>);
furnace.remove(<minecraft:netherbrick>);
furnace.remove(<tconstruct:materials>);
furnace.remove(<minecraft:glass>);
furnace.remove(<industrialforegoing:plastic>);

recipes.remove(<minecraft:piston>);
recipes.remove(<minecraft:furnace>);
recipes.remove(<minecraft:glass_bottle>);
recipes.remove(<minecraft:magma>);

# Remove string recipe added by IE
recipes.remove(<minecraft:string>);

# Remove slime block recipe since it's a bit broken with slimeball oredict
recipes.remove(<minecraft:slime>);

# Remove brewing stand, brewing is done in Inspirations Cauldron or TE brewing stuff
recipes.remove(<minecraft:brewing_stand>);

# ----------------
# Crafting Table Recipes
# ----------------
# Some machines require a brewing stand to craft them, replace with a regen 3 potion that can easily be brewed in the Cauldron.
recipes.replaceAllOccurences(<minecraft:brewing_stand>, <minecraft:potion>.withTag({Potion: "cofhcore:regeneration3+"}));

#  Add own recipe for making slimeblocks
recipes.addShapeless("non_oredict_slimeblock", <minecraft:slime>, [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>]);

recipes.addShaped("vanilla_bottle", <minecraft:glass_bottle>, [
    [null, <ore:slabWood>, null],
    [<ore:blockGlass>, null, <ore:blockGlass>],
    [null, <ore:blockGlass>, null]
]);

recipes.addShaped("vanilla_piston", <minecraft:piston>, [
    [<ore:ingotBrickDried>, <ore:ingotBrickDried>, <ore:ingotBrickDried>],
    [<ore:compressed1xCobblestone>, <ore:plateSteel>, <ore:compressed1xCobblestone>], 
    [<ore:compressed1xCobblestone>, <ore:blockRedstone>, <ore:compressed1xCobblestone>]
]);

recipes.addShaped("vanilla_furnace", <minecraft:furnace>, [
    [<ore:compressed1xCobblestone>, <ore:ingotBrickDried>, <ore:compressed1xCobblestone>],
    [<ore:ingotBrickDried>, <ore:gearStone>, <ore:ingotBrickDried>],
    [<ore:compressed1xCobblestone>, <ore:ingotBrickDried>, <ore:compressed1xCobblestone>]
]);

recipes.addShaped("vanilla_magma_block", <minecraft:magma>, [
    [<thermalfoundation:material:1024>, <thermalfoundation:material:1024>],
    [<thermalfoundation:material:1024>, <thermalfoundation:material:1024>]
]);

# ----------------
# Furnace Recipes
# ----------------
furnace.addRecipe(<ore:ingotBrickSeared>.firstItem * 2, <tconstruct:soil:0>);
furnace.addRecipe(<minecraft:glass_bottle>, <contenttweaker:sandy_bottle>);