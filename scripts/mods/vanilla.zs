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
# Remove Silicon smelting from quartz
furnace.remove(<ore:itemSilicon>.firstItem, <ore:dustQuartz>.firstItem);
furnace.remove(<ore:itemSilicon>.firstItem, <enderio:item_material:33>);

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
# Remove default gunpowder recipes
recipes.remove(<minecraft:gunpowder>);
# Remove default tnt recipe
recipes.remove(<minecraft:tnt>);
# Remove end crystal recipe (crafted with DML)
recipes.remove(<minecraft:end_crystal>);


# ----------------
# Crafting Table Recipes
# ----------------
# Some machines require a brewing stand to craft them, replace with a regen 3 potion that can easily be brewed in the Cauldron.
recipes.replaceAllOccurences(<minecraft:brewing_stand>, <minecraft:potion>.withTag({Potion: "cofhcore:regeneration3+"}));

# Add own recipe for making slimeblocks
recipes.addShapeless("non_oredict_slimeblock", <minecraft:slime>, [<minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball>]);


recipes.addShaped("vanilla_chest_from_fir", <minecraft:chest>, [
    [<traverse:fir_planks>, <traverse:fir_planks>, <traverse:fir_planks>],
    [<traverse:fir_planks>, null, <traverse:fir_planks>],
    [<traverse:fir_planks>, <traverse:fir_planks>, <traverse:fir_planks>]
]);

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

recipes.addShapeless("vanilla_gunpowder", <minecraft:gunpowder> * 8, [<ore:dustSalt>, <ore:dustSalt>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSulfur>, <ore:dustCoal>]);

recipes.addShaped("vanilla_tnt", <minecraft:tnt> * 9, [
    [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>],
    [<ore:gunpowder>, <ore:gunpowder>, <ore:gunpowder>],
    [<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>]
]);

# ----------------
# Furnace Recipes
# ----------------
furnace.addRecipe(<ore:ingotBrickSeared>.firstItem * 2, <tconstruct:soil:0>);
furnace.addRecipe(<minecraft:glass_bottle>, <contenttweaker:sandy_bottle>);