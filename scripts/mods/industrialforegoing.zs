import mods.industrialforegoing.Extractor;

# ----------------
# Recipe removal
# ----------------
# Remove this machine frame, use thermal one instead
recipes.remove(<teslacorelib:machine_case>);
recipes.remove(<industrialforegoing:pitiful_fuel_generator>);
recipes.remove(<industrialforegoing:dryrubber>);
recipes.remove(<industrialforegoing:material_stonework_factory>);
recipes.remove(<industrialforegoing:laser_lens:*>);
recipes.remove(<industrialforegoing:laser_lens_inverted:*>);
recipes.remove(<industrialforegoing:mob_imprisonment_tool>);
recipes.remove(<industrialforegoing:black_hole_unit>);
recipes.remove(<industrialforegoing:black_hole_tank>);
recipes.remove(<industrialforegoing:water_condensator>);
recipes.remove(<industrialforegoing:mob_duplicator>);
recipes.remove(<industrialforegoing:black_hole_controller_reworked>);

# ----------------
# Recipes
# ----------------
recipes.replaceAllOccurences(<minecraft:furnace>, g_blessedServo, <industrialforegoing:tree_fluid_extractor>);
recipes.replaceAllOccurences(<ore:blockGlowstone>, <ore:ingotHOPGraphite>, <industrialforegoing:laser_drill>);
recipes.replaceAllOccurences(<ore:blockGlowstone>, <astralsorcery:itemusabledust>, <industrialforegoing:laser_base>);

recipes.addShapeless(<industrialforegoing:laser_lens_inverted>, [<industrialforegoing:laser_lens>, <minecraft:redstone_torch>]);


recipes.addShaped("if_mob_imprisonment_tool", <industrialforegoing:mob_imprisonment_tool>, [
    [null, <ore:itemRubber>, null],
    [<ore:itemRubber>, <openblocks:beartrap>, <ore:itemRubber>],
    [null, <ore:itemRubber>, null]
]);

recipes.addShaped("if_stonework_factory", <industrialforegoing:material_stonework_factory>, [
    [<ore:itemRubber>, <ore:workbenchWood>, <ore:itemRubber>],
    [<minecraft:diamond_pickaxe>, g_blessedMachineFrame, <tconstruct:smeltery_controller>],
    [<bloodmagic:component:1>, <pneumaticcraft:transistor>, <bloodmagic:component>]
]);

recipes.addShaped("if_black_hole_controller", <industrialforegoing:black_hole_controller_reworked>, [
    [<ore:plasticGray>, <ore:pearlEnderEye>, <ore:plasticGray>],
    [<ore:ingotPinkSlime>, <appliedenergistics2:drive>, <ore:ingotPinkSlime>],
    [<pneumaticcraft:transistor>, <deepmoblearning:machine_casing>, <pneumaticcraft:transistor>]
]);

recipes.addShaped("if_black_hole_unit", <industrialforegoing:black_hole_unit>, [
    [<ore:plasticGray>, <ore:pearlEnderEye>, <ore:plasticGray>],
    [<appliedenergistics2:material:36>, <ore:chestObsidian>, <appliedenergistics2:material:36>],
    [<pneumaticcraft:transistor>, <deepmoblearning:machine_casing>, <pneumaticcraft:transistor>]
]);

recipes.addShaped("if_black_hole_tank", <industrialforegoing:black_hole_tank>, [
    [<ore:plasticGray>, <ore:pearlEnderEye>, <ore:plasticGray>],
    [<appliedenergistics2:material:55>, <extrautils2:drum:3>, <appliedenergistics2:material:55>],
    [<pneumaticcraft:transistor>, <deepmoblearning:machine_casing>, <pneumaticcraft:transistor>]
]);

# Gate mob duplicators behind deep mob learning
recipes.addShaped("if_mob_duplicator", <industrialforegoing:mob_duplicator>, [
    [<ore:plasticGray>, <deepmoblearning:deep_learner>, <ore:plasticGray>],
    [<deepmoblearning:pristine_matter_enderman>, <deepmoblearning:machine_casing>, <deepmoblearning:pristine_matter_enderman>],
    [<ore:polymerClay>, <ore:blockEmerald>, <ore:polymerClay>]
]);



# ----------------
# Extractor
# ----------------
Extractor.add(<cryosimadditions:block_blood_resin_log>, <liquid:blood> * 8);