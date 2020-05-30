import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import mods.inworldcrafting.ExplosionCrafting;



# --------------
# Fluid to item
# --------------
# Drop Fir planks in creosote -> Treated wood
FluidToItem.transform(<immersiveengineering:treated_wood>, <liquid:creosote>, [<traverse:fir_planks> * 2]);

# Drop gravel in creosote -> Grout
FluidToItem.transform(<tconstruct:soil>, <liquid:creosote>, [<ore:gravel> * 2]);

# Drop fabric in creosote -> Soaked Fabric
FluidToItem.transform(<contenttweaker:soaked_fabric>, <liquid:creosote>, [<immersiveengineering:material:5>]);

# Drop any Crafting Table in Liquid Starlight -> Luminous Crafting Table
FluidToItem.transform(<astralsorcery:blockaltar>, <liquid:astralsorcery.liquidstarlight>, [<ore:workbench>], true);

# Drop Red rock cobblestone into acid to make Netherrack
FluidToItem.transform(<ore:netherrack>.firstItem, <liquid:etchacid>, [<traverse:red_rock_cobblestone>]);

# Drop regular mycelium in dark water to get midnight mycelium
FluidToItem.transform(<midnight:midnight_mycelium>, <liquid:dark_water>, [<minecraft:mycelium>]);

# -------------------
# Explosion Crafting
# -------------------
# Explode Certus Quartz Ore -> Certus Quartz Crystal
ExplosionCrafting.explodeBlockRecipe(<appliedenergistics2:material> * 2, <appliedenergistics2:quartz_ore>, 100);

# Explode Charged Certus Quartz Ore -> Charged Certus Quartz Crystal
ExplosionCrafting.explodeBlockRecipe(<appliedenergistics2:material:1> * 2, <appliedenergistics2:charged_quartz_ore>, 100);
