import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.helpers;


# ----------------
# Furnace & Recipe removals
# ----------------
furnace.remove(<exnihilocreatio:item_cooked_silkworm>);

# Remove auto sifter
recipes.remove(<exnihilocreatio:block_auto_sifter>);
# Remove pebble -> cobblestone recipe
recipes.removeByRecipeName("exnihilocreatio:cobblestone");

var misc = [
    <exnihilocreatio:item_material:2>,
    <exnihilocreatio:item_cooked_silkworm>,
    <exnihilocreatio:item_material:7>,
    <exnihilocreatio:block_infesting_leaves>,
    <exnihilocreatio:item_material:1>,
    <exnihilocreatio:item_material:3>,
    <exnihilocreatio:item_material:4>,
    <exnihilocreatio:item_pebble>,
    <exnihilocreatio:item_pebble:1>,
    <exnihilocreatio:item_pebble:2>,
    <exnihilocreatio:item_pebble:3>,
    <exnihilocreatio:item_seed_oak>,
    <exnihilocreatio:item_seed_spruce>,
    <exnihilocreatio:item_seed_birch>,
    <exnihilocreatio:item_seed_jungle>,
    <exnihilocreatio:item_seed_acacia>,
    <exnihilocreatio:item_seed_darkoak>,
    <exnihilocreatio:item_seed_cactus>,
    <exnihilocreatio:item_seed_sugarcane>,
    <exnihilocreatio:item_seed_carrot>,
    <exnihilocreatio:item_seed_potato>,
    <exnihilocreatio:block_netherrack_crushed>,
    <exnihilocreatio:block_endstone_crushed>,
    <exnihilocreatio:block_andesite_crushed>,
    <exnihilocreatio:block_diorite_crushed>,
    <exnihilocreatio:block_granite_crushed>,
    <exnihilocreatio:block_infested_leaves>,
    <exnihilocreatio:block_crucible_wood>,
    <exnihilocreatio:block_end_cake>,
    <exnihilocreatio:block_grinder>,
    <exnihilocreatio:block_crucible:0>,
    <exnihilocreatio:hammer_wood>,
    <exnihilocreatio:hammer_gold>
] as IIngredient[];

# Remove misc recipes
for ingredient in misc {
    recipes.remove(ingredient);
}

recipes.remove(<exnihilocreatio:item_ore_ardite:1>);
recipes.remove(<exnihilocreatio:item_ore_cobalt:1>);
furnace.remove(<tconstruct:ingots>, <exnihilocreatio:item_ore_cobalt:1>);
furnace.remove(<tconstruct:ingots:1>, <exnihilocreatio:item_ore_ardite:1>);

var dolls = [
    <exnihilocreatio:item_material:5>,
    <exnihilocreatio:item_doll>,
    <exnihilocreatio:item_doll:1>,
    <exnihilocreatio:item_doll:2>,
    <exnihilocreatio:item_doll:3>,
    <exnihilocreatio:item_doll:4>,
    <exnihilocreatio:item_doll:5>,
    <exnihilocreatio:item_doll:6>,
    <exnihilocreatio:item_doll:7>
] as IIngredient[];

# Remove doll recipes
for doll in dolls {
    recipes.remove(doll);
}

# ----------------
# Recipes
# ----------------
# Unfired Crucible recipe
recipes.addShaped("exnihilo_crucible", <exnihilocreatio:block_crucible:0>, [
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>], 
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]
]);

# Auto sifter recipe
recipes.addShaped("exnihilo_auto_sifter", <exnihilocreatio:block_auto_sifter>, [
    [<ore:compressed1xCobblestone>, <minecraft:hopper>, <ore:compressed1xCobblestone>],
    [<ore:piston>, <exnihilocreatio:block_axle_stone>, <ore:piston>], 
    [<ore:plankTreatedWood>, <minecraft:hopper>, <ore:plankTreatedWood>]
]);


# ----------------
# Tooltips
# ----------------
helpers.addAtlasTip(<exnihilocreatio:item_seed_sugarcane>, [
    format.yellow("Found by breaking tall grass")
]); 
