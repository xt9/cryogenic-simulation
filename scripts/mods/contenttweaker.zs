import crafttweaker.data.IData;
import scripts.helpers;

# ----------------
# Tooltips
# ----------------
helpers.addAtlasTip(<contenttweaker:stone_shears:*>, [
    format.yellow("Crude shears, only effective in a Mason's Worktable")
]);

<contenttweaker:bloody_mud>.addTooltip("Also known as Muddy Blood");

# ----------------
# Recipes
# ----------------
recipes.addShaped("ct_stone_shears", <contenttweaker:stone_shears>, [
    [null, <minecraft:stone:0>, null],
    [<ore:stickWood>, <ore:stickWood>, <minecraft:stone:0>],
    [null, <ore:stickWood>, null]
]);

recipes.addShaped("ct_blaze_powder_block", <contenttweaker:block_blaze_powder>, [
    [<minecraft:blaze_powder>, <minecraft:blaze_powder>],
    [<minecraft:blaze_powder>, <minecraft:blaze_powder>]
]);

recipes.addShaped("ct_faux_steel", <contenttweaker:faux_steel>, [
    [<ore:ingotSteel>, <ore:plateTin>, <ore:ingotSteel>],
    [<ore:plateTin>, <ore:obsidian>, <ore:plateTin>], 
    [<ore:ingotSteel>, <ore:plateTin>, <ore:ingotSteel>]
]);

recipes.addShaped("ct_blessed_portal_stone", <contenttweaker:blessed_portal_stone>, [
    [<contenttweaker:troll_eye>, <ore:ingotAstralStarmetal>, <contenttweaker:troll_eye>],
    [<ore:slateTier2>, <extrautils2:compressedcobblestone:3>, <ore:slateTier2>],
    [<ore:blockManyullyn>, <ore:ingotAstralStarmetal>, <ore:blockManyullyn>]
]);

recipes.addShapeless("ct_blaze_powder_block_uncraft", <minecraft:blaze_powder> * 4, [<contenttweaker:block_blaze_powder>]);

recipes.addShapeless("ct_seared_plate", <contenttweaker:seared_plate>, [
    <immersiveengineering:tool>, <tconstruct:materials>
]);

recipes.addShapeless("ct_bloody_mud", <contenttweaker:bloody_mud>, [
    <ore:slimeballBlood>, <ore:itemClay>, <ore:itemClay>
]);