import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import scripts.helpers;

val stagedItems = [
    <appliedenergistics2:controller>,
    <appliedenergistics2:energy_acceptor>
] as IItemStack[];


for item in stagedItems {
    Recipes.setRecipeStage("ae2_stage", item);
    helpers.addAtlasTip(item, [
        format.yellow("Can be crafted after learning everything from"),
        format.yellow("Logistics and You")
    ]);
}

helpers.addAtlasTip(<gamestagebooks:ae2_stage>, [
    format.yellow("Obtained by trading items with the Amadron tablet")
]);