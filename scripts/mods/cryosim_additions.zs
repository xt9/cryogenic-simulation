import scripts.helpers;

# Disable blood logs
furnace.setFuel(<cryosimadditions:block_blood_resin_log>, 0);

helpers.addAtlasTip(<cryosimadditions:blessed_sapling>, [
    format.yellow("Can only be grown in a Cloche"),
    format.yellow("on top of ") + format.red("Scorched Grass")
]);



# ----------------
# Recipes
# ----------------

# Leaves to red dye
recipes.addShapeless("csa_red_dye", <minecraft:dye:1>, [<cryosimadditions:block_blood_leaves>, <cryosimadditions:block_blood_leaves>]);