import mods.industrialforegoing.Extractor;

# ----------------
# Recipe removal
# ----------------
# Remove this machine frame, use thermal one instead
recipes.remove(<teslacorelib:machine_case>);
recipes.remove(<industrialforegoing:pitiful_fuel_generator>);

# Remove lens recipes, keep recolor recipes
recipes.removeByRegex("^industrialforegoing:laser_lens_(\\d+)$");

# ----------------
# Extractor
# ----------------
Extractor.add(<cryosimadditions:block_blood_resin_log>, <liquid:blood> * 10);