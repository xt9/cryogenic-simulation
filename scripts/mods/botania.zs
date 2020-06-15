import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import scripts.helpers;

# ----------
# Tooltips
# ----------
helpers.addAtlasTip(<botania:flower>, [
    format.yellow("Crafted by transmuting Ghost Plants with the Resonating Wand")
]);

helpers.addAtlasTip(<botania:storage:3>, [
    format.yellow("Can be sacrificed in the Mark of the Falling Tower ritual")
]);

# ----------------
# Recipes
# ----------------
recipes.remove(<botania:altar>);
recipes.remove(<botania:pool:*>);
recipes.remove(<botania:runealtar>);
recipes.remove(<botania:spreader>);
recipes.remove(<botania:fertilizer>);


recipes.addShapeless("botania_floral_fertilizer", <botania:fertilizer> * 4, [<fertilization:florists_bonemeal>, <ore:livingMatterOverworld>, <botania:petal:*>]);

recipes.addShaped("botania_petal_apothecary", <botania:altar>, [
    [null, <forge:bucketfilled>.withTag({FluidName: "dark_water", Amount: 1000}).onlyWithTag({FluidName: "dark_water", Amount: 1000}), null],
    [<ore:petalWhite>, <midnight:nightstone>, <ore:petalWhite>],
    [<midnight:nightstone>, <midnight:nightstone>, <midnight:nightstone>]
]);

recipes.addShaped("botania_mana_pool", <botania:pool>, [
    [null, null, null],
    [<ore:livingrock>, <bloodmagic:altar>, <ore:livingrock>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

recipes.addShaped("botania_fab_mana_pool", <botania:pool:3>, [
    [null, null, null],
    [<botania:shimmerrock>, <bloodmagic:altar>, <botania:shimmerrock>],
    [<botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>]
]);

recipes.addShaped("botania_diluted_mana_pool", <botania:pool:2>, [
    [<botania:livingrock0slab>, null, <botania:livingrock0slab>],
    [<botania:livingrock0slab>, null, <botania:livingrock0slab>],
    [<botania:livingrock0slab>, <bloodmagic:altar>, <botania:livingrock0slab>]
]);

recipes.addShaped("botania_mana_spreader", <botania:spreader>, [
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>],
    [<contenttweaker:troll_eye>, <botania:petal:*>, <mysticalagriculture:gold_essence>],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
]);

recipes.addShaped("botania_runic_altar", <botania:runealtar>, [
    [<botania:livingrock0slab>, <ore:manaPearl>, <botania:livingrock0slab>],
    [<ore:slateTier3>, <bloodmagic:blood_rune:1>, <ore:slateTier3>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);


# ------------------
# Petal Apothecary
# ------------------
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));

# ------------------
# Pure Daisy
# ------------------
PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.removeRecipe(<botania:livingrock>);

PureDaisy.addRecipe(<cryosimadditions:block_blood_resin_log>, <botania:livingwood>);
PureDaisy.addRecipe(<midnight:nightstone>, <botania:livingrock>);

# ------------------
# Runic Altar
# ------------------
RuneAltar.removeRecipe(<botania:rune>);
RuneAltar.removeRecipe(<botania:rune:1>);
RuneAltar.removeRecipe(<botania:rune:2>);
RuneAltar.removeRecipe(<botania:rune:3>);
RuneAltar.removeRecipe(<botania:rune:7>);

# Rune of Water
RuneAltar.addRecipe(<botania:rune> * 2, [
    <ore:slateTier3>.firstItem,
    <ore:ingotAstralStarmetal>.firstItem,
    <ore:ingotManasteel>.firstItem,
    <ore:manaDiamond>.firstItem,
    <ore:manaPearl>.firstItem,
    <rftools:dimensional_shard>,
    <infinitewatersource:infinitewatersource>
    <minecraft:fish:3>,
    <minecraft:fish:2>
], 8000);

# Rune of Fire
RuneAltar.addRecipe(<botania:rune:1> * 2, [
    <ore:slateTier3>.firstItem,
    <ore:ingotAstralStarmetal>.firstItem,
    <ore:ingotManasteel>.firstItem,
    <ore:manaDiamond>.firstItem,
    <ore:manaPearl>.firstItem,
    <rftools:dimensional_shard>,
    <ore:livingMatterHell>.firstItem,
    <ore:dustPyrotheum>.firstItem,
    <minecraft:tnt>
], 8000);

# Rune of Earth
RuneAltar.addRecipe(<botania:rune:2> * 2, [
    <ore:slateTier3>.firstItem,
    <ore:ingotAstralStarmetal>.firstItem,
    <ore:ingotManasteel>.firstItem,
    <ore:manaDiamond>.firstItem,
    <ore:manaPearl>.firstItem,
    <rftools:dimensional_shard>,
    <ore:livingMatterOverworld>.firstItem,
    <midnight:midnight_dirt>,
    <astralsorcery:blockblackmarble>
], 8000);

# Rune of Air
RuneAltar.addRecipe(<botania:rune:3> * 2, [
    <ore:slateTier3>.firstItem,
    <ore:ingotAstralStarmetal>.firstItem,
    <ore:ingotManasteel>.firstItem,
    <ore:manaDiamond>.firstItem,
    <ore:manaPearl>.firstItem,
    <rftools:dimensional_shard>,
    <ore:ravenFeather>.firstItem,
    <ore:manaString>.firstItem,
    <minecraft:cooked_chicken>
], 8000);

# Rune of Winter
RuneAltar.addRecipe(<botania:rune:7>, [
    <ore:runeWaterB>.firstItem,
    <ore:runeEarthB>.firstItem,
    <ore:blockPackedIce>.firstItem,
    <ore:blockPackedIce>.firstItem,
    <ore:blockPackedIce>.firstItem,
    <minecraft:snow>,
    <minecraft:snow>,
    <minecraft:snow>
], 12000);

# Dim 5 portal block
RuneAltar.addRecipe(<ore:cropPumpkin>.firstItem, [
    <botania:livingwood:5>,
    <botania:pylon>,
    <ore:ingotPlatinum>.firstItem,
    <ore:ingotMithril>.firstItem,
    <ore:ingotIridium>.firstItem,
    <ore:ingotUranium>.firstItem,
    <ore:runePrideB>.firstItem,
    <ore:runeManaB>.firstItem,
    <ore:runeWrathB>.firstItem
], 50000);