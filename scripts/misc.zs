#priority 997

# ----------------
# Recipe removals
# ----------------

# ----------------
# Recipes
# ----------------
# Glass to Glass conversion
recipes.addShapeless("vanilla_to_tconstruct_glass", <minecraft:glass>, [<tconstruct:clear_glass>]);
recipes.addShapeless("tconstruct to vanilla_glass", <tconstruct:clear_glass>, [<minecraft:glass>]);

recipes.addShapeless("pack_guidebook", <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:cryosim_manual"}), [
    <minecraft:book>, <chisel:antiblock:15>
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

vanilla.seeds.removeSeed(<bewitchment:seed_belladonna:0>);
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
vanilla.seeds.removeSeed(<bewitchment:seed_ginger:0>);       