import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Altar;
import mods.contenttweaker.Color;
import mods.astralsorcery.StarlightInfusion;
import scripts.helpers;

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
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");

Altar.addAttunementAltarRecipe("cryogenic:ct/portal_stone", <contenttweaker:blessed_portal_stone>, 1800, 240, [
    <contenttweaker:troll_eye>, <ore:ingotAstralStarmetal>, <contenttweaker:troll_eye>,
    <ore:slateTier2>, <extrautils2:compressedcobblestone:3>, <ore:slateTier2>,
    <ore:blockManyullyn>, <ore:ingotAstralStarmetal>, <ore:blockManyullyn>,
    <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>
]);

Altar.addAttunementAltarRecipe("cryogenic:ct/cave_illuminator", <astralsorcery:blockworldilluminator>, 1200, 160, [
    <astralsorcery:blockmarble:3>, <astralsorcery:itemusabledust>, <astralsorcery:blockmarble:3>,
    <ore:blockGlowstone>, <deepmoblearning:pristine_matter_witch>, <ore:blockGlowstone>,
    <astralsorcery:blockmarble:3>, <astralsorcery:itemusabledust>, <astralsorcery:blockmarble:3>,
    <astralsorcery:itemcraftingcomponent:3>, <astralsorcery:itemcraftingcomponent:3>, <astralsorcery:itemcraftingcomponent:3>, <astralsorcery:itemcraftingcomponent:3>
]);

Altar.addAttunementAltarRecipe("cryogenic:mysticalagri/t2seed", <mysticalagriculture:crafting:18>, 80, 120, [
    <ore:essencePrudentium>, <mysticalagriculture:nature_essence>, <ore:essencePrudentium>,
    <mysticalagriculture:nature_essence>, <mysticalagriculture:crafting:17>, <mysticalagriculture:nature_essence>,
    <ore:essencePrudentium>, <mysticalagriculture:nature_essence>, <ore:essencePrudentium>,
    <ore:essencePrudentium>, <ore:essencePrudentium>, <ore:essencePrudentium>, <ore:essencePrudentium>
]);

# ------------------
# Starlight infusion
# ------------------
StarlightInfusion.removeInfusion(<minecraft:gunpowder>);

# ----------------
# Tooltips
# ----------------
helpers.addAtlasTip(<astralsorcery:blockblackmarble>, [
    format.yellow("Found on the Lunar Plane")
]);

helpers.addAtlasTip(<astralsorcery:blockinfusedwood>, [
    format.yellow("Crafted by throwing wood into Liquid Starlight.")
]);


# ----------------
# Recipe Removal
# ----------------
recipes.remove(<astralsorcery:blockaltar>);
recipes.remove(<astralsorcery:itemwand>);
recipes.remove(<astralsorcery:blockblackmarble>);

# ----------------
# Recipes
# ----------------
recipes.addShaped("as_resonating_wand", <astralsorcery:itemwand>.withTag({astralsorcery: {}}), [
    [null, <ore:gemAquamarine>, <ore:gemPrismarine>],
    [null, <ore:blockMarble>, <ore:gemAquamarine>],
    [<ore:blockMarble>, null, null],
]);

recipes.addShapeless("as_marble_convert", <astralsorcery:blockmarble>, [<chisel:marble2:7>]);