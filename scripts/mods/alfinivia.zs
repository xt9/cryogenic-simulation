import crafttweaker.item.IItemStack;
import mods.alfinivia.ImmersiveEngineering;
import scripts.helpers;

# ----------------
# Liquid fertilizer
# ----------------
ImmersiveEngineering.addLiquidFertilizer(<liquid:troll_eye_goop>, 2.0);
ImmersiveEngineering.addLiquidFertilizer(<liquid:ammonium_nitrate>, 8.0);
addClocheTooltip(<forge:bucketfilled>.withTag({FluidName: "troll_eye_goop", Amount: 1000}), 2.0);
addClocheTooltip(<forge:bucketfilled>.withTag({FluidName: "ammonium_nitrate", Amount: 1000}), 8.0);

# ----------------
# Item fertilizer
# ----------------
var existingItemFertilizers = {
    <minecraft:dye:15>: 1.5,
    <thermalfoundation:fertilizer>: 3.0,
    <thermalfoundation:fertilizer:1>: 7.0,
    <thermalfoundation:fertilizer:2>: 11.0
} as float[IItemStack];

for item, modifier in existingItemFertilizers {
    ImmersiveEngineering.removeItemFertilizer(item);
    ImmersiveEngineering.addItemFertilizer(item, modifier);
    addClocheTooltip(item, modifier);
}

var customItemFertilizers = {
    <fertilization:compressed_bonemeal>: 3.0,
    <fertilization:extremely_compressed_bonemeal>: 8.0,
    <industrialforegoing:fertilizer>: 6.0,
    <bloodmagic:component:5>: 16.0,
    <mysticalagriculture:mystical_fertilizer>: 32.0
 } as float[IItemStack];

for item, modifier in customItemFertilizers {
    ImmersiveEngineering.addItemFertilizer(item, modifier);
    addClocheTooltip(item, modifier);
}

function addClocheTooltip(item as IItemStack, modifier as float) {
    helpers.addAtlasTip(item, [
        format.yellow("Cloche modifier: ") + format.white("" + modifier)
    ]);
}