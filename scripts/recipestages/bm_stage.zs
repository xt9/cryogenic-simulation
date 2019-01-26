import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import scripts.helpers;

val bloodMagicStage = [
    <bloodmagic:altar>,
    <bloodmagic:sacrificial_dagger>
] as IItemStack[];

helpers.addAtlasTip(<gamestagebooks:bm_stage>, [
    format.yellow("Obtained by killing a Blood Raven, which are found"),
    format.yellow("in the Blessed Plains biome on the Lunar Plane")
]);

for item in bloodMagicStage {
    Recipes.setRecipeStage("bm_stage", item);
    helpers.addAtlasTip(item, [
        format.yellow("Can be crafted after learning everything from"),
        format.yellow("What They Dont Teach You in Hematology Class")
    ]);
}