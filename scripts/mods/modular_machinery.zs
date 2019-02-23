import mods.modularmachinery.RecipeBuilder;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

# ----------------
# Recipes
# ----------------
recipes.removeByMod("modularmachinery");

# Casing
var marble = <astralsorcery:blockmarble> | <chisel:marble2:7>;
recipes.addShaped("mm_casing", <modularmachinery:blockcasing> * 4, [
    [<ore:blockSheetmetalSilver>, marble, <ore:blockSheetmetalSilver>],
    [marble, <tconstruct:large_plate>.withTag({Material: "silver"}), marble],
    [<ore:blockSheetmetalSilver>, marble, <ore:blockSheetmetalSilver>],
]);

# Controller
recipes.addShaped("mm_controller",<modularmachinery:blockcontroller>, [
    [<ore:ingotElectrum>, <astralsorcery:itemcraftingcomponent:3>, <ore:ingotElectrum>],
    [<ore:gearSanguineMetal>, <modularmachinery:blockcasing>, <ore:gearSanguineMetal>],
    [<ore:plateSanguineMetal>, <ore:dustAstralStarmetal>, <ore:plateSanguineMetal>],
]);

# Item Input Hatch
recipes.addShaped("mm_iteminput", <modularmachinery:blockinputbus:6>, [
    [<ore:chestWood>],
    [<modularmachinery:blockcasing>],
    [null],
]);

# Item Output Hatch
recipes.addShaped("mm_itemoutput", <modularmachinery:blockoutputbus:6>, [
    [null],
    [<modularmachinery:blockcasing>],
    [<ore:chestWood>],
]);

# Fluid Input Hatch
recipes.addShaped("mm_fluidinput", <modularmachinery:blockfluidinputhatch:7>, [
    [<minecraft:bucket>],
    [<modularmachinery:blockcasing>],
    [null],
]);

# Fluid Output Hatch
recipes.addShaped("mm_fluidoutput", <modularmachinery:blockfluidoutputhatch:7>, [
    [null],
    [<modularmachinery:blockcasing>],
    [<minecraft:bucket>],
]);

# Energy Input Hatch
recipes.addShaped("mm_energyinput", <modularmachinery:blockenergyinputhatch:6>, [
    [<thermaldynamics:duct_0>],
    [<modularmachinery:blockcasing>],
    [null],
]);

# Energy Output Hatch
recipes.addShaped("mm_energyoutput", <modularmachinery:blockenergyoutputhatch:6>, [
    [null],
    [<modularmachinery:blockcasing>],
    [<thermaldynamics:duct_0>],
]);


# ----------------
# Altar of Blessings Recipes
# ----------------
var blessFrame = RecipeBuilder.newBuilder("blessFrame", "altar_of_blessings", 120);
blessFrame.addItemInput(<thermalexpansion:frame>);
blessFrame.addItemInput(<ore:slateTier1>.firstItem * 2);
blessFrame.addItemInput(<ore:ingotAstralStarmetal>);
blessFrame.addItemInput(<ore:gemAquamarine>.firstItem * 4);
blessFrame.addFluidInput(<liquid:blessed_life_essence> * 500);
blessFrame.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 500);
blessFrame.addItemOutput(g_blessedMachineFrame);
blessFrame.build();

var blessConnector = RecipeBuilder.newBuilder("blessConnector", "altar_of_blessings", 80);
blessConnector.addItemInput(<immersiveengineering:connector:4>);
blessConnector.addItemInput(<contenttweaker:charred_feather> * 2);
blessConnector.addFluidInput(<liquid:blessed_life_essence> * 100);
blessConnector.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessConnector.addItemOutput(g_blessedConnector);
blessConnector.build();

var blessServo = RecipeBuilder.newBuilder("blessServo", "altar_of_blessings", 80);
blessServo.addItemInput(<thermalfoundation:material:512>);
blessServo.addItemInput(<contenttweaker:charred_feather> * 2);
blessServo.addFluidInput(<liquid:blessed_life_essence> * 100);
blessServo.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessServo.addItemOutput(g_blessedServo);
blessServo.build();

var blessReceptionCoil = RecipeBuilder.newBuilder("blessReceptionCoil", "altar_of_blessings", 80);
blessReceptionCoil.addItemInput(<thermalfoundation:material:513>);
blessReceptionCoil.addItemInput(<contenttweaker:charred_feather> * 2);
blessReceptionCoil.addFluidInput(<liquid:blessed_life_essence> * 100);
blessReceptionCoil.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessReceptionCoil.addItemOutput(g_blessedReceptionCoil);
blessReceptionCoil.build();

var blessTransmissionCoil = RecipeBuilder.newBuilder("blessTransmissionCoil", "altar_of_blessings", 80);
blessTransmissionCoil.addItemInput(<thermalfoundation:material:514>);
blessTransmissionCoil.addItemInput(<contenttweaker:charred_feather> * 2);
blessTransmissionCoil.addFluidInput(<liquid:blessed_life_essence> * 100);
blessTransmissionCoil.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessTransmissionCoil.addItemOutput(g_blessedTransmissionCoil);
blessTransmissionCoil.build();

var blessConductanceCoil = RecipeBuilder.newBuilder("blessConductanceCoil", "altar_of_blessings", 80);
blessConductanceCoil.addItemInput(<thermalfoundation:material:515>);
blessConductanceCoil.addItemInput(<contenttweaker:charred_feather> * 2);
blessConductanceCoil.addFluidInput(<liquid:blessed_life_essence> * 100);
blessConductanceCoil.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessConductanceCoil.addItemOutput(g_blessedConductanceCoil);
blessConductanceCoil.build();

# ----------------
# Thermoelectric Generator Recipes
# ----------------
var water_blaze = RecipeBuilder.newBuilder("thermoelectric_water_blaze", "thermoelectric_generator", 1);
water_blaze.addFluidInput(<liquid:water>);
water_blaze.addFluidInput(<liquid:liquid_blaze>);
water_blaze.setChance(0.05);
water_blaze.addEnergyPerTickOutput(750);
water_blaze.build();

var starlight_blaze = RecipeBuilder.newBuilder("thermoelectric_starlight_blaze", "thermoelectric_generator", 1);
starlight_blaze.addFluidInput(<liquid:astralsorcery.liquidstarlight>);
starlight_blaze.setChance(0.05);
starlight_blaze.addFluidInput(<liquid:liquid_blaze>);
starlight_blaze.setChance(0.05);
starlight_blaze.addEnergyPerTickOutput(1500);
starlight_blaze.build();

var water_lava = RecipeBuilder.newBuilder("thermoelectric_water_lava", "thermoelectric_generator", 1);
water_lava.addFluidInput(<liquid:water>);
water_lava.addFluidInput(<liquid:lava>);
water_lava.setChance(0.20);
water_lava.addEnergyPerTickOutput(300);
water_lava.build();

var starlight_lava = RecipeBuilder.newBuilder("thermoelectric_starlight_lava", "thermoelectric_generator", 1);
starlight_lava.addFluidInput(<liquid:astralsorcery.liquidstarlight>);
starlight_lava.setChance(0.05);
starlight_lava.addFluidInput(<liquid:lava>);
starlight_lava.setChance(0.20);
starlight_lava.addEnergyPerTickOutput(600);
starlight_lava.build();