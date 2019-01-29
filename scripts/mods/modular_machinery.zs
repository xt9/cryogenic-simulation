import mods.modularmachinery.RecipeBuilder;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

# ----------------
# Recipes
# ----------------
recipes.removeByMod("modularmachinery");

# Casing
recipes.addShaped("mm_casing", <modularmachinery:blockcasing> * 4, [
    [<ore:blockSheetmetalAluminum>, <chisel:marble2:7>, <ore:blockSheetmetalAluminum>],
    [<chisel:marble2:7>, <tconstruct:large_plate>.withTag({Material: "silver"}), <chisel:marble2:7>],
    [<ore:blockSheetmetalAluminum>, <chisel:marble2:7>, <ore:blockSheetmetalAluminum>],
]);

# Controller
recipes.addShaped("mm_controller",<modularmachinery:blockcontroller>, [
    [<ore:plateSanguineMetal>, <minecraft:redstone_block>, <ore:plateSanguineMetal>],
    [<ore:gearSanguineMetal>, <modularmachinery:blockcasing>, <ore:gearSanguineMetal>],
    [<ore:plateSanguineMetal>, <immersiveengineering:material:27>, <ore:plateSanguineMetal>],
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
    [<immersiveengineering:connector:4>],
    [<modularmachinery:blockcasing>],
    [null],
]);

# Energy Output Hatch
recipes.addShaped("mm_energyoutput", <modularmachinery:blockenergyoutputhatch:6>, [
    [null],
    [<modularmachinery:blockcasing>],
    [<immersiveengineering:connector:4>],
]);


# ----------------
# Altar of Blessings Recipes
# ----------------
var blessFrame = RecipeBuilder.newBuilder("blessFrame", "altar_of_blessings", 100);
blessFrame.addItemInput(<thermalexpansion:frame>);
blessFrame.addItemInput(<ore:slateTier1>.firstItem * 2);
blessFrame.addItemInput(<ore:ingotAstralStarmetal>);
blessFrame.addItemInput(<ore:gemAquamarine>.firstItem * 4);
blessFrame.addFluidInput(<liquid:blessed_life_essence> * 500);
blessFrame.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 500);
blessFrame.addItemOutput(<thermalexpansion:frame>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true}));
blessFrame.build();

var blessBeetroot = RecipeBuilder.newBuilder("blessBeetroot", "altar_of_blessings", 80);
blessBeetroot.addItemInput(<minecraft:beetroot> * 12);
blessBeetroot.addItemInput(<ore:slimeballBlood>.firstItem * 6);
blessBeetroot.addFluidInput(<liquid:blessed_life_essence> * 250);
blessBeetroot.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 250);
blessBeetroot.addItemOutput(<inspirations:edibles>);
blessBeetroot.build();

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