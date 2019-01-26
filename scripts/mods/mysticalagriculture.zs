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
    <mysticalagriculture:tier1_inferium_seeds>
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
    [<ore:essenceInferium>, <ore:essenceInferium>, <ore:essenceInferium>],
    [<ore:essenceInferium>, <mysticalagriculture:crafting:17>, <ore:essenceInferium>],
    [<ore:essenceInferium>, <ore:essenceInferium>, <ore:essenceInferium>]
]);

# ----------------
# Tier 1 Recipes
# ----------------

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