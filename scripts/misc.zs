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
vanilla.seeds.addSeed(<minecraft:carrot> % 700);
vanilla.seeds.addSeed(<minecraft:potato> % 700);
vanilla.seeds.addSeed(<minecraft:beetroot_seeds> % 500);
vanilla.seeds.addSeed(<minecraft:pumpkin_seeds> % 500);
vanilla.seeds.addSeed(<minecraft:melon_seeds> % 500);
vanilla.seeds.addSeed(<exnihilocreatio:item_seed_sugarcane> % 300);
vanilla.seeds.addSeed(<exnihilocreatio:item_seed_cactus> % 300);