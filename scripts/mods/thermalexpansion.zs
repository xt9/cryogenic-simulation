import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Crucible;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

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
    RedstoneFurnace.addRecipe(ingot.firstItem, ore.firstItem, 1800);
}

# Add dust to ingot recipes
for oreDust, oreIngot in _dustToIngot {
    if(!oreDust.empty && !oreIngot.empty) {
        RedstoneFurnace.addRecipe(getModStackFromDict(oreIngot, "thermalfoundation"), oreDust.firstItem, 1800);
    }
}

# ----------------
# Crucible
# ----------------
Crucible.addRecipe(<liquid:liquid_blaze> * 3000, <contenttweaker:block_blaze_powder>, 11000);

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

# Require hv connectors to make ducts
recipes.replaceAllOccurences(<ore:blockGlass>, <immersiveengineering:connector:2>, <thermaldynamics:duct_0>);

recipes.addShaped("te_cell_frame", <thermalexpansion:frame:128>, [
    [<ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>],
    [<ore:plateElectrum>, <thermalexpansion:frame>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true}), <ore:plateElectrum>], 
    [<ore:plateLead>, <ore:plateElectrum>, <ore:plateLead>]
]);