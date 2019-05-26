
# ----------
# Recipes 
# ----------
recipes.remove(<extrautils2:ineffableglass>);
recipes.remove(<extrautils2:ineffableglass:2>);
recipes.remove(<extrautils2:ineffableglass:3>);
# Remove crafter recipe
recipes.remove(<extrautils2:crafter>);
# Remove Stone Drum
recipes.remove(<extrautils2:drum>);
# Remove Creative Drum recipe
recipes.remove(<extrautils2:drum:4>);
# Remove User recipe
recipes.remove(<extrautils2:user>);

# ----------------
# Recipes
# ----------------
recipes.addShaped("eu2_mechuser", <extrautils2:user>, [
    [null, <ore:gearDiamond>, null],
    [<ore:ingotHOPGraphite>, g_blessedMachineFrame, <ore:ingotHOPGraphite>], 
    [<ore:gearSanguineMetal>, <ore:partToolRodSanguineMetal>, <ore:gearSanguineMetal>]
]);

recipes.addShaped("eu2_crafter", <extrautils2:crafter>, [
    [<immersiveengineering:metal_decoration0:3>, <ore:workbenchWood>],
    [<ore:gearStone>, null]
]);

recipes.addShaped("eu2_ethereal_glass", <extrautils2:ineffableglass> * 8, [
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
    [<minecraft:glass>, <chisel:cloud>, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
]);

recipes.addShaped("eu2_ineffable_glass", <extrautils2:ineffableglass:2> * 8, [
    [<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
    [<tconstruct:clear_glass>, <chisel:cloud>, <tconstruct:clear_glass>],
    [<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>]
]);

recipes.addShaped("eu2_dark_ineffable_glass", <extrautils2:ineffableglass:3> * 8, [
    [<pickletweaks:dark_glass>, <pickletweaks:dark_glass>, <pickletweaks:dark_glass>],
    [<pickletweaks:dark_glass>, <chisel:cloud>, <pickletweaks:dark_glass>],
    [<pickletweaks:dark_glass>, <pickletweaks:dark_glass>, <pickletweaks:dark_glass>]
]);

recipes.addShaped("eu2_demon_drum", <extrautils2:drum:3>, [
    [<ore:plateSanguineMetal>, <ore:ingotGold>, <ore:plateSanguineMetal>],
    [<ore:slateTier4>, <extrautils2:drum:2>, <ore:slateTier4>],
    [<ore:plateSanguineMetal>, <ore:ingotGold>, <ore:plateSanguineMetal>]
]);

