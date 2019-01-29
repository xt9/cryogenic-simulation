import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.bloodmagic.BloodAltar;
import scripts.helpers;

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
    <mysticalagradditions:insanium:4>,
    <mysticalagriculture:soulium_dagger>,
    <mysticalagriculture:crafting:16>,
    <mysticalagriculture:crafting:17>,
    <mysticalagriculture:mystical_fertilizer>,
    <mysticalagriculture:infusion_crystal>,
    <mysticalagriculture:tier1_inferium_seeds>,
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
    <mysticalagradditions:tinkering_table>
] as IIngredient[];

for item in recipeRemovals {
    recipes.remove(item);
}

# Remove tier 6 seeds since we have no control over the outputs
recipes.remove(<mysticalagradditions:tier6_inferium_seeds>);


# ----------------
# General Recipes
# ----------------
recipes.addShaped("tier1_inferium_seeds", <mysticalagriculture:tier1_inferium_seeds>, [
    [<ore:blockInferiumEssence>, <ore:essenceInferium>, <ore:blockInferiumEssence>],
    [<ore:essenceInferium>, <mysticalagriculture:crafting:17>, <ore:essenceInferium>],
    [<ore:blockInferiumEssence>, <ore:essenceInferium>, <ore:blockInferiumEssence>]
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