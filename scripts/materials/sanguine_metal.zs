import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.tconstruct.Alloy;
import mods.inworldcrafting.FluidToItem;
import mods.thermalexpansion.Transposer;
import scripts.helpers;

# Block to ingots recipe
recipes.addShapeless("sanguine_block_to_ingot", <ore:ingotSanguineMetal>.firstItem * 9, [<ore:blockSanguineMetal>]);

# ----------------
# Melting
# ----------------
Casting.addTableRecipe(<ore:ingotSanguineMetal>.firstItem, <tconstruct:cast_custom>, <liquid:sanguine_metal>, 144);
Casting.addTableRecipe(<ore:plateSanguineMetal>.firstItem, <tconstruct:cast_custom:3>, <liquid:sanguine_metal>, 144);
Casting.addTableRecipe(<ore:gearSanguineMetal>.firstItem, <tconstruct:cast_custom:4>, <liquid:sanguine_metal>, 576);
Casting.addBasinRecipe(<ore:blockSanguineMetal>.firstItem, null, <liquid:sanguine_metal>, 1296);

Melting.addRecipe(<liquid:sanguine_metal> * 72, <ore:rodSanguineMetal>, <liquid:sanguine_metal>.temperature);
Melting.addRecipe(<liquid:sanguine_metal> * 144, <ore:ingotSanguineMetal>, <liquid:sanguine_metal>.temperature);
Melting.addRecipe(<liquid:sanguine_metal> * 144, <ore:plateSanguineMetal>, <liquid:sanguine_metal>.temperature);
Melting.addRecipe(<liquid:sanguine_metal> * 576, <ore:gearSanguineMetal>, <liquid:sanguine_metal>.temperature);
Melting.addRecipe(<liquid:sanguine_metal> * 1296, <ore:blockSanguineMetal>, <liquid:sanguine_metal>.temperature);

# ----------------
# Fluid Transform
# ----------------
# Drop Coagulated blood in molten pigion -> Molten Sanguine Metal
FluidToItem.transform(<ore:ingotSanguineMetal>.firstItem * 4, <liquid:blood>, <ore:ingotPigiron> * 4, true);
FluidToItem.transform(<ore:blockSanguineMetal>.firstItem, <liquid:blood>, <ore:blockPigiron>, true);

# Midgame alternative recipe
Transposer.addFillRecipe(<ore:ingotSanguineMetal>.firstItem, <ore:ingotPigiron>.firstItem, <liquid:blood> * 250, 2000);

helpers.addAtlasTip(<ore:ingotSanguineMetal>.firstItem, [
    format.yellow("Manufactured by dropping Pigiron into Blood")
]);

helpers.addAtlasTip(<ore:blockSanguineMetal>.firstItem, [
    format.yellow("Manufactured by dropping Pigiron into Blood")
]);