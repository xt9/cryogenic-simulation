import crafttweaker.item.IIngredient;

# ----------------
# Recipes
# ----------------
# Remove all cable recipes added by AE2
recipes.removeByRegex("^appliedenergistics2:network/cables/\\w+");

# Remove Mystical Agriculture press recipes
recipes.remove(<appliedenergistics2:material:13>);
recipes.remove(<appliedenergistics2:material:14>);
recipes.remove(<appliedenergistics2:material:15>);
recipes.remove(<appliedenergistics2:material:19>);
# Remove EnderIO recipe for enderdust
recipes.remove(<appliedenergistics2:material:46>);
# Remove disk drive recipe
recipes.remove(<appliedenergistics2:drive>);
# Remove growth accelerator
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
# Remove default interface recipes
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
# Remove Quartz glass & Quartz fiber recipe
recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.remove(<appliedenergistics2:part:140>);
# Remove storage bus recipe
recipes.remove(<appliedenergistics2:part:220>);
# Remove fluid storage bus recipe
recipes.remove(<appliedenergistics2:part:221>);
# Remove molecular assembler recipe
recipes.remove(<appliedenergistics2:molecular_assembler>);
# Remove crafting unit recipe
recipes.remove(<appliedenergistics2:crafting_unit>);

recipes.addShapeless("ae2_network_tool", <appliedenergistics2:network_tool>, [<thermalfoundation:wrench>, <ore:itemIlluminatedPanel>]);

recipes.addShaped("ae2_controller", <appliedenergistics2:controller>, [
    [<ore:crystalFluix>, <immersiveengineering:material:27>, <ore:crystalFluix>],
    [<pneumaticcraft:transistor>, <chisel:futura:2>, <pneumaticcraft:transistor>],
    [<ore:crystalFluix>, <pneumaticcraft:network_component:3>, <ore:crystalFluix>]
]);

recipes.addShaped("ae2_disk_drive", <appliedenergistics2:drive>, [
    [<ore:crystalFluix>, <pneumaticcraft:network_component:2>, <ore:crystalFluix>],
    [<appliedenergistics2:material:24>, <ore:chestObsidian>, <appliedenergistics2:material:24>],
    [<ore:ingotIronCompressed>, <pneumaticcraft:network_component:3>, <ore:ingotIronCompressed>]
]);

recipes.addShaped("ae2_interface", <appliedenergistics2:interface> * 4, [
    [<ore:plasticLightGray>, <appliedenergistics2:material:22>, <ore:plasticLightGray>],
    [<appliedenergistics2:material:43>, <pneumaticcraft:heat_frame>, <appliedenergistics2:material:44>],
    [<ore:plasticLightGray>, <pneumaticcraft:network_component:3>, <ore:plasticLightGray>]
]);

recipes.addShapeless("ae2_fluid_interface", <appliedenergistics2:fluid_interface>, [<appliedenergistics2:interface>, <minecraft:bucket>]);

recipes.addShaped("ae2_crafting_unit", <appliedenergistics2:crafting_unit>, [
    [<ore:plasticWhite>, <appliedenergistics2:material:22>, <ore:plasticWhite>],
    [<appliedenergistics2:material:23>, <pneumaticcraft:heat_frame>, <appliedenergistics2:material:23>],
    [<ore:plasticWhite>, <pneumaticcraft:network_component:3>, <ore:plasticWhite>]
]);

recipes.addShaped("ae2_molecular_assembler", <appliedenergistics2:molecular_assembler>, [
    [<ore:crystalFluix>, <ore:workbench>, <ore:crystalFluix>],
    [<appliedenergistics2:material:44>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:43>],
    [<ore:crystalFluix>, <pneumaticcraft:network_component:3>, <ore:crystalFluix>]
]);

recipes.addShaped("ae2_quartz_fiber", <appliedenergistics2:part:140> * 8, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:dustQuartz>, <ore:dustQuartz>, <ore:dustQuartz>],
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
]);

recipes.addShaped("ae2_storage_bus", <appliedenergistics2:part:220>, [
    [<ore:chestObsidian>, <appliedenergistics2:interface>],
    [<ore:piston>, null]
]);

recipes.addShaped("ae2_fluid_storage_bus", <appliedenergistics2:part:221>, [
    [<extrautils2:drum:1>, <appliedenergistics2:fluid_interface>],
    [<ore:piston>, null]
]);

# Cables
recipes.addShaped("ae2_dense_cable", <appliedenergistics2:part:76>, [
    [null, <appliedenergistics2:part:56>, null],
    [<minecraft:wool>, <appliedenergistics2:material:7>, <minecraft:wool>],
    [null, <appliedenergistics2:part:56>, null]
]);

recipes.addShapeless("ae2_cable_anchor", <appliedenergistics2:part:120> * 8, [<immersiveengineering:tool>, <ore:ingotHOPGraphite>]);
recipes.addShapeless("ae2_smart_cable", <appliedenergistics2:part:56> * 2, [<appliedenergistics2:part:16>, <ore:dustRedstone>, <ore:wool>, <ore:dustGlowstone>]);
recipes.addShapeless("ae2_glass_cable", <appliedenergistics2:part:16> * 4, [<appliedenergistics2:part:140>, <ore:crystalFluix>]);

# Chip crafting
recipes.addShapeless("ae2_calculation_circuit", <appliedenergistics2:material:16>, [
    <appliedenergistics2:material:13>.reuse(), <ore:crystalCertusQuartz>, <ore:dustRedstone>,
    <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>,
    <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>
]);

recipes.addShapeless("ae2_logic_circuit", <appliedenergistics2:material:18>, [
    <appliedenergistics2:material:15>.reuse(), <ore:ingotGold>, <ore:dustRedstone>,
    <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>,
    <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>
]);

recipes.addShapeless("ae2_engineering_circuit", <appliedenergistics2:material:17>, [
    <appliedenergistics2:material:14>.reuse(), <ore:gemDiamond>, <ore:dustRedstone>,
    <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>,
    <ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>
]);

recipes.addShapeless("ae2_silicon_circuit", <appliedenergistics2:material:20> * 2, [
    <appliedenergistics2:material:19>.reuse(), <ore:dustRedstone>, <ore:dustRedstone>,
    <ore:plasticLightGray>, <ore:itemSilicon>, <ore:itemSilicon>,
    <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>
]);

