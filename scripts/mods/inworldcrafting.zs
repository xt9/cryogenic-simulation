import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;

# Drop Fir planks in creosote -> Treated wood
FluidToItem.transform(<immersiveengineering:treated_wood>, <liquid:creosote>, <traverse:fir_planks> * 2);

# Drop gravel in creosote -> Grout
FluidToItem.transform(<tconstruct:soil>, <liquid:creosote>, <ore:gravel>);

# Drop fabric in creosote -> Soaked Fabric
FluidToItem.transform(<contenttweaker:soaked_fabric>, <liquid:creosote>, <immersiveengineering:material:5>);

# Drop any Crafting Table in Liquid Starlight -> Luminous Crafting Table
FluidToItem.transform(<astralsorcery:blockaltar>, <liquid:astralsorcery.liquidstarlight>, <ore:workbench>, true);