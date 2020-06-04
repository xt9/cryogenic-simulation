#priority 997

# ----------------
# Recipe removals
# ----------------
recipes.remove(<chickenchunks:chunk_loader>);
recipes.remove(<chickenchunks:chunk_loader:1>);
recipes.remove(<infinitewatersource:infinitewatersource>);
# Remove redundant recipes
recipes.removeByRecipeName("minecraft:hopper");
recipes.removeByRecipeName("extrautils2:mini_chest_to_chest");
recipes.removeByRecipeName("quark:chest_1");

# ----------------
# Recipes
# ----------------
# Glass to Glass conversion
recipes.addShapeless("misc/vanilla_to_tconstruct_glass", <tconstruct:clear_glass>, [<minecraft:glass>]);
recipes.addShapeless("misc/tconstruct_to_enderio_glass", <enderio:block_fused_glass>, [<tconstruct:clear_glass>]);
recipes.addShapeless("misc/enderio_to_vanilla_glass", <minecraft:glass>, [<enderio:block_fused_glass>]);

recipes.addShapeless("pack_guidebook", <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:cryosim_manual"}), [
    <minecraft:book>, <chisel:antiblock:15>
]);

# Chunkloaders
recipes.addShaped("cc_chunkloader", <chickenchunks:chunk_loader>, [
    [<ore:gemAquamarine>, <ore:glassLensPristine>, <ore:gemAquamarine>],
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
    [<ore:obsidian>, <minecraft:enchanting_table>, <ore:obsidian>]
]);

recipes.addShapeless("cc_chunkloader_small", <chickenchunks:chunk_loader:1> * 8, [<chickenchunks:chunk_loader>]);

recipes.addShaped("infinitewatersource", <infinitewatersource:infinitewatersource>, [
    [<ore:ingotTin>, <immersiveengineering:material:8>, <ore:ingotTin>],
    [<minecraft:water_bucket>, <immersiveengineering:metal_decoration0:3>, <minecraft:water_bucket>],
    [<ore:ingotTin>, <immersiveengineering:material:8>, <ore:ingotTin>]
]);

# ----------------
# Seeds
# ----------------
vanilla.seeds.addSeed(<minecraft:carrot> % 7);
vanilla.seeds.addSeed(<minecraft:potato> % 7);
vanilla.seeds.addSeed(<minecraft:beetroot_seeds> % 5);
vanilla.seeds.addSeed(<minecraft:pumpkin_seeds> % 5);
vanilla.seeds.addSeed(<minecraft:melon_seeds> % 5);
vanilla.seeds.addSeed(<exnihilocreatio:item_seed_sugarcane> % 3);
vanilla.seeds.addSeed(<exnihilocreatio:item_seed_cactus> % 3);

/* vanilla.seeds.removeSeed(<bewitchment:seed_belladonna:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_thistle:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_wormwood:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_asphodel:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_chrysanthemum:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_aconitum:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_mint:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_lavender:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_mandrake:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_tulsi:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_kenaf:0>);
vanilla.seeds.removeSeed(<bewitchment:seed_hellebore:0>);       
vanilla.seeds.removeSeed(<bewitchment:seed_ginger:0>);    */    