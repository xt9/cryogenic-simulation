import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import mods.inworldcrafting.ExplosionCrafting;


# Drop Fir planks in creosote -> Treated wood
FluidToItem.transform(<immersiveengineering:treated_wood>, <liquid:creosote>, <traverse:fir_planks> * 2);

# Drop gravel in creosote -> Grout
FluidToItem.transform(<tconstruct:soil>, <liquid:creosote>, <ore:gravel>);

# Drop fabric in creosote -> Soaked Fabric
FluidToItem.transform(<contenttweaker:soaked_fabric>, <liquid:creosote>, <immersiveengineering:material:5>);

# Drop any Crafting Table in Liquid Starlight -> Luminous Crafting Table
FluidToItem.transform(<astralsorcery:blockaltar>, <liquid:astralsorcery.liquidstarlight>, <ore:workbench>, true);


# Explode Mana Infused Ore -> Pulverized Mana Infused Metal
ExplosionCrafting.explodeBlockRecipe(<thermalfoundation:material:72> * 2, <thermalfoundation:ore:8>, 60);

# Explode Certus Quartz Ore -> Certus Quartz Crystal
ExplosionCrafting.explodeBlockRecipe(<appliedenergistics2:material> * 2, <appliedenergistics2:quartz_ore>, 100);

# Explode Charged Certus Quartz Ore -> Charged Certus Quartz Crystal
ExplosionCrafting.explodeBlockRecipe(<appliedenergistics2:material:1>, <appliedenergistics2:charged_quartz_ore>, 100);