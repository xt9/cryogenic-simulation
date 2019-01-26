import crafttweaker.item.IIngredient;
import mods.bloodmagic.BloodAltar;
import mods.astralsorcery.Utils;

# ----------------
# OreDict
# ----------------
<ore:slateTier1>.add(<bloodmagic:slate>);
<ore:slateTier2>.add(<bloodmagic:slate:1>);
<ore:slateTier3>.add(<bloodmagic:slate:2>);
<ore:slateTier4>.add(<bloodmagic:slate:3>);
<ore:slateTier5>.add(<bloodmagic:slate:4>);

# ----------------
# Blood Altar
# ----------------
BloodAltar.removeRecipe(<minecraft:diamond>);
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.removeRecipe(<bloodmagic:slate>);
BloodAltar.removeRecipe(<bloodmagic:slate:1>);
BloodAltar.removeRecipe(<bloodmagic:slate:2>);
BloodAltar.removeRecipe(<bloodmagic:slate:3>);

# Slate Tiers
BloodAltar.addRecipe(<ore:slateTier1>.firstItem, <astralsorcery:blockblackmarble>, 0, 500, 10, 5);
BloodAltar.addRecipe(<ore:slateTier2>.firstItem, <ore:slateTier1>.firstItem, 1, 1500, 15, 5);
BloodAltar.addRecipe(<ore:slateTier3>.firstItem, <ore:slateTier2>.firstItem, 2, 3000, 20, 5);
BloodAltar.addRecipe(<ore:slateTier4>.firstItem, <ore:slateTier3>.firstItem, 3, 9000, 30, 15);
BloodAltar.addRecipe(<ore:slateTier5>.firstItem, <ore:slateTier4>.firstItem, 4, 20000, 50, 50);

# Soul snares
BloodAltar.addRecipe(<bloodmagic:soul_snare>, <ore:string>.firstItem, 0, 250, 10, 5);

# First blood orb TODO, DO ALL THE TIERS
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <ore:slimeballBlood>.firstItem, 0, 2000, 50, 5);

# Tier 1 Crafting Seeds
BloodAltar.addRecipe(<mysticalagriculture:crafting:17>, <minecraft:wheat_seeds>, 1, 800, 20, 20);

# ----------------
# Recipe removal
# ----------------
recipes.remove(<bloodmagic:altar>);
recipes.remove(<bloodmagic:soul_snare>);
recipes.remove(<bloodmagic:sacrificial_dagger>);
recipes.remove(<bloodmagic:blood_rune:3>);
recipes.remove(<bloodmagic:blood_rune:4>);
recipes.remove(<bloodmagic:incense_altar>);
recipes.remove(<bloodmagic:soul_forge>);

# ----------------
# Recipes
# ----------------
val runes = [
    <bloodmagic:blood_rune:0>,
    <bloodmagic:blood_rune:1>,
    <bloodmagic:blood_rune:5>,
    <bloodmagic:blood_rune:6>,
    <bloodmagic:blood_rune:7>,
    <bloodmagic:blood_rune:8>,
    <bloodmagic:blood_rune:9>,
    <bloodmagic:blood_rune:10>
] as IIngredient[];

for rune in runes {
    recipes.replaceAllOccurences(<ore:stone>, <astralsorcery:blockblackmarble>, rune);
}

recipes.addShaped("bm_sacrifice_rune", <bloodmagic:blood_rune:3>, [
    [<astralsorcery:blockblackmarble>, <ore:slateTier2>, <astralsorcery:blockblackmarble>],
    [<contenttweaker:blood_raven_feather>, <bloodmagic:blood_rune>, <contenttweaker:blood_raven_feather>],
    [<astralsorcery:blockblackmarble>, null, <astralsorcery:blockblackmarble>]
]);

recipes.addShaped("bm_self_sacrifice_rune", <bloodmagic:blood_rune:4>, [
    [<astralsorcery:blockblackmarble>, <contenttweaker:blood_raven_feather>, <astralsorcery:blockblackmarble>],
    [<ore:dustGlowstone>, <bloodmagic:blood_rune>, <ore:dustGlowstone>],
    [<astralsorcery:blockblackmarble>, null, <astralsorcery:blockblackmarble>]
]);

recipes.addShaped("bm_altar", <bloodmagic:altar>, [
    [null, <contenttweaker:blood_raven_feather>, null],
    [<ore:plateSanguineMetal>, <tconstruct:smeltery_controller>, <ore:plateSanguineMetal>],
    [<ore:blockSanguineMetal>, <immersiveengineering:metal_decoration0:7>, <ore:blockSanguineMetal>]
]);

recipes.addShaped("bm_sac_dagger", <bloodmagic:sacrificial_dagger>, [
    [null, null, <ore:ingotSanguineMetal>],
    [null, <ore:ingotSanguineMetal>, null],
    [<ore:stickIron>, null, null]
]);

recipes.addShaped("bm_soul_forge", <bloodmagic:soul_forge>, [
    [Utils.getCrystalORIngredient(false, false), null, Utils.getCrystalORIngredient(false, false)],
    [<ore:ingotBrickSeared>, <ore:blockSeared>, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, <ore:plateSanguineMetal>, <ore:ingotBrickSeared>]
]);

