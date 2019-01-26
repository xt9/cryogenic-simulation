import mods.jei.JEI;

# Hide Brewing since it's disabled
JEI.hideCategory("minecraft.brewing");

# Remove pointless categories
JEI.hideCategory("Painter");
JEI.hideCategory("EIOTank");
JEI.hideCategory("SolarPanel");

JEI.addItem(<thermalexpansion:frame>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true}));