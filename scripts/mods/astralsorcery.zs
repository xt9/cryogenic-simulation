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
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_black_raw");

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

var marble = <ore:blockMarble> | <ore:stoneMarble> | <chisel:marble2:7>;
recipes.addShaped("as_sooty_marble", <astralsorcery:blockblackmarble> * 8, [
    [marble, marble, marble],
    [marble, <ore:coal>, marble],
    [marble, marble, marble],
]);

recipes.addShapeless("as_marble_convert", <astralsorcery:blockmarble>, [<chisel:marble2:7>]);