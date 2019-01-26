import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import scripts.helpers;

val ticonStage = [
    <tconstruct:smeltery_controller>,
    <tconstruct:seared_furnace_controller>,
    <tconstruct:tinker_tank_controller>,
    <tconstruct:seared:3>,
    <tconstruct:seared_tank>,
    <tconstruct:seared_tank:1>,
    <tconstruct:seared_tank:2>,
    <tconstruct:casting>,
    <tconstruct:casting:1>,
    <tconstruct:smeltery_io>,
    <tconstruct:seared_glass>,
    <tconstruct:faucet>
] as IItemStack[];

helpers.addAtlasTip(<gamestagebooks:ticon_stage>, [
    format.yellow("Found in the skies of the Contained Ecosystems dimension")
]);

for item in ticonStage {
    Recipes.setRecipeStage("ticon_stage", item);
    helpers.addAtlasTip(item, [
        format.yellow("Can be crafted after reading Hot liquids for dummies")
    ]);
}