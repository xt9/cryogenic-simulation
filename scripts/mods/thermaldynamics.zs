import mods.thermalexpansion.Transposer;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

# ----------------
# Recipes
# ----------------
# Remove all cable recipes added by Dynamics
recipes.removeByRegex("^thermaldynamics:duct_\\w+");

# Remove the default fill recipes
Transposer.removeFillRecipe(<thermaldynamics:duct_0:6>, <liquid:redstone>);
Transposer.removeFillRecipe(<thermaldynamics:duct_0:7>, <liquid:redstone>);
Transposer.removeFillRecipe(<thermaldynamics:duct_0:8>, <liquid:redstone>);
Transposer.removeFillRecipe(<thermaldynamics:duct_0:9>, <liquid:cryotheum>);
Transposer.removeFillRecipe(<thermaldynamics:duct_32>, <liquid:glowstone>);
Transposer.removeFillRecipe(<thermaldynamics:duct_32:1>, <liquid:glowstone>);
Transposer.removeFillRecipe(<thermaldynamics:duct_32:4>, <liquid:glowstone>);
Transposer.removeFillRecipe(<thermaldynamics:duct_32:5>, <liquid:glowstone>);

var structDuct = <thermaldynamics:duct_48>;

recipes.addShaped("td_structural_duct", <thermaldynamics:duct_48> * 16, [
    [<ore:compressed1xCobblestone>, <ore:blockGlass>, <ore:compressed1xCobblestone>],
    [<ore:compressed1xCobblestone>, <ore:dyeBlack>, <ore:compressed1xCobblestone>],
    [<ore:compressed1xCobblestone>, <ore:blockGlass>, <ore:compressed1xCobblestone>]
]);

recipes.addShaped("td_leadstone_fluxduct", <thermaldynamics:duct_0> * 16, [
    [<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>],
    [structDuct, g_blessedConnector, structDuct],
    [<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>]
]);

recipes.addShaped("td_fluiduct", <thermaldynamics:duct_16> * 16, [
    [<ore:ingotCopper>, <minecraft:bucket>, <ore:ingotCopper>],
    [structDuct, <ore:blockGlass>, structDuct],
    [<ore:ingotCopper>, <minecraft:bucket>, <ore:ingotCopper>]
]);

recipes.addShaped("td_itemduct", <thermaldynamics:duct_32> * 16, [
    [<ore:ingotTin>, <ore:chestWood>, <ore:ingotTin>],
    [structDuct, <ore:blockGlass>, structDuct],
    [<ore:ingotTin>, <ore:chestWood>, <ore:ingotTin>]
]);

recipes.addShapeless("td_hardened_fluxduct", <thermaldynamics:duct_0:1>, [<thermaldynamics:duct_0>, <ore:ingotInvar>]);
recipes.addShapeless("td_signalum_fluxduct", <thermaldynamics:duct_0:3>, [<thermaldynamics:duct_0:2>, <ore:ingotSignalum>]);

recipes.addShapeless("td_hardened_fluiduct", <thermaldynamics:duct_16:2>, [<thermaldynamics:duct_16>, <ore:ingotInvar>]);

# -----------------
# Transposed Ducts
# -----------------
Transposer.addFillRecipe(<thermaldynamics:duct_0:2>, <thermaldynamics:duct_0:1>, <liquid:redstone> * 400, 400);
Transposer.addFillRecipe(<thermaldynamics:duct_0:4>, <thermaldynamics:duct_0:3>, <liquid:ender> * 125, 800);

Transposer.addFillRecipe(<thermaldynamics:duct_32:2>, <thermaldynamics:duct_32>, <liquid:glowstone> * 125, 800);

# Todo Viaduct base recipes
# TODO Make Cryo stabilized lategame recipe
# TODO Super-laminar fluiduct lategame recipe