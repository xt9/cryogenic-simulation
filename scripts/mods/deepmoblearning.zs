

# ----------------
# Recipes
# ----------------
recipes.remove(<deepmoblearning:machine_casing>);
recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.remove(<deepmoblearning:polymer_clay>);
recipes.remove(<deepmoblearning:extraction_chamber>);

recipes.addShaped("dml_machine_casing", <deepmoblearning:machine_casing>, [
    [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_plate>],
    [<deepmoblearning:soot_covered_redstone>, <rftools:machine_frame>, <deepmoblearning:soot_covered_redstone>],
    [<deepmoblearning:soot_covered_plate>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_plate>]
]);

recipes.addShaped("dml_simulation_chamber", <deepmoblearning:simulation_chamber>, [
    [null, <ore:paneGlass>, null],
    [<ore:enderpearl>, <deepmoblearning:machine_casing>, <ore:enderpearl>],
    [<ore:plasticCyan>, <minecraft:comparator>, <ore:plasticCyan>]
]);

recipes.addShaped("dml_loot_fabricator", <deepmoblearning:extraction_chamber>, [
    [null, <ore:ingotGold>, null],
    [<ore:gemDiamond>, <deepmoblearning:machine_casing>, <ore:gemDiamond>],
    [<ore:plasticOrange>, <minecraft:comparator>, <ore:plasticOrange>]
]);
