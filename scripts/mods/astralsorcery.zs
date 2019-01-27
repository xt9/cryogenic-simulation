import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Altar;
import mods.contenttweaker.Color;

# ----------------
# Lightwell
# ----------------
Lightwell.addLiquefaction(<contenttweaker:troll_eye>, <liquid:troll_eye_goop>, 1.2, 6, 13542773);

# ----------------
# Altar
# ----------------
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");

# ----------------
# Recipe Removal
# ----------------
recipes.remove(<astralsorcery:itemwand>);

# ----------------
# Recipes
# ----------------
recipes.addShaped("as_resonating_wand", <astralsorcery:itemwand>.withTag({astralsorcery: {}}), [
    [null, <ore:gemAquamarine>, <ore:gemPrismarine>],
    [null, <ore:blockMarble>, <ore:gemAquamarine>],
    [<ore:blockMarble>, null, null],
]);

recipes.addShapeless("as_marble_convert", <astralsorcery:blockmarble>, [<chisel:marble2:7>]);