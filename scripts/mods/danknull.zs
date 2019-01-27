import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import scripts.helpers;

# ----------------
# Recipes
# ----------------
recipes.removeByMod("danknull");

<ore:dankNullTier1>.add(<danknull:dank_null:0>);
<ore:dankNullTier2>.add(<danknull:dank_null:1>);
<ore:dankNullTier3>.add(<danknull:dank_null:2>);
<ore:dankNullTier4>.add(<danknull:dank_null:3>);

# TODO FINISH ALL TIERS
recipes.addShaped("danknull_tier1", <ore:dankNullTier1>.firstItem, [
    [null, <extrautils2:trashcan>, null],
    [<ore:blockRedstone>, <immersiveengineering:wooden_device0:5>, <ore:blockRedstone>],
    [null, <ore:blockRedstone>, null]
]);

recipes.addShaped("danknull_tier2", <ore:dankNullTier2>.firstItem, [
    [null, <ore:blockLapis>, null],
    [<ore:blockLapis>, <ore:dankNullTier1>.marked("dank"), <ore:blockLapis>],
    [null, <ore:blockLapis>, null]
], function(out, ins, cInfo) {
    var tag = {} as IData;
    if(ins has "dank" && !isNull(ins.dank) && ins.dank.hasTag) {
        tag = ins.dank.tag;
    }
    return out.withTag(tag);
}, null);

recipes.addShaped("danknull_tier3", <ore:dankNullTier3>.firstItem, [
    [null, <ore:plateSanguineMetal>, null],
    [<ore:blockIron>, <ore:dankNullTier2>.marked("dank"), <ore:blockIron>],
    [null, <ore:blockIron>, null]
], function(out, ins, cInfo) {
    var tag = {} as IData;
    if(ins has "dank" && !isNull(ins.dank) && ins.dank.hasTag) {
        tag = ins.dank.tag;
    }
    return out.withTag(tag);
}, null);

recipes.addShaped("danknull_tier4", <ore:dankNullTier4>.firstItem, [
    [null, <astralsorcery:itemusabledust>, null],
    [<ore:blockGold>, <ore:dankNullTier3>.marked("dank"), <ore:blockGold>],
    [null, <ore:blockGold>, null]
], function(out, ins, cInfo) {
    var tag = {} as IData;
    if(ins has "dank" && !isNull(ins.dank) && ins.dank.hasTag) {
        tag = ins.dank.tag;
    }
    return out.withTag(tag);
}, null);