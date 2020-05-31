import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.CompressionDynamo;
import mods.thermalexpansion.Infuser;
import mods.thermalexpansion.Insolator;

import crafttweaker.oredict.IOreDictEntry;
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
# Furnace
# ----------------
# Hot enough to melt bricks, woop woop
RedstoneFurnace.addRecipe(<minecraft:brick>, <minecraft:clay_ball>, 2000);
RedstoneFurnace.addRecipe(<minecraft:netherbrick>, <minecraft:netherrack>, 2000);
RedstoneFurnace.addRecipe(<minecraft:glass>, <minecraft:sand:*>, 2000);

# Add ore to ingot recipes that were removed from the furnace
for ore, ingot in _oreToIngot {
    RedstoneFurnace.addRecipe(ingot.firstItem, ore.firstItem, 2000);
}

# Add dust to ingot recipes
for oreDust, oreIngot in _dustToIngot {
    if(!oreDust.empty && !oreIngot.empty) {
        RedstoneFurnace.addRecipe(getModStackFromDict(oreIngot, "thermalfoundation"), oreDust.firstItem, 2000);
    }
}

# ----------------
# Pulverizer
# ----------------
# EnderIO sag mill exclusives
Pulverizer.addRecipe(<ore:itemPrecientPowder>.firstItem, <ore:itemPrecientCrystal>.firstItem, 4000);
Pulverizer.addRecipe(<ore:itemVibrantPowder>.firstItem, <ore:itemVibrantCrystal>.firstItem, 4000);
Pulverizer.addRecipe(<ore:itemPulsatingPowder>.firstItem, <ore:itemPulsatingCrystal>.firstItem, 4000);
Pulverizer.addRecipe(<ore:itemEnderCrystalPowder>.firstItem, <ore:itemEnderCrystal>.firstItem, 4000);
Pulverizer.addRecipe(<enderio:block_infinity_fog>, <ore:dustBedrock>.firstItem, 15000);
# Midnight Bogshroom powder
Pulverizer.addRecipe(<midnight:bogshroom_powder> * 2, <midnight:bogshroom>, 8000);
Pulverizer.addRecipe(<midnight:bogshroom_powder> * 2, <midnight:bogshroom_hat>, 8000);
Pulverizer.addRecipe(<midnight:bogshroom_powder> * 3, <midnight:bogshroom_shelf>, 8000);
Pulverizer.addRecipe(<midnight:bogshroom_powder> * 4, <midnight:double_bogshroom>, 8000);
# Midnight Viridshroom powder
Pulverizer.addRecipe(<midnight:viridshroom_powder> * 2, <midnight:viridshroom>, 8000);
Pulverizer.addRecipe(<midnight:viridshroom_powder> * 2, <midnight:viridshroom_hat>, 8000);
Pulverizer.addRecipe(<midnight:viridshroom_powder> * 3, <midnight:viridshroom_shelf>, 8000);
Pulverizer.addRecipe(<midnight:viridshroom_powder> * 4, <midnight:double_viridshroom>, 8000);
# Midnight Nightshroom powder
Pulverizer.addRecipe(<midnight:nightshroom_powder> * 2, <midnight:nightshroom>, 8000);
Pulverizer.addRecipe(<midnight:nightshroom_powder> * 2, <midnight:nightshroom_hat>, 8000);
Pulverizer.addRecipe(<midnight:nightshroom_powder> * 3, <midnight:nightshroom_shelf>, 8000);
Pulverizer.addRecipe(<midnight:nightshroom_powder> * 4, <midnight:double_nightshroom>, 8000);
# Midnight Dewshroom powder
Pulverizer.addRecipe(<midnight:dewshroom_powder> * 2, <midnight:dewshroom>, 8000);
Pulverizer.addRecipe(<midnight:dewshroom_powder> * 2, <midnight:dewshroom_hat>, 8000);
Pulverizer.addRecipe(<midnight:dewshroom_powder> * 3, <midnight:dewshroom_shelf>, 8000);
Pulverizer.addRecipe(<midnight:dewshroom_powder> * 4, <midnight:double_dewshroom>, 8000);
# Midnight rouxe rock -> rouxe crystal
Pulverizer.addRecipe(<midnight:rouxe> * 3, <midnight:rouxe_rock>, 8000);
# Midnight bloomcrystal rock -> bloomcrystal
Pulverizer.addRecipe(<midnight:bloomcrystal> * 3, <midnight:bloomcrystal_rock>, 8000);

# ----------------
# Crucible
# ----------------
Crucible.addRecipe(<liquid:liquid_blaze> * 3000, <contenttweaker:block_blaze_powder>, 11000);
Crucible.addRecipe(<liquid:troll_eye_goop> * 4000, <contenttweaker:troll_eye>, 8000);
# Resmelt plastics
for stack in <ore:plastic>.items { 
    Crucible.addRecipe(<liquid:plastic> * 1000, stack, 4000);
}
# Melt meat
for stack in <ore:listAllmeatcooked>.items { 
    Crucible.addRecipe(<liquid:meat> * 250, stack, 2000);
}
# Melt enderio metals
Crucible.addRecipe(<liquid:electrical_steel> * 144, <ore:ingotElectricalSteel>.firstItem, 8000);
Crucible.addRecipe(<liquid:energetic_alloy> * 144, <ore:ingotEnergeticAlloy>.firstItem, 8000);
Crucible.addRecipe(<liquid:vibrant_alloy> * 144, <ore:ingotVibrantAlloy>.firstItem, 8000);
Crucible.addRecipe(<liquid:redstone_alloy> * 144, <ore:ingotRedstoneAlloy>.firstItem, 8000);
Crucible.addRecipe(<liquid:conductive_iron> * 144, <ore:ingotConductiveIron>.firstItem, 8000);
Crucible.addRecipe(<liquid:pulsating_iron> * 144, <ore:ingotPulsatingIron>.firstItem, 8000);
Crucible.addRecipe(<liquid:dark_steel> * 144, <ore:ingotDarkSteel>.firstItem, 8000);
Crucible.addRecipe(<liquid:soularium> * 144, <ore:ingotSoularium>.firstItem, 8000);
Crucible.addRecipe(<liquid:end_steel> * 144, <ore:ingotEndSteel>.firstItem, 8000);

Crucible.addRecipe(<liquid:electrical_steel> * 1296, <ore:blockEndSteel>.firstItem, 36000);
Crucible.addRecipe(<liquid:energetic_alloy> * 1296, <ore:blockEnergeticAlloy>.firstItem, 36000);
Crucible.addRecipe(<liquid:vibrant_alloy> * 1296, <ore:blockVibrantAlloy>.firstItem, 36000);
Crucible.addRecipe(<liquid:redstone_alloy> * 1296, <ore:blockRedstoneAlloy>.firstItem, 36000);
Crucible.addRecipe(<liquid:conductive_iron> * 1296, <ore:blockConductiveIron>.firstItem, 36000);
Crucible.addRecipe(<liquid:pulsating_iron> * 1296, <ore:blockPulsatingIron>.firstItem, 36000);
Crucible.addRecipe(<liquid:dark_steel> * 1296, <ore:blockDarkSteel>.firstItem, 36000);
Crucible.addRecipe(<liquid:soularium> * 1296, <ore:blockSoularium>.firstItem, 36000);
Crucible.addRecipe(<liquid:end_steel> * 1296, <ore:blockEndSteel>.firstItem, 36000);

# ----------------
# Centrifugal Separator
# ----------------
for stack in <ore:fish>.items { 
    Centrifuge.addRecipe([<minecraft:bone> % 50], stack, <liquid:fish_oil> * 500, 9000);
}

# ----------------
# Transposer
# ----------------
Transposer.addFillRecipe(<astralsorcery:itemusabledust> * 4, <ore:dustGlowstone>.firstItem, <liquid:astralsorcery.liquidstarlight> * 500, 4000);
Transposer.addFillRecipe(<contenttweaker:lubricated_gear>, <pneumaticcraft:compressed_iron_gear>, <liquid:lubricant> * 400, 4000);
# Inferium -> Prudentium
Transposer.addFillRecipe(<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting> * 10, <liquid:biocrude> * 20, 2000);
# Polymer Clay
Transposer.addFillRecipe(<deepmoblearning:polymer_clay> * 4, <minecraft:clay_ball> * 16, <liquid:plastic> * 250, 4000);

# ----------------
# Induction Smelter
# ----------------
# Charred terracotta
InductionSmelter.addRecipe(<ore:charredTerracotta>.firstItem * 8, <contenttweaker:charred_feather>, <tconstruct:materials> * 8, 3000);
# Charred Feather Pile Qol recipe
InductionSmelter.addRecipe(<contenttweaker:charred_feather> * 8, <ore:ravenFeather>.firstItem, <ore:dustCoal>.firstItem, 3000);
# Pigiron QoL recipe
InductionSmelter.addRecipe(<ore:ingotPigiron>.firstItem, <ore:ingotIron>.firstItem, <contenttweaker:bloody_mud>, 3000);
# Steel from coke dust
InductionSmelter.addRecipe(<ore:ingotSteel>.firstItem, <ore:ingotIron>.firstItem, <ore:dustCoke>.firstItem, 3000);
# T3 Mystical Agriculture Essence
InductionSmelter.addRecipe(<ore:essenceIntermedium>.firstItem, <ore:essencePrudentium>.firstItem * 4, <ore:dustPyrotheum>.firstItem, 3000);

# Metal chests cheaper recipes
InductionSmelter.addRecipe(<ore:chestIron>.firstItem, <ore:ingotIron>.firstItem * 4, <minecraft:chest>, 5000);
InductionSmelter.addRecipe(<ore:chestGold>.firstItem, <ore:ingotGold>.firstItem * 4, <ore:chestIron>.firstItem, 5000);
InductionSmelter.addRecipe(<ore:chestDiamond>.firstItem, <ore:gemDiamond>.firstItem * 4, <ore:chestGold>.firstItem, 5000);
InductionSmelter.addRecipe(<ore:chestObsidian>.firstItem, <ore:obsidian>.firstItem * 4, <ore:chestDiamond>.firstItem, 5000);
# AE2 Circuits
InductionSmelter.addRecipe(<appliedenergistics2:material:22>, <appliedenergistics2:material:20>, <appliedenergistics2:material:18>, 4000);
InductionSmelter.addRecipe(<appliedenergistics2:material:23>, <appliedenergistics2:material:20>, <appliedenergistics2:material:16>, 4000);
InductionSmelter.addRecipe(<appliedenergistics2:material:24>, <appliedenergistics2:material:20>, <appliedenergistics2:material:17>, 4000);
# EnderIO Alloys
InductionSmelter.addRecipe(<ore:ingotElectricalSteel>.firstItem, <ore:ingotSteel>.firstItem, <ore:itemSilicon>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotVibrantAlloy>.firstItem, <ore:ingotEnergeticAlloy>.firstItem, <ore:enderpearl>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotPulsatingIron>.firstItem, <ore:ingotIron>.firstItem, <ore:enderpearl>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotSoularium>.firstItem, <ore:ingotGold>.firstItem, <minecraft:soul_sand>, 9000);
InductionSmelter.addRecipe(<ore:ingotDarkSteel>.firstItem, <ore:ingotSteel>.firstItem, <ore:obsidian>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotEndSteel>.firstItem, <ore:ingotDarkSteel>.firstItem, <ore:endstone>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotConductiveIron>.firstItem, <ore:ingotIron>.firstItem, <ore:dustRedstone>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotRedstoneAlloy>.firstItem, <ore:dustRedstone>.firstItem, <ore:itemSilicon>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotBrickNetherGlazed>.firstItem, <ore:ingotBrickNether>.firstItem, <contenttweaker:bloody_mud>, 9000);
InductionSmelter.addRecipe(<ore:ingotEnergeticAlloy>.firstItem, <ore:ingotGold>.firstItem, <contenttweaker:energetic_compound>, 9000);
# EnderIO Gears
InductionSmelter.addRecipe(<ore:gearEnergized>.firstItem, <ore:gearIronInfinity>.firstItem, <ore:ingotEnergeticAlloy>.firstItem * 4, 9000);
InductionSmelter.addRecipe(<ore:gearVibrant>.firstItem, <ore:gearIronInfinity>.firstItem, <ore:ingotVibrantAlloy>.firstItem * 4, 9000);
InductionSmelter.addRecipe(<ore:gearDark>.firstItem, <ore:gearIronInfinity>.firstItem, <ore:ingotDarkSteel>.firstItem * 4, 9000);
# Fused Quartz
InductionSmelter.addRecipe(<enderio:block_fused_quartz>, <minecraft:glass>, <ore:gemQuartz>.firstItem * 4, 4000);
InductionSmelter.addRecipe(<enderio:block_enlightened_fused_quartz>, <enderio:block_fused_quartz>, <ore:dustGlowstone>.firstItem * 4, 4000);
InductionSmelter.addRecipe(<enderio:block_dark_fused_quartz>, <enderio:block_fused_quartz>, <ore:dustObsidian>.firstItem * 4, 4000);
# Quartz glass
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, <minecraft:glass>, <ore:dustQuartz>.firstItem * 2, 4000);
# Soulium
InductionSmelter.addRecipe(<mysticalagriculture:crafting:38>, <minecraft:soul_sand>, <ore:ingotInferium>.firstItem, 4000);
# Infused Diamond
InductionSmelter.addRecipe(<ore:gemInfusedDiamond>.firstItem, <rftools:dimensional_shard> * 8, <ore:gemDiamond>.firstItem, 4000);

# ----------------
# Compactor
# ----------------
Compactor.addStorageRecipe(<ore:slimeballBlood>.firstItem, <cryosimadditions:block_blood_resin_log>, 4000);
Compactor.addStorageRecipe(<industrialforegoing:dryrubber>, <industrialforegoing:tinydryrubber> * 9, 4000);
Compactor.addStorageRecipe(<tconstruct:large_plate>.withTag({Material: "ardite"}), <ore:ingotArdite>.firstItem * 8, 19500);
Compactor.addStorageRecipe(<tconstruct:large_plate>.withTag({Material: "cobalt"}), <ore:ingotCobalt>.firstItem * 8, 19500);
Compactor.addStorageRecipe(<tconstruct:large_plate>.withTag({Material: "silver"}), <ore:plateSilver>.firstItem * 8, 19500);
Compactor.addStorageRecipe(<tconstruct:large_plate>.withTag({Material: "iron"}), <ore:plateIron>.firstItem * 8, 19500);

# ------------------
# Refinery (Distill)
# ------------------
Refinery.addRecipe(<liquid:lubricant> * 100, <ore:dustSalt>.firstItem, <liquid:fish_oil> * 1000, 5000);

# ----------------
# Dynamo Tweaks
# ----------------
# Remove unrefined oil as a useable fuel source (near limitless supply from Arid Waste dim)
CompressionDynamo.removeFuel(<liquid:oil>);

# ----------------
# Energetic Infuser
# ----------------
# Remove bait recipe
Infuser.removeRecipe(<thermalfoundation:bait:1>);

# ---------------------
# Phytogenic Insolator
# ---------------------
Insolator.addRecipe(<midnight:bogshroom_hat>, <midnight:midnight_mycelium>, <midnight:bogshroom>, 6000, <midnight:bogshroom>, 90);
Insolator.addRecipe(<midnight:nightshroom_hat>, <midnight:midnight_mycelium>, <midnight:nightshroom>, 6000, <midnight:nightshroom>, 90);
Insolator.addRecipe(<midnight:viridshroom_hat>, <midnight:midnight_mycelium>, <midnight:viridshroom>, 6000, <midnight:viridshroom>, 90);
Insolator.addRecipe(<midnight:dewshroom_hat>, <midnight:midnight_mycelium>, <midnight:dewshroom>, 6000, <midnight:dewshroom>, 90);

# ----------------
# Recipe removals
# ----------------
# Remove Thermal Foundation Servos/Coils/Tool casing
recipes.remove(<thermalfoundation:material:512>);
recipes.remove(<thermalfoundation:material:513>);
recipes.remove(<thermalfoundation:material:514>);
recipes.remove(<thermalfoundation:material:515>);
recipes.remove(<thermalfoundation:material:640>);
# Remove Frames
recipes.remove(<thermalfoundation:material:22>);
recipes.remove(<thermalfoundation:material:23>);
recipes.remove(<thermalexpansion:frame:128>);
# Remove the machine frame, later added by IE blueprint
recipes.remove(<thermalexpansion:frame>);
recipes.remove(<thermalexpansion:frame:64>);
# Remove Foundation Gears from crafting
recipes.remove(<thermalfoundation:material:26>);
recipes.remove(<thermalfoundation:material:27>);
# Remove acquatic entangler in favor of the industrial foregoing machine
recipes.remove(<thermalexpansion:device:4>);
# Remove bait recipes
recipes.remove(<thermalfoundation:bait>);
recipes.remove(<thermalfoundation:bait:1>);

# ----------------
# Recipes
# ----------------
# Require a Blessed frame for all machines
recipes.replaceAllOccurences(<thermalexpansion:frame>, g_blessedMachineFrame);
# Require Blessed servos instead of servos
recipes.replaceAllOccurences(<thermalfoundation:material:512>, g_blessedServo);
# Require Blessed coils
recipes.replaceAllOccurences(<thermalfoundation:material:513>, g_blessedReceptionCoil);
recipes.replaceAllOccurences(<thermalfoundation:material:514>, g_blessedTransmissionCoil);
recipes.replaceAllOccurences(<thermalfoundation:material:515>, g_blessedConductanceCoil);

# Change compactor recipe
recipes.replaceAllOccurences(<ore:ingotBronze>, <ore:ingotHOPGraphite>, <thermalexpansion:machine:5>);
recipes.replaceAllOccurences(<ore:gearCopper>, <ore:gearBronze>, <thermalexpansion:machine:5>);

# Change magma crucible recipe
recipes.replaceAllOccurences(<minecraft:nether_brick>, <ore:blockMagma>, <thermalexpansion:machine:6>);

recipes.addShaped("te_cell_frame", <thermalexpansion:frame:128>, [
    [<ore:plateElectrum>, g_blessedConductanceCoil, <ore:plateElectrum>],
    [g_blessedReceptionCoil, g_blessedServo, g_blessedReceptionCoil], 
    [<ore:plateElectrum>, g_blessedConductanceCoil, <ore:plateElectrum>]
]);

# Retrievers
recipes.replaceAllOccurences(<ore:pearlEnderEye>, <ore:trollEye>, <thermaldynamics:retriever:*>);