import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import scripts.helpers;

# ----------------
# Recipes
# ----------------
recipes.removeByMod("danknull");

# TODO FINISH ALL TIERS
recipes.addShaped("danknull_tier1", <ore:dankNullTier1>.firstItem, [
    [<ore:ingotBrickSeared>, <extrautils2:trashcan>, <ore:ingotBrickSeared>],
    [<ore:blockRedstone>, <immersiveengineering:wooden_device0>, <ore:blockRedstone>],
    [<ore:ingotBrickSeared>, <ore:blockRedstone>, <ore:ingotBrickSeared>]
]);

recipes.addShaped("danknull_tier2", <ore:dankNullTier2>.firstItem, [
    [<ore:gemLapis>, <ore:blockLapis>, <ore:gemLapis>],
    [<immersiveengineering:wooden_device0:5>, <ore:dankNullTier1>.marked("dank"), <immersiveengineering:wooden_device0:5>],
    [<ore:gemLapis>, <immersiveengineering:wooden_device0:5>, <ore:gemLapis>]
], function(out, ins, cInfo) {
    var tag = {} as IData;
    # This is here to keep the tinkers workbench from screwing up JEI autocomplete
    if(ins has "dank" && !isNull(ins.dank) && ins.dank.hasTag) {
        tag = ins.dank.tag;
    }
    return out.withTag(tag);
}, null);

recipes.addShaped("danknull_tier3", <ore:dankNullTier3>.firstItem, [
    [<ore:ingotIron>, <ore:plateSanguineMetal>, <ore:ingotIron>],
    [<ore:chestIron>, <ore:dankNullTier2>.marked("dank"), <ore:chestIron>],
    [<ore:ingotIron>, <ore:chestIron>, <ore:ingotIron>]
], function(out, ins, cInfo) {
    var tag = {} as IData;
    if(ins has "dank" && !isNull(ins.dank) && ins.dank.hasTag) {
        tag = ins.dank.tag;
    }
    return out.withTag(tag);
}, null);

recipes.addShaped("danknull_tier4", <ore:dankNullTier4>.firstItem, [
    [<ore:ingotGold>, <astralsorcery:itemusabledust>, <ore:ingotGold>],
    [<ore:chestGold>, <ore:dankNullTier3>.marked("dank"), <ore:chestGold>],
    [<ore:ingotGold>, <ore:chestGold>, <ore:ingotGold>]
], function(out, ins, cInfo) {
    var tag = {} as IData;
    if(ins has "dank" && !isNull(ins.dank) && ins.dank.hasTag) {
        tag = ins.dank.tag;
    }
    return out.withTag(tag);
}, null);

recipes.addShaped("danknull_tier5", <ore:dankNullTier5>.firstItem, [
    [<pneumaticcraft:capacitor>, <appliedenergistics2:material:35>, <pneumaticcraft:capacitor>],
    [<ore:chestDiamond>, <ore:dankNullTier4>.marked("dank"), <ore:chestDiamond>],
    [<appliedenergistics2:material:24>, <ore:chestDiamond>, <appliedenergistics2:material:24>]
], function(out, ins, cInfo) {
    var tag = {} as IData;
    if(ins has "dank" && !isNull(ins.dank) && ins.dank.hasTag) {
        tag = ins.dank.tag;
    }
    return out.withTag(tag);
}, null);

recipes.addShaped("danknull_tier6", <ore:dankNullTier6>.firstItem, [
    [<ore:octadicCapacitor>, <industrialforegoing:black_hole_unit>, <ore:octadicCapacitor>],
    [<ore:chestObsidian>, <ore:dankNullTier5>.marked("dank"), <ore:chestObsidian>],
    [<ore:itemVibrantPowder>, <ore:chestObsidian>, <ore:itemVibrantPowder>]
], function(out, ins, cInfo) {  
    var tag = {} as IData;
    if(ins has "dank" && !isNull(ins.dank) && ins.dank.hasTag) {
        tag = ins.dank.tag;
    }
    return out.withTag(tag);
}, null);