import mods.mekanism.crusher;

# --------
# Crusher
# --------
crusher.removeRecipe(<ore:itemSilicon>.firstItem);


# --------
# Recipes
# --------
# Remove Power cables
recipes.remove(<mekanism:transmitter>);
# Remove Fluid cables
recipes.remove(<mekanism:transmitter:1>);

# Remove all plastic block recipes, get colored variants with Chisel
recipes.remove(<mekanism:plasticblock:*>);
recipes.remove(<mekanism:slickplasticblock:*>);
recipes.remove(<mekanism:glowplasticblock:*>);
recipes.remove(<mekanism:reinforcedplasticblock:*>);
recipes.remove(<mekanism:roadplasticblock:*>);
recipes.remove(<mekanism:plasticfence:*>);
recipes.remove(<mekanism:glowpanel:*>);
recipes.remove(<mekanism:balloon:*>);

# Remove charcoal block recipe
recipes.remove(<mekanism:basicblock:3>);

recipes.addShaped("mekanism_plasticblock", <mekanism:plasticblock:15> * 4, [
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],
    [<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>]
]);

recipes.addShaped("mekanism_plasticblock_glow", <mekanism:glowplasticblock:15> * 3, [
    [<mekanism:plasticblock:15>, <mekanism:plasticblock:15>],
    [<mekanism:plasticblock:15>, <ore:dustGlowstone>]
]);

recipes.addShaped("mekanism_reinforced_plasticblock", <mekanism:reinforcedplasticblock:15> * 4, [
    [null, <mekanism:plasticblock:15>, null],
    [<mekanism:plasticblock:15>, <ore:dustOsmium>, <mekanism:plasticblock:15>],
    [null, <mekanism:plasticblock:15>, null]
]);

recipes.addShaped("mekanism_road_plasticblock", <mekanism:roadplasticblock:15> * 3, [
    [<ore:sand>, <ore:sand>, <ore:sand>],
    [<mekanism:slickplasticblock:15>, <mekanism:slickplasticblock:15>, <mekanism:slickplasticblock:15>],
    [<ore:sand>, <ore:sand>, <ore:sand>]
]);

recipes.addShaped("mekanism_plastic_fence", <mekanism:plasticfence:15> * 3, [
    [<mekanism:plasticblock:15>, <mekanism:polyethene:3>, <mekanism:slickplasticblock:15>],
    [<mekanism:plasticblock:15>, <mekanism:polyethene:3>, <mekanism:plasticblock:15>]
]);

recipes.addShaped("mekanism_glow_panel", <mekanism:glowpanel:15> * 4, [
    [<ore:paneGlass>, <mekanism:polyethene:2>, <ore:paneGlass>],
    [<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
    [<ore:dustGlowstone>, <mekanism:polyethene:2>, <ore:dustGlowstone>]
]);

recipes.addShapeless("mekanism_balloon", <mekanism:balloon:15> * 2, [<ore:leather>, <ore:string>, <ore:dyeWhite>]);
