import crafttweaker.item.IItemStack;
import scripts.helpers;



# ----------------
# Recipes
# ----------------
recipes.removeByMod("danknull");


# TODO FINISH ALL TIERS
recipes.addShaped("danknull_tier1", <danknull:dank_null>, [
    [null, <extrautils2:trashcan>, null],
    [<ore:blockRedstone>, <immersiveengineering:wooden_device0:5>, <ore:blockRedstone>],
    [null, <ore:blockRedstone>, null]
]);

recipes.addShaped("danknull_tier2", <danknull:dank_null:1>, [
    [null, <ore:blockLapis>, null],
    [<ore:blockLapis>, <danknull:dank_null>.marked("dank"), <ore:blockLapis>],
    [null, <ore:blockLapis>, null]
], function(out, ins, cInfo) {
    return out.updateTag(ins.dank.tag);
}, null);

recipes.addShaped("danknull_tier3", <danknull:dank_null:2>, [
    [null, <ore:plateSanguineMetal>, null],
    [<ore:blockIron>, <danknull:dank_null:1>.marked("dank"), <ore:blockIron>],
    [null, <ore:blockIron>, null]
], function(out, ins, cInfo) {
    return out.updateTag(ins.dank.tag);
}, null);

recipes.addShaped("danknull_tier4", <danknull:dank_null:3>, [
    [null, <astralsorcery:itemusabledust>, null],
    [<ore:blockGold>, <danknull:dank_null:2>.marked("dank"), <ore:blockGold>],
    [null, <ore:blockGold>, null]
], function(out, ins, cInfo) {
    return out.updateTag(ins.dank.tag);
}, null);


# ----------------
# Tooltips
# ----------------
# Obsolete since this is now baseline for the mod
/* addDankNullTooltip(<danknull:dank_null>, "128", 9);
addDankNullTooltip(<danknull:dank_null:1>, "512", 18);
addDankNullTooltip(<danknull:dank_null:2>, "1152", 27);
addDankNullTooltip(<danknull:dank_null:3>, "2048", 36);
addDankNullTooltip(<danknull:dank_null:4>, "3200", 45);
addDankNullTooltip(<danknull:dank_null:5>, "2.14b", 54);

function addDankNullTooltip(item as IItemStack, items as string, slots as int) {
    helpers.addAtlasTip(item, [
        format.yellow("Capacity: ") + format.white(items + " items"),
        format.yellow("Slots: ") + format.white("" + slots)
    ]);  
} */