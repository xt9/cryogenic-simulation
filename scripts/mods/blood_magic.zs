import crafttweaker.item.IIngredient;
import mods.bloodmagic.BloodAltar;
import mods.astralsorcery.Utils;
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.TartaricForge;

# ----------------
# Hellfire Forge
# ----------------
# Remove growth reagent recipe
TartaricForge.removeRecipe([<minecraft:sapling:1>, <minecraft:sapling:1>, <minecraft:reeds>, <minecraft:sugar>]);

# Growth reagent
TartaricForge.addRecipe(<bloodmagic:component:5>, [
    <ore:essencePrudentium>.firstItem,
    <mysticalagriculture:nature_essence>,
    <mysticalagriculture:water_essence>,
    <midnight:midnight_mycelium>
], 20, 20);

# ----------------
# Alchemy Table
# ----------------
# Remove gunpowder recipe
AlchemyTable.removeRecipe([<thermalfoundation:material:772>, <thermalfoundation:material:771>, <minecraft:coal:1>]);

# ----------------
# Blood Altar
# ----------------
# Remove tier 1 blood orb
BloodAltar.removeRecipe(<minecraft:diamond>);
# Remove tier 2 blood orb
BloodAltar.removeRecipe(<minecraft:redstone_block>);
# Remove tier 3 blood orb
BloodAltar.removeRecipe(<minecraft:gold_block>);
# Remove Slates
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.removeRecipe(<bloodmagic:slate>);
BloodAltar.removeRecipe(<bloodmagic:slate:1>);
BloodAltar.removeRecipe(<bloodmagic:slate:2>);
BloodAltar.removeRecipe(<bloodmagic:slate:3>);
# Remove dagger of sacrifice
BloodAltar.removeRecipe(<minecraft:iron_sword>);
# Remove Inscription Tool Air, Fire, Earth & Water
BloodAltar.removeRecipe(<minecraft:ghast_tear>);
BloodAltar.removeRecipe(<minecraft:lapis_block>);
BloodAltar.removeRecipe(<minecraft:magma_cream>);
BloodAltar.removeRecipe(<minecraft:obsidian>);
# Remove slow life essence bucket recipe
BloodAltar.removeRecipe(<minecraft:bucket>);


# Life Essence Bucket
BloodAltar.addRecipe(<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <minecraft:bucket>, 0, 1000, 15, 5);

# Slate Tiers
BloodAltar.addRecipe(<ore:slateTier1>.firstItem, <contenttweaker:block_charred_terracotta>, 0, 500, 15, 5);
BloodAltar.addRecipe(<ore:slateTier2>.firstItem, <ore:slateTier1>.firstItem, 1, 1500, 20, 5);
BloodAltar.addRecipe(<ore:slateTier3>.firstItem, <ore:slateTier2>.firstItem, 2, 3000, 25, 5);
BloodAltar.addRecipe(<ore:slateTier4>.firstItem, <ore:slateTier3>.firstItem, 3, 9000, 30, 15);
BloodAltar.addRecipe(<ore:slateTier5>.firstItem, <ore:slateTier4>.firstItem, 4, 20000, 50, 50);

# Soul snares
BloodAltar.addRecipe(<bloodmagic:soul_snare>, <ore:string>.firstItem, 0, 250, 10, 5);
BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <astralsorcery:itemcrystalsword>, 1, 5000, 20, 5);

# Blood Orbs TODO, DO ALL THE TIERS
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <ore:trollEye>.firstItem, 0, 2000, 15, 5);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <ore:slimeballBlood>.firstItem, 1, 5000, 20, 5);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <astralsorcery:itemperkseal>, 2, 10000, 25, 5);

# Inscription Tool Air
BloodAltar.addRecipe(<bloodmagic:inscription_tool:1>.withTag({uses: 10}), <infinitewatersource:infinitewatersource>, 2, 1000, 20, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:2>.withTag({uses: 10}), <thermalfoundation:material:1024>, 2, 1000, 20, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:3>.withTag({uses: 10}), <astralsorcery:blockblackmarble>, 2, 1000, 20, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:4>.withTag({uses: 10}), <contenttweaker:blood_raven_feather>, 2, 1000, 20, 5);

# Tier 1 Crafting Seeds
BloodAltar.addRecipe(<mysticalagriculture:crafting:17>, <minecraft:wheat_seeds>, 1, 800, 15, 5);

# Blood Diamond
BloodAltar.addRecipe(<contenttweaker:blood_diamond>, <ore:gemDiamond>.firstItem, 2, 3000, 20, 5);

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

