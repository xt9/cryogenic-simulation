import crafttweaker.data.IData;
import scripts.helpers;

# ----------------
# Tooltips
# ----------------
helpers.addAtlasTip(<contenttweaker:stone_shears:*>, [
    format.yellow("Crude shears, only effective in a Mason's Worktable")
]);

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
recipes.addShapeless("ct_blaze_powder_block_uncraft", <minecraft:blaze_powder> * 4, [<contenttweaker:block_blaze_powder>]);

recipes.addShapeless("ct_seared_plate", <contenttweaker:seared_plate>, [
    <immersiveengineering:tool>, <tconstruct:materials>
]);

recipes.addShaped("ct_faux_steel", <contenttweaker:faux_steel>, [
    [<ore:ingotSteel>, <ore:plateTin>, <ore:ingotSteel>],
    [<ore:plateTin>, <ore:obsidian>, <ore:plateTin>], 
    [<ore:ingotSteel>, <ore:plateTin>, <ore:ingotSteel>]
]);