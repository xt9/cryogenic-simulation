import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.bloodmagic.BloodAltar;
import mods.thermalexpansion.Transposer;
import scripts.helpers;

# ----------------
# Furnace removal
# ----------------
furnace.remove(<mysticalagriculture:crafting:38>);
furnace.remove(<mysticalagriculture:crafting:28>);

# ----------------
# Recipe removal
# ----------------
var recipeRemovals = [
    <mysticalagriculture:core_remover>,
    <mysticalagriculture:chunk>,
    <mysticalagriculture:chunk:1>,
    <mysticalagriculture:chunk:2>,
    <mysticalagriculture:chunk:3>,
    <mysticalagriculture:chunk:4>,
    <mysticalagradditions:insanium:1>,
    <mysticalagradditions:insanium:4>,
    <mysticalagriculture:soulium_dagger>,
    <mysticalagriculture:crafting:16>,
    <mysticalagriculture:crafting:17>,
    <mysticalagriculture:crafting:18>,
    <mysticalagriculture:crafting:19>,
    <mysticalagriculture:crafting:20>,
    <mysticalagriculture:crafting:21>,
    <mysticalagriculture:mystical_fertilizer>,
    <mysticalagriculture:infusion_crystal>,
    <mysticalagriculture:tier1_inferium_seeds>,
    <mysticalagriculture:tier2_inferium_seeds>,
    <mysticalagriculture:tier3_inferium_seeds>,
    <mysticalagriculture:tier4_inferium_seeds>,
    <mysticalagriculture:tier5_inferium_seeds>,
    <mysticalagriculture:crafting:50>,
    <mysticalagriculture:crafting:51>,
    <mysticalagriculture:crafting:52>,
    <mysticalagriculture:crafting:53>,
    <mysticalagriculture:crafting:54>,
    <mysticalagriculture:watering_can>,
    <mysticalagriculture:watering_can:1>,
    <mysticalagriculture:watering_can:2>,
    <mysticalagriculture:watering_can:3>,
    <mysticalagriculture:watering_can:4>,
    <mysticalagriculture:seed_reprocessor>,
    <mysticalagriculture:growth_accelerator>,
    <mysticalagriculture:inferium_reprocessor>,
    <mysticalagriculture:prudentium_reprocessor>,
    <mysticalagriculture:intermedium_reprocessor>,
    <mysticalagriculture:superium_reprocessor>,
    <mysticalagriculture:supremium_reprocessor>,
    <mysticalagriculture:ultimate_reprocessor>,
    <mysticalagriculture:tinkering_table>,
    <mysticalagriculture:tinkering_table:1>,
    <mysticalagriculture:tinkering_table:2>,
    <mysticalagriculture:tinkering_table:3>,
    <mysticalagriculture:tinkering_table:4>,
    <mysticalagradditions:tinkering_table>,
    <mysticalagriculture:crafting:48>,
    <mysticalagriculture:crafting:29>,
    <mysticalagriculture:crafting:15>,
    <mysticalagriculture:inferium_furnace>,
    <mysticalagriculture:prudentium_furnace>,
    <mysticalagriculture:intermedium_furnace>,
    <mysticalagriculture:superium_furnace>,
    <mysticalagriculture:supremium_furnace>,
    <mysticalagriculture:ultimate_furnace>
] as IIngredient[];

for item in recipeRemovals {
    recipes.remove(item);
}

# Remove tier 6 seeds since we have no control over the outputs
recipes.remove(<mysticalagradditions:tier6_inferium_seeds>);

# Remove duplicate marble recipe 
recipes.removeByRecipeName("mysticalagriculture:marble_seeds_1");
# Remove the AS marble recipe since it requires aquamarine essence
recipes.removeByRecipeName("mysticalagriculture:blockmarble");
# Remove the regular marble recipe so we can add it as the AS marble
recipes.removeByRecipeName("mysticalagriculture:marble2");

# ------------------------
# Resource Essence Tweaks
# ------------------------
recipes.addShaped("ma_as_marble",<astralsorcery:blockmarble> * 16, [
    [<mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>],
    [<mysticalagriculture:marble_essence>, null, <mysticalagriculture:marble_essence>],
    [<mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>]
]);


recipes.addShaped("ma_as_sooty_marble", <astralsorcery:blockblackmarble> * 16, [
    [<mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>],
    [<mysticalagriculture:marble_essence>, <ore:dustCoal>, <mysticalagriculture:marble_essence>],
    [<mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>, <mysticalagriculture:marble_essence>]
]);

# ----------------
# General Recipes
# ----------------
recipes.addShaped("tier1_inferium_seeds", <mysticalagriculture:tier1_inferium_seeds>, [
    [<ore:blockInferiumEssence>, <ore:essenceInferium>, <ore:blockInferiumEssence>],
    [<ore:essenceInferium>, <mysticalagriculture:crafting:17>, <ore:essenceInferium>],
    [<ore:blockInferiumEssence>, <ore:essenceInferium>, <ore:blockInferiumEssence>]
]);

recipes.addShaped("tier2_inferium_seeds", <mysticalagriculture:tier2_inferium_seeds>, [
    [<ore:blockPrudentiumEssence>, <ore:essencePrudentium>, <ore:blockPrudentiumEssence>],
    [<ore:essencePrudentium>, <ore:charredTerracotta>, <ore:essencePrudentium>],
    [<ore:blockPrudentiumEssence>, <ore:essencePrudentium>, <ore:blockPrudentiumEssence>]
]);

# ----------------
# Tier 1 Recipes
# ----------------
recipes.replaceAllOccurences(<mysticalagriculture:chunk:7>, <minecraft:porkchop>, <mysticalagriculture:pig_seeds>);
recipes.replaceAllOccurences(<mysticalagriculture:chunk:8>, <minecraft:feather>, <mysticalagriculture:chicken_seeds>);
recipes.replaceAllOccurences(<mysticalagriculture:chunk:9>, <minecraft:leather>, <mysticalagriculture:cow_seeds>);
recipes.replaceAllOccurences(<mysticalagriculture:chunk:10>, <minecraft:wool>, <mysticalagriculture:sheep_seeds>);

# ----------------
# Tooltip
# ----------------
addSeedTip(<mysticalagriculture:tier1_inferium_seeds>, 1, "Inferium");
addSeedTip(<mysticalagriculture:tier2_inferium_seeds>, 3, "Inferium");
addSeedTip(<mysticalagriculture:tier3_inferium_seeds>, 8, "Inferium");
addSeedTip(<mysticalagriculture:tier4_inferium_seeds>, 16, "Inferium");
addSeedTip(<mysticalagriculture:tier5_inferium_seeds>, 64, "Inferium");

function addSeedTip(item as IItemStack, yield as int, outputType as string) {
    helpers.addAtlasTip(item, [
        format.yellow(outputType + " per harvest in the Cloche: ") + format.white("" + yield)
    ]);
}