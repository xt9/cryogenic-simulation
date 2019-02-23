import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import scripts.helpers;

val enderIoStage = [
    <enderio:item_material:0>,
    <enderio:block_tank:0>,
    <enderio:block_tank:1>,
    <enderio:item_item_conduit>,
    <enderio:item_liquid_conduit:0>,
    <enderio:item_liquid_conduit:1>,
    <enderio:item_liquid_conduit:2>,
    <enderio:item_power_conduit:0>,
    <enderio:item_power_conduit:1>,
    <enderio:item_power_conduit:2>,
    <enderio:item_redstone_conduit>
] as IItemStack[];

for item in enderIoStage {
    Recipes.setRecipeStage("eio_stage", item);
/*     helpers.addAtlasTip(item, [
        format.yellow("Can be crafted after learning everything in the Ender Arcana")
    ]); */
}