import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;
import mods.thermalexpansion.Pulverizer;
import mods.lateoredictremoval.OreDictUtil;
import mods.tconstruct.Melting;

#priority 998

# ----------------
# Function Section
# ----------------

# Call with a list of oreDictEntries the targeted mod should be removed from
function oreDictModRemove(oreDictEntry as IOreDictEntry, modToRemove as string) {
    for item in oreDictEntry.items {
        if(item.definition.owner == modToRemove) {
            OreDictUtil.remove(oreDictEntry, item);
        }
    }
}

function getModStackFromDict(oreDictEntry as IOreDictEntry, mod as string) as IItemStack {
    for item in oreDictEntry.itemArray as IItemStack[] {
        if(item.definition.owner == mod) {
            return item;
        }
    }
    # Fallback return if nothing is found
    return oreDictEntry.firstItem;
}


# ----------------
# UniDict Section
# ----------------
# Removes the IE plate recipes
mods.unidict.removalByKind.get("Crafting").remove("plate");

# Remove all block recipes so slabs -> block from IE gets removed
mods.unidict.removalByKind.get("Crafting").remove("block");
mods.unidict.api.newShapedRecipeTemplate("block", 1, [
    ["ingot", "ingot", "ingot"],
    ["ingot", "ingot", "ingot"],
    ["ingot", "ingot", "ingot"]
]);

# ----------------
# TiCon Melting removals
# ----------------
var ieMetalSlabs = {
    <liquid:copper>: <immersiveengineering:storage_slab>,
    <liquid:aluminum>: <immersiveengineering:storage_slab:1>,
    <liquid:lead>: <immersiveengineering:storage_slab:2>,
    <liquid:silver>: <immersiveengineering:storage_slab:3>,
    <liquid:nickel>: <immersiveengineering:storage_slab:4>,
    <liquid:constantan>: <immersiveengineering:storage_slab:6>,
    <liquid:electrum>: <immersiveengineering:storage_slab:7>
 } as IItemStack[ILiquidStack];

for fluid, itemStack in ieMetalSlabs {
    Melting.removeRecipe(fluid, itemStack);
    recipes.remove(itemStack);
}

# ----------------
# Metal & Furnace Section
# ----------------

# Immersive Engineering
var ieOres = {
    <ore:oreCopper>: <immersiveengineering:ore>,
    <ore:oreAluminum>: <immersiveengineering:ore:1>,
    <ore:oreLead>: <immersiveengineering:ore:2>,
    <ore:oreSilver>: <immersiveengineering:ore:3>,
    <ore:oreNickel>: <immersiveengineering:ore:4>
} as IItemStack[IOreDictEntry];

# Remove IE ores from oredict
for oreDictEntry, ore in ieOres {
    oreDictModRemove(oreDictEntry, "immersiveengineering");
}

global _oreToIngot as IOreDictEntry[IOreDictEntry] = {
    <ore:oreIron>: <ore:ingotIron>,
    <ore:oreGold>: <ore:ingotGold>,
    <ore:oreCopper>: <ore:ingotCopper>,
    <ore:oreTin>: <ore:ingotTin>,
    <ore:oreSilver>: <ore:ingotSilver>,
    <ore:oreLead>: <ore:ingotLead>,
    <ore:oreAluminum>: <ore:ingotAluminum>,
    <ore:oreNickel>: <ore:ingotNickel>,
    <ore:oreArdite>: <ore:ingotArdite>,
    <ore:oreCobalt>: <ore:ingotCobalt>,
    <ore:orePlatinum>: <ore:ingotPlatinum>,
    <ore:oreIridium>: <ore:ingotIridium>,
    <ore:oreMithril>: <ore:ingotMithril>,
    <ore:oreUranium>: <ore:ingotUranium>
};

global _dustToIngot as IOreDictEntry[IOreDictEntry] = {
    <ore:dustIron>: <ore:ingotIron>,
    <ore:dustGold>: <ore:ingotGold>,
    <ore:dustCopper>: <ore:ingotCopper>,
    <ore:dustTin>: <ore:ingotTin>,
    <ore:dustSilver>: <ore:ingotSilver>,
    <ore:dustLead>: <ore:ingotLead>,
    <ore:dustAluminum>: <ore:ingotAluminum>,
    <ore:dustNickel>: <ore:ingotNickel>,
    <ore:dustArdite>: <ore:ingotArdite>,
    <ore:dustCobalt>: <ore:ingotCobalt>,
    <ore:dustPlatinum>: <ore:ingotPlatinum>,
    <ore:dustIridium>: <ore:ingotIridium>,
    <ore:dustMithril>: <ore:ingotMithril>,
    <ore:dustUranium>: <ore:ingotUranium>,
    <ore:dustElectrum>: <ore:ingotElectrum>,
    <ore:dustSteel>: <ore:ingotSteel>,
    <ore:dustInvar>: <ore:ingotInvar>,
    <ore:dustBronze>: <ore:ingotBronze>,
    <ore:dustConstantan>: <ore:ingotConstantan>,
};

var nuggets = [
    <ore:nuggetIron>,
    <ore:nuggetGold>
] as IOreDictEntry[];

# Remove ingot and nugget furnace recipes
for dust, ingot in _dustToIngot {
    furnace.remove(ingot as IIngredient);
}

for nugget in nuggets {
    furnace.remove(nugget as IIngredient);
}


# ----------------
# Gear Section
# ----------------
var metalGears = [
    <thermalfoundation:material:24>,
    <thermalfoundation:material:25>,
    <thermalfoundation:material:256>,
    <thermalfoundation:material:257>,
    <thermalfoundation:material:258>,
    <thermalfoundation:material:259>,
    <thermalfoundation:material:260>,
    <thermalfoundation:material:261>,
    <thermalfoundation:material:262>,
    <thermalfoundation:material:263>,
    <thermalfoundation:material:264>,
    <thermalfoundation:material:288>,
    <thermalfoundation:material:289>,
    <thermalfoundation:material:290>,
    <thermalfoundation:material:291>,
    <thermalfoundation:material:292>,
    <thermalfoundation:material:293>,
    <thermalfoundation:material:294>,
    <thermalfoundation:material:295>
] as IIngredient[];

for gear in metalGears {
    recipes.remove(gear);
}

var gearWood = <ore:gearWood>;
gearWood.remove(<thermalfoundation:material:22>);

# Remove stone gear from the oredict entry
var gearStone = <ore:gearStone>;
gearStone.remove(<exnihilocreatio:item_material:7>);
gearStone.remove(<thermalfoundation:material:23>);


# ----------------
# Chisel section, remove from oredicts so JEI item cycling is less "annoying"
# ----------------
var chiselOreDicts = [
    <ore:ice>,
    <ore:blockDirt>,
    <ore:blockIce>,
    <ore:blockWool>,
    <ore:blockQuartz>,
    <ore:blockRedstone>,
    <ore:blockMossy>,
    <ore:cobblestone>,
    <ore:stone>,
    <ore:stoneGranite>,
    <ore:stoneDiorite>,
    <ore:stoneAndesite>,
    <ore:stoneEndstone>,
    <ore:stoneBasalt>,
    <ore:stoneMarble>,
    <ore:glowstone>,
    <ore:brickStone>,
    <ore:bricksStone>,
    <ore:sandstone>,
    <ore:obsidian>,
    <ore:netherrack>,
    <ore:plankWood>
] as IOreDictEntry[];

for oreDictEntry in chiselOreDicts {
    oreDictModRemove(oreDictEntry, "chisel");
}

# Add back relevant chisel blocks to the oredicts
<ore:stoneBasalt>.add(<chisel:basalt2:7>);
<ore:stoneMarble>.add(<chisel:marble2:7>);

# ----------------
# Traverse section, remove from oredicts so JEI item cycling is less "annoying"
# ----------------
oreDictModRemove(<ore:cobblestone>, "traverse");


# ------------------------------
# Sheetmetal to plates in press
# ------------------------------
var ieSheetmetalToPlates = {
    <ore:blockSheetmetalIron>: <ore:plateIron>,
    <ore:blockSheetmetalGold>: <ore:plateGold>,
    <ore:blockSheetmetalSteel>: <ore:plateSteel>,
    <ore:blockSheetmetalCopper>: <ore:plateCopper>,
    <ore:blockSheetmetalAluminum>: <ore:plateAluminum>,
    <ore:blockSheetmetalLead>: <ore:plateLead>,
    <ore:blockSheetmetalSilver>: <ore:plateSilver>,
    <ore:blockSheetmetalNickel>: <ore:plateNickel>,
    <ore:blockSheetmetalUranium>: <ore:plateUranium>,
    <ore:blockSheetmetalConstantan>: <ore:plateConstantan>,
    <ore:blockSheetmetalElectrum>: <ore:plateElectrum>

} as IOreDictEntry[IOreDictEntry];

for sheetMetal, plate in ieSheetmetalToPlates {
    MetalPress.addRecipe(plate.firstItem, sheetMetal, <thermalfoundation:material:657>, 2000);
}

# ----------------
# Fix stone rods
# ----------------
var stoneRods = [
    <microblockcbe:stone_rod>,
    <inspirations:materials:8>,
    <tconstruct:stone_stick>
] as IItemStack[];

for rod in stoneRods {
    <ore:rodStone>.remove(rod);
    recipes.remove(rod);
}

# ----------------
# Coal coke
# ----------------
# Add coke dust recipes to Crusher
Crusher.removeRecipe(<ore:dustCoke>.firstItem);
Crusher.addRecipe(<ore:dustCoke>.firstItem, <ore:fuelCoke>, 2048);
Crusher.addRecipe(<ore:dustCoke>.firstItem * 9, <ore:blockFuelCoke>, 2048);

# Add coke dust recipes to Pulverizer
Pulverizer.addRecipe(<ore:dustCoke>.firstItem, <ore:fuelCoke>.firstItem, 2000);
Pulverizer.addRecipe(<ore:dustCoke>.firstItem * 9, <ore:blockFuelCoke>.firstItem, 6000);

# Remove Coal coke uncraft
recipes.remove(<immersiveengineering:material:6>);

# ----------------
# Fix Cobalt/Ardite
# ----------------
OreDictUtil.remove(<ore:dustArdite>, <enderio:item_material:30>);
OreDictUtil.remove(<ore:dustCobalt>, <enderio:item_material:31>);

var dustArdite = <exnihilocreatio:item_ore_ardite:2>;
var dustCobalt = <exnihilocreatio:item_ore_cobalt:2>;

OreDictUtil.remove(<ore:notUsedDustArdite>, dustArdite);
OreDictUtil.remove(<ore:notUsedDustCobalt>, dustCobalt);
<ore:dustArdite>.add(dustArdite);
<ore:dustCobalt>.add(dustCobalt);
