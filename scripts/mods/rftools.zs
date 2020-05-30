# ----------------
# Recipe removals
# ----------------
recipes.remove(<rftools:machine_frame>);
recipes.remove(<rftools:builder>);
recipes.remove(<rftools:shape_card:2>);
recipes.remove(<rftools:machine_base>);
recipes.remove(<rftools:dimensional_shard>);
recipes.remove(<rftools:powercell_simple>);
recipes.remove(<rftools:powercell_card>);

recipes.removeByRecipeName("rftools:powercell_normal");

# ----------------
# Recipes
# ----------------
recipes.addShaped("rft_machine_frame", <rftools:machine_frame>, [
    [<ore:itemRubber>, <ore:plateSteel>, <ore:itemRubber>],
    [<ore:plateSteel>, <immersiveengineering:metal_decoration0:5>, <ore:plateSteel>],
    [<ore:itemRubber>, <ore:dustAstralStarmetal>, <ore:itemRubber>]
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

recipes.addShaped("rft_machine_base", <rftools:machine_base> * 3, [
    [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

recipes.addShaped("rft_dimensional_shard", <rftools:dimensional_shard> * 16, [
    [<minecraft:diamond>, <mysticalagriculture:crafting:5>, <appliedenergistics2:material>],
    [<minecraft:quartz>, <minecraft:quartz>, <minecraft:prismarine_shard>]
]);

recipes.addShaped("rft_powercell_card", <rftools:powercell_card>, [
    [<ore:alloyBasic>, <astralsorcery:itemcraftingcomponent:5>, <ore:alloyBasic>],
    [<ore:trollEye>, <ore:itemRubber>, <ore:trollEye>],
    [<ore:alloyBasic>, <astralsorcery:itemcraftingcomponent:5>, <ore:alloyBasic>]
]);



recipes.replaceAllOccurences(<ore:ingotBrick>, <ore:ingotBrickSeared>, <rftools:shape_card>);