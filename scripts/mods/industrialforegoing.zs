import mods.industrialforegoing.Extractor;

# ----------------
# Recipe removal
# ----------------
# Remove this machine frame, use thermal one instead
recipes.remove(<teslacorelib:machine_case>);
recipes.remove(<industrialforegoing:pitiful_fuel_generator>);
recipes.remove(<industrialforegoing:dryrubber>);

# Remove lens recipes, keep recolor recipes
recipes.removeByRegex("^industrialforegoing:laser_lens_(\\d+)$");

# ----------------
# Recipes
# ----------------
recipes.replaceAllOccurences(<minecraft:furnace>, <thermalexpansion:frame>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true}), <industrialforegoing:tree_fluid_extractor>);


# ----------------
# Extractor
# ----------------
Extractor.add(<cryosimadditions:block_blood_resin_log>, <liquid:blood> * 10);