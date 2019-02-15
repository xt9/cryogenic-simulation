import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;


import crafttweaker.oredict.IOreDictEntry;
function getModStackFromDict(oreDictEntry as IOreDictEntry, mod as string) as IItemStack {
    for item in oreDictEntry.itemArray as IItemStack[] {
        if(item.definition.owner == mod) {
            return item;
        }
    }
    # Fallback return if nothing is found
    return oreDictEntry.firstItem;
}

# ----------------
# Furnace
# ----------------
# Hot enough to melt bricks, woop woop
RedstoneFurnace.addRecipe(<minecraft:brick>, <minecraft:clay_ball>, 2000);
RedstoneFurnace.addRecipe(<minecraft:netherbrick>, <minecraft:netherrack>, 2000);
RedstoneFurnace.addRecipe(<minecraft:glass>, <minecraft:sand:*>, 2000);

# Add ore to ingot recipes that were removed from the furnace
for ore, ingot in _oreToIngot {
    RedstoneFurnace.addRecipe(ingot.firstItem, ore.firstItem, 2000);
}

# Add dust to ingot recipes
for oreDust, oreIngot in _dustToIngot {
    if(!oreDust.empty && !oreIngot.empty) {
        RedstoneFurnace.addRecipe(getModStackFromDict(oreIngot, "thermalfoundation"), oreDust.firstItem, 2000);
    }
}

# ----------------
# Pulverizer
# ----------------

# ----------------
# Crucible
# ----------------
Crucible.addRecipe(<liquid:liquid_blaze> * 3000, <contenttweaker:block_blaze_powder>, 11000);
Crucible.addRecipe(<liquid:troll_eye_goop> * 4000, <contenttweaker:troll_eye>, 8000);

# ----------------
# Transposer
# ----------------
Transposer.addFillRecipe(<astralsorcery:itemusabledust> * 4, <ore:dustGlowstone>.firstItem, <liquid:astralsorcery.liquidstarlight> * 500, 2000);

# ----------------
# Induction Smelter
# ----------------
# Charred terracotta
InductionSmelter.addRecipe(<contenttweaker:block_charred_terracotta> * 8, <contenttweaker:charred_feather>, <tconstruct:materials> * 8, 3000);
# Charred Feather Pile Qol recipe
InductionSmelter.addRecipe(<contenttweaker:charred_feather>, <ore:ravenFeather>.firstItem, <ore:dustCoal>.firstItem, 3000);
# Pigiron QoL recipe
InductionSmelter.addRecipe(<ore:ingotPigiron>.firstItem, <ore:ingotIron>.firstItem * 2, <contenttweaker:bloody_mud>, 3000);
# Steel from coke dust
InductionSmelter.addRecipe(<ore:ingotSteel>.firstItem, <ore:ingotIron>.firstItem, <ore:dustCoke>.firstItem, 3000);

# Metal chests cheaper recipes
InductionSmelter.addRecipe(<ore:chestIron>.firstItem, <ore:ingotIron>.firstItem * 4, <minecraft:chest>, 5000);
InductionSmelter.addRecipe(<ore:chestSilver>.firstItem, <ore:ingotSilver>.firstItem * 4, <ore:chestIron>.firstItem, 5000);
InductionSmelter.addRecipe(<ore:chestGold>.firstItem, <ore:ingotGold>.firstItem * 4, <ore:chestSilver>.firstItem, 5000);
InductionSmelter.addRecipe(<ore:chestDiamond>.firstItem, <ore:gemDiamond>.firstItem * 4, <ore:chestGold>.firstItem, 5000);
InductionSmelter.addRecipe(<ore:chestObsidian>.firstItem, <ore:obsidian>.firstItem * 4, <ore:chestDiamond>.firstItem, 5000);

# ----------------
# Compactor
# ----------------
Compactor.addStorageRecipe(<industrialforegoing:dryrubber>, <industrialforegoing:tinydryrubber> * 9, 4000);

# ----------------
# Recipe removals
# ----------------
recipes.remove(<thermalfoundation:material:22>);
recipes.remove(<thermalfoundation:material:23>);
# Remove cell frame
recipes.remove(<thermalexpansion:frame:128>);
# Remove the machine frame, later added by IE blueprint
recipes.remove(<thermalexpansion:frame>);
recipes.remove(<thermalexpansion:frame:64>);
# Remove Foundation Gears from crafting
recipes.remove(<thermalfoundation:material:26>);
recipes.remove(<thermalfoundation:material:27>);

# ----------------
# Recipes
# ----------------
# Require a blessed frame for all machine crafts
recipes.replaceAllOccurences(<thermalexpansion:frame>, <thermalexpansion:frame>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true}));

# Require MV connectors & Starmetal to make ducts
recipes.replaceAllOccurences(<ore:blockGlass>, <immersiveengineering:connector:4>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true}), <thermaldynamics:duct_0>);
recipes.replaceAllOccurences(<ore:ingotSanguineMetal>, <ore:ingotAstralStarmetal>, <thermaldynamics:duct_0>);

# Change compactor recipe
recipes.replaceAllOccurences(<ore:ingotBronze>, <ore:ingotHOPGraphite>, <thermalexpansion:machine:5>);
recipes.replaceAllOccurences(<ore:gearCopper>, <ore:gearBronze>, <thermalexpansion:machine:5>);

recipes.addShaped("te_cell_frame", <thermalexpansion:frame:128>, [
    [<ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>],
    [<ore:plateElectrum>, <thermalexpansion:frame>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true}), <ore:plateElectrum>], 
    [<ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>]
]);