# ----------------
# Recipe removals
# ----------------
recipes.remove(<rftools:machine_frame>);
recipes.remove(<rftools:builder>);
recipes.remove(<rftools:shape_card:2>);

# ----------------
# Recipes
# ----------------
recipes.addShaped("rft_machine_frame", <rftools:machine_frame>, [
    [<ore:ingotBrickSeared>, <ore:plateSteel>, <ore:ingotBrickSeared>],
    [<ore:plateSteel>, g_blessedMachineFrame, <ore:plateSteel>],
    [<ore:ingotBrickSeared>, <ore:plateSteel>, <ore:ingotBrickSeared>]
]);

recipes.addShaped("rft_builder", <rftools:builder>, [
    [<ore:ingotBrickDried>, <astralsorcery:itemskyresonator>, <ore:ingotBrickDried>],
    [<ore:slateTier1>, <rftools:machine_frame>, <ore:slateTier1>],
    [<ore:ingotBrickDried>, <ore:gemAquamarine>, <ore:ingotBrickDried>]
]);

recipes.addShaped("rft_quarry_card", <rftools:shape_card:2>, [
    [<astralsorcery:itemcraftingcomponent:5>, <bloodmagic:sentient_pickaxe>, <astralsorcery:itemcraftingcomponent:5>],
    [<ore:dustAstralStarmetal>, <rftools:shape_card>, <ore:dustAstralStarmetal>],
    [<ore:slateTier3>, <astralsorcery:itemcrystalshovel>, <ore:slateTier3>]
]);

recipes.replaceAllOccurences(<ore:ingotBrick>, <ore:ingotBrickSeared>, <rftools:shape_card>);