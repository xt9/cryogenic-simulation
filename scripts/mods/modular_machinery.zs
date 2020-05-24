import mods.modularmachinery.RecipeBuilder;
import crafttweaker.enchantments.IEnchantmentDefinition;
import scripts.helpers;
import crafttweaker.data.IData;

var altarOfBlessingsBlueprint = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:altar_of_blessings"});
helpers.addAtlasTip(altarOfBlessingsBlueprint, [
    format.yellow("Only functions when the spectral relay is holding a Blood Raven Feather")
]);

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

# Biome Detector
recipes.addShaped("mm_biome_detector", <modulardiversity:blockbiomedetector>, [
    [<naturescompass:naturescompass>],
    [<modularmachinery:blockcasing>],
    [null]
]);

# Mana output hatch
recipes.addShaped("mm_manaoutput", <modulardiversity:blockmanaoutputhatch>, [
    [<botania:pool>],
    [<modularmachinery:blockcasing>],
    [null]
]);





# --------------------------
# Altar of Blessings Recipes
# --------------------------
var blessFrame = RecipeBuilder.newBuilder("blessFrame", "altar_of_blessings", 120);
blessFrame.addItemInput(<thermalexpansion:frame>);
blessFrame.addItemInput(<ore:gemAquamarine>.firstItem * 16);
blessFrame.addItemInput(<contenttweaker:charred_feather> * 4);
blessFrame.addItemInput(<ore:ingotAstralStarmetal>.firstItem * 2);
blessFrame.addItemInput(<ore:dustSilver>.firstItem * 2);
blessFrame.addItemInput(<ore:slateTier1>);
blessFrame.addFluidInput(<liquid:blessed_life_essence> * 500);
blessFrame.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 500);
blessFrame.addItemOutput(g_blessedMachineFrame);
blessFrame.build();

var blessConnector = RecipeBuilder.newBuilder("blessConnector", "altar_of_blessings", 80);
blessConnector.addItemInput(<immersiveengineering:connector:4>);
blessConnector.addItemInput(<astralsorcery:itemcraftingcomponent> * 4);
blessConnector.addItemInput(<contenttweaker:charred_feather> * 2);
blessConnector.addItemInput(<astralsorcery:itemusabledust>);
blessConnector.addItemInput(<ore:dustSilver>);
blessConnector.addFluidInput(<liquid:blessed_life_essence> * 100);
blessConnector.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessConnector.addItemOutput(g_blessedConnector);
blessConnector.build();

var blessServo = RecipeBuilder.newBuilder("blessServo", "altar_of_blessings", 80);
blessServo.addItemInput(<thermalfoundation:material:512>);
blessServo.addItemInput(<astralsorcery:itemcraftingcomponent> * 4);
blessServo.addItemInput(<contenttweaker:charred_feather> * 2);
blessServo.addItemInput(<astralsorcery:itemusabledust>);
blessServo.addItemInput(<ore:dustSilver>);
blessServo.addFluidInput(<liquid:blessed_life_essence> * 100);
blessServo.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessServo.addItemOutput(g_blessedServo);
blessServo.build();

var blessReceptionCoil = RecipeBuilder.newBuilder("blessReceptionCoil", "altar_of_blessings", 80);
blessReceptionCoil.addItemInput(<thermalfoundation:material:513>);
blessReceptionCoil.addItemInput(<astralsorcery:itemcraftingcomponent> * 4);
blessReceptionCoil.addItemInput(<contenttweaker:charred_feather> * 2);
blessReceptionCoil.addItemInput(<astralsorcery:itemusabledust>);
blessReceptionCoil.addItemInput(<ore:dustSilver>);
blessReceptionCoil.addFluidInput(<liquid:blessed_life_essence> * 100);
blessReceptionCoil.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessReceptionCoil.addItemOutput(g_blessedReceptionCoil);
blessReceptionCoil.build();

var blessTransmissionCoil = RecipeBuilder.newBuilder("blessTransmissionCoil", "altar_of_blessings", 80);
blessTransmissionCoil.addItemInput(<thermalfoundation:material:514>);
blessTransmissionCoil.addItemInput(<astralsorcery:itemcraftingcomponent> * 4);
blessTransmissionCoil.addItemInput(<contenttweaker:charred_feather> * 2);
blessTransmissionCoil.addItemInput(<astralsorcery:itemusabledust>);
blessTransmissionCoil.addItemInput(<ore:dustSilver>);
blessTransmissionCoil.addFluidInput(<liquid:blessed_life_essence> * 100);
blessTransmissionCoil.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessTransmissionCoil.addItemOutput(g_blessedTransmissionCoil);
blessTransmissionCoil.build();

var blessConductanceCoil = RecipeBuilder.newBuilder("blessConductanceCoil", "altar_of_blessings", 80);
blessConductanceCoil.addItemInput(<thermalfoundation:material:515>);
blessConductanceCoil.addItemInput(<astralsorcery:itemcraftingcomponent> * 4);
blessConductanceCoil.addItemInput(<contenttweaker:charred_feather> * 2);
blessConductanceCoil.addItemInput(<astralsorcery:itemusabledust>);
blessConductanceCoil.addItemInput(<ore:dustSilver>);
blessConductanceCoil.addFluidInput(<liquid:blessed_life_essence> * 100);
blessConductanceCoil.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessConductanceCoil.addItemOutput(g_blessedConductanceCoil);
blessConductanceCoil.build();

# ---------------------------------
# Thermoelectric Generator Recipes
# ---------------------------------
var waterAndBlaze = RecipeBuilder.newBuilder("thermoelectric_water_blaze", "thermoelectric_generator", 1);
waterAndBlaze.addFluidInput(<liquid:water>);
waterAndBlaze.addFluidInput(<liquid:liquid_blaze>);
waterAndBlaze.setChance(0.05);
waterAndBlaze.addEnergyPerTickOutput(750);
waterAndBlaze.build();

var starlightAndBlaze = RecipeBuilder.newBuilder("thermoelectric_starlight_blaze", "thermoelectric_generator", 1);
starlightAndBlaze.addFluidInput(<liquid:astralsorcery.liquidstarlight>);
starlightAndBlaze.setChance(0.05);
starlightAndBlaze.addFluidInput(<liquid:liquid_blaze>);
starlightAndBlaze.setChance(0.05);
starlightAndBlaze.addEnergyPerTickOutput(1500);
starlightAndBlaze.build();

var waterAndLava = RecipeBuilder.newBuilder("thermoelectric_water_lava", "thermoelectric_generator", 1);
waterAndLava.addFluidInput(<liquid:water>);
waterAndLava.addFluidInput(<liquid:lava>);
waterAndLava.setChance(0.15);
waterAndLava.addEnergyPerTickOutput(300);
waterAndLava.build();

var starlightAndLava = RecipeBuilder.newBuilder("thermoelectric_starlight_lava", "thermoelectric_generator", 1);
starlightAndLava.addFluidInput(<liquid:astralsorcery.liquidstarlight>);
starlightAndLava.setChance(0.05);
starlightAndLava.addFluidInput(<liquid:lava>);
starlightAndLava.setChance(0.15);
starlightAndLava.addEnergyPerTickOutput(600);
starlightAndLava.build();

var waterAndPyro = RecipeBuilder.newBuilder("thermoelectric_water_pyrotheum", "thermoelectric_generator", 1);
waterAndPyro.addFluidInput(<liquid:water>);
waterAndPyro.addFluidInput(<liquid:pyrotheum>);
waterAndPyro.setChance(0.05);
waterAndPyro.addEnergyPerTickOutput(3000);
waterAndPyro.build();

var starlightAndPyro = RecipeBuilder.newBuilder("thermoelectric_starlight_pyrotheum", "thermoelectric_generator", 1);
starlightAndPyro.addFluidInput(<liquid:astralsorcery.liquidstarlight>);
starlightAndPyro.setChance(0.05);
starlightAndPyro.addFluidInput(<liquid:pyrotheum>);
starlightAndPyro.setChance(0.05);
starlightAndPyro.addEnergyPerTickOutput(8500);
starlightAndPyro.build();

# --------------------
# Industrial Assembler
# --------------------
var vacuumTube = RecipeBuilder.newBuilder("ia_vacuum_tube", "industrial_assembler", 100);
vacuumTube.addEnergyPerTickInput(120);
vacuumTube.addItemInput(<ore:plateSilver>.firstItem * 2);
vacuumTube.addItemInput(<ore:blockGlass>.firstItem);
vacuumTube.addItemInput(<ore:dustCoal>.firstItem);
vacuumTube.addItemInput(<ore:ingotElectrum>);
vacuumTube.addItemOutput(<immersiveengineering:material:26> * 4);
vacuumTube.build();

var circuitBoard = RecipeBuilder.newBuilder("ia_circuit_board", "industrial_assembler", 100);
circuitBoard.addEnergyPerTickInput(120);
circuitBoard.addItemInput(<immersiveengineering:material:26>);
circuitBoard.addItemInput(<ore:plateCopper>.firstItem);
circuitBoard.addItemInput(<ore:dyeGreen>.firstItem);
circuitBoard.addItemInput(<ore:ingotElectrum>);
circuitBoard.addItemOutput(<immersiveengineering:material:27>);
circuitBoard.build();

var ironComponent = RecipeBuilder.newBuilder("ia_iron_component", "industrial_assembler", 100);
ironComponent.addEnergyPerTickInput(120);
ironComponent.addItemInput(<ore:plateIron>.firstItem * 2);
ironComponent.addItemInput(<ore:ingotLead>.firstItem);
ironComponent.addItemInput(<ore:dustRedstone>.firstItem);
ironComponent.addItemOutput(<immersiveengineering:material:8> * 4);
ironComponent.build();

var steelComponent = RecipeBuilder.newBuilder("ia_steel_component", "industrial_assembler", 100);
steelComponent.addEnergyPerTickInput(120);
steelComponent.addItemInput(<ore:plateSteel>.firstItem * 2);
steelComponent.addItemInput(<ore:ingotLead>.firstItem);
steelComponent.addItemInput(<ore:dustRedstone>.firstItem);
steelComponent.addItemOutput(<immersiveengineering:material:9> * 4);
steelComponent.build();

var machineFrame = RecipeBuilder.newBuilder("ia_machine_frame", "industrial_assembler", 100);
machineFrame.addEnergyPerTickInput(120);
machineFrame.addItemInput(<immersiveengineering:metal_decoration0:5>);
machineFrame.addItemInput(<ore:blockGlass>.firstItem);
machineFrame.addItemInput(<ore:dustRedstone>.firstItem * 4);
machineFrame.addItemInput(<ore:gearSanguineMetal>.firstItem);
machineFrame.addItemOutput(<thermalexpansion:frame>);
machineFrame.build();

var deviceFrame = RecipeBuilder.newBuilder("ia_device_frame", "industrial_assembler", 100);
deviceFrame.addEnergyPerTickInput(120);
deviceFrame.addItemInput(<ore:blockGlass>.firstItem);
deviceFrame.addItemInput(<ore:plateTin>.firstItem * 4);
deviceFrame.addItemInput(<ore:dustRedstone>.firstItem * 4);
deviceFrame.addItemInput(<ore:gearCopper>.firstItem);
deviceFrame.addItemOutput(<thermalexpansion:frame:64> * 4);
deviceFrame.build();

var servo = RecipeBuilder.newBuilder("ia_servo", "industrial_assembler", 100);
servo.addEnergyPerTickInput(120);
servo.addItemInput(<ore:ingotIron>.firstItem);
servo.addItemInput(<ore:dustRedstone>.firstItem * 4);
servo.addItemOutput(<thermalfoundation:material:512>);
servo.build();

var receptionCoil = RecipeBuilder.newBuilder("ia_reception_coil", "industrial_assembler", 100);
receptionCoil.addEnergyPerTickInput(120);
receptionCoil.addItemInput(<ore:ingotGold>.firstItem);
receptionCoil.addItemInput(<immersiveengineering:wirecoil:5> * 2);
receptionCoil.addItemOutput(<thermalfoundation:material:513>);
receptionCoil.build();

var transmissionCoil = RecipeBuilder.newBuilder("ia_transmission_coil", "industrial_assembler", 100);
transmissionCoil.addEnergyPerTickInput(120);
transmissionCoil.addItemInput(<ore:ingotSilver>.firstItem);
transmissionCoil.addItemInput(<immersiveengineering:wirecoil:5> * 2);
transmissionCoil.addItemOutput(<thermalfoundation:material:514>);
transmissionCoil.build();

var conductanceCoil = RecipeBuilder.newBuilder("ia_conductance_coil", "industrial_assembler", 100);
conductanceCoil.addEnergyPerTickInput(120);
conductanceCoil.addItemInput(<ore:ingotElectrum>.firstItem);
conductanceCoil.addItemInput(<immersiveengineering:wirecoil:5> * 2);
conductanceCoil.addItemOutput(<thermalfoundation:material:515>);
conductanceCoil.build();

var combatSimBlock = RecipeBuilder.newBuilder("ia_combat_simulation_portal_block", "industrial_assembler", 300);
combatSimBlock.addEnergyPerTickInput(512);
combatSimBlock.addItemInput(<deepmoblearning:machine_casing>);
combatSimBlock.addItemInput(<appliedenergistics2:controller>);
combatSimBlock.addItemInput(<minecraft:nether_brick> * 8);
combatSimBlock.addItemInput(<appliedenergistics2:material:7> * 64);
combatSimBlock.addItemInput(<deepmoblearning:soot_covered_redstone> * 64);
combatSimBlock.addItemInput(<tconstruct:materials> * 64);
combatSimBlock.addItemInput(<pneumaticcraft:plastic:5> * 8);
combatSimBlock.addItemInput(<contenttweaker:lubricated_gear> * 4);
combatSimBlock.addItemInput(<pneumaticcraft:capacitor> * 2);
combatSimBlock.addItemOutput(<contenttweaker:combat_simulation_portal_block>);
combatSimBlock.build();

# ----------------
# Mass Drying Chamber
# ----------------
var brittlePlastic = RecipeBuilder.newBuilder("dc_brittle_plastic", "drying_chamber", 220);
brittlePlastic.addItemInput(<industrialforegoing:dryrubber> * 32);
brittlePlastic.addItemOutput(<ore:itemRubber>.firstItem  * 32);
brittlePlastic.build();

var brick = RecipeBuilder.newBuilder("dc_brick", "drying_chamber", 220);
brick.addItemInput(<minecraft:clay_ball> * 32);
brick.addItemOutput(<ore:ingotBrickDried>.firstItem * 32);
brick.build();

var leather = RecipeBuilder.newBuilder("dc_leather", "drying_chamber", 220);
leather.addItemInput(<minecraft:rotten_flesh> * 32);
leather.addItemOutput(<minecraft:leather> * 32);
leather.build();