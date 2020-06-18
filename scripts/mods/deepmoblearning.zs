# ----------------
# Recipes
# ----------------
recipes.remove(<deepmoblearning:machine_casing>);
recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.remove(<deepmoblearning:polymer_clay>);
recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.remove(<deepmoblearning:data_model_blank>);
recipes.remove(<deepmoblearning:deep_learner>);

recipes.addShaped("dml_machine_casing", <deepmoblearning:machine_casing>, [
    [<deepmoblearning:soot_covered_plate>, <ore:plasticBlack>, <deepmoblearning:soot_covered_plate>],
    [<ore:ingotHOPGraphite>, <rftools:machine_frame>, <ore:ingotHOPGraphite>],
    [<deepmoblearning:soot_covered_plate>, <ore:plasticBlack>, <deepmoblearning:soot_covered_plate>]
]);

recipes.addShaped("dml_deep_learner", <deepmoblearning:deep_learner>, [
    [<deepmoblearning:soot_covered_plate>, <ore:plasticCyan>, <deepmoblearning:soot_covered_plate>],
    [<ore:plasticPurple>, <ore:glassLensPristine>, <ore:plasticPurple>],
    [<deepmoblearning:soot_covered_plate>, <pneumaticcraft:advanced_pcb>, <deepmoblearning:soot_covered_plate>]
]);

recipes.addShaped("dml_simulation_chamber", <deepmoblearning:simulation_chamber>, [
    [null, <ore:glassLensPristine>, null],
    [<ore:enderpearl>, <deepmoblearning:machine_casing>, <ore:enderpearl>],
    [<ore:plasticCyan>, <pneumaticcraft:advanced_pcb>, <ore:plasticCyan>]
]);

recipes.addShaped("dml_loot_fabricator", <deepmoblearning:extraction_chamber>, [
    [null, <ore:glassLensPristine>, null],
    [<ore:gearGold>, <deepmoblearning:machine_casing>, <ore:gearGold>],
    [<ore:plasticOrange>, <pneumaticcraft:advanced_pcb>, <ore:plasticOrange>]
]);

recipes.addShaped("dml_data_model", <deepmoblearning:data_model_blank>, [
    [<deepmoblearning:soot_covered_plate>, <ore:polymerClay>, <deepmoblearning:soot_covered_plate>],
    [<ore:plasticCyan>, <pneumaticcraft:advanced_pcb>, <ore:plasticCyan>],
    [<deepmoblearning:soot_covered_plate>, <ore:polymerClay>, <deepmoblearning:soot_covered_plate>]
]);

recipes.replaceAllOccurences(<minecraft:comparator>, <pneumaticcraft:advanced_pcb>, <deepmoblearningbm:digital_agonizer>);

recipes.addShaped("dml_matter_to_netherrack", <minecraft:netherrack> * 32, [
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:livingMatterHell>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);
