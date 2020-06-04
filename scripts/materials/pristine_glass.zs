import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

# ----------------
# Melting
# ----------------

# Lenses
Casting.addTableRecipe(<industrialforegoing:laser_lens>, <tconstruct:cast>.withTag({PartType: "tconstruct:pan_head"}), <liquid:pristine_glass>, 288);

# Square lenses (AS)
Casting.addTableRecipe(<ore:glassLensPristine>.firstItem, <tconstruct:cast_custom:3>, <liquid:pristine_glass>, 144);

Melting.addRecipe(<liquid:pristine_glass> * 288, <industrialforegoing:laser_lens>, <liquid:pristine_glass>.temperature);
Melting.addRecipe(<liquid:pristine_glass> * 144, <ore:glassLensPristine>.firstItem, <liquid:pristine_glass>.temperature);