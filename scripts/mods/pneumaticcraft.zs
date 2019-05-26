import crafttweaker.item.IItemStack;
import mods.pneumaticcraft.thermopneumaticprocessingplant;
import mods.pneumaticcraft.pressurechamber;

# -------------
# Recipes
# -------------
recipes.remove(<pneumaticcraft:compressed_iron_gear>);
recipes.remove(<pneumaticcraft:air_compressor>);
recipes.remove(<pneumaticcraft:refinery>);
recipes.remove(<pneumaticcraft:pressure_tube>);
recipes.remove(<pneumaticcraft:thermopneumatic_processing_plant>);
recipes.remove(<pneumaticcraft:vortex_tube>);
recipes.remove(<pneumaticcraft:plastic_mixer>);
recipes.remove(<pneumaticcraft:charging_station>);
recipes.remove(<pneumaticcraft:pressure_chamber_wall>);
recipes.remove(<pneumaticcraft:uv_light_box>);
recipes.remove(<pneumaticcraft:speed_upgrade>);
recipes.remove(<pneumaticcraft:liquid_compressor>);
recipes.remove(<pneumaticcraft:advanced_air_compressor>);
recipes.remove(<pneumaticcraft:advanced_liquid_compressor>);
recipes.remove(<pneumaticcraft:network_component:3>);

# Remove redundant pressure chamber recipes
recipes.removeByRecipeName("pneumaticcraft:pressure_chamber_glass");
recipes.removeByRecipeName("pneumaticcraft:pressure_chamber_glass_shapeless_x4");
recipes.removeByRecipeName("pneumaticcraft:pressure_chamber_valve");
recipes.removeByRecipeName("pneumaticcraft:pressure_chamber_valve_shapeless_x4");

recipes.addShaped("pn_pressure_tube", <pneumaticcraft:pressure_tube> * 8, [
    [<ore:ingotIronCompressed>, <ore:ingotArdite>, <ore:ingotIronCompressed>]
]);

recipes.addShaped("pn_air_compressor", <pneumaticcraft:air_compressor>, [
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<contenttweaker:lubricated_gear>, null, <pneumaticcraft:pressure_tube>],
    [<tconstruct:large_plate>.withTag({Material: "ardite"}), <ore:piston>, <tconstruct:large_plate>.withTag({Material: "ardite"})]
]);

recipes.addShaped("pn_liquid_air_compressor", <pneumaticcraft:liquid_compressor>, [
    [<ore:plasticRed>, <enderio:block_tank>, <ore:plasticRed>],
    [<pneumaticcraft:pressure_tube>, <pneumaticcraft:air_compressor>, <pneumaticcraft:pressure_tube>]
]);

recipes.addShaped("pn_refinery", <pneumaticcraft:refinery>, [
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
    [<astralsorcery:itemcraftingcomponent:3>, <extrautils2:drum:2>, <astralsorcery:itemcraftingcomponent:3>], 
    [<ore:itemRubber>, <contenttweaker:lubricated_gear>, <ore:itemRubber>]
]);

recipes.addShaped("pn_thermopneumatic_processing_plant", <pneumaticcraft:thermopneumatic_processing_plant>, [
    [null, <pneumaticcraft:pressure_tube>, null],
    [<modularmachinery:blockfluidinputhatch:7>, g_blessedMachineFrame, <modularmachinery:blockfluidoutputhatch:7>],
    [<contenttweaker:lubricated_gear>, <ore:ingotIronCompressed>, <contenttweaker:lubricated_gear>]
]);

recipes.addShaped("pn_vortex_tube", <pneumaticcraft:vortex_tube>, [
    [<ore:stickSteel>, <contenttweaker:lubricated_gear>, <ore:stickSteel>],
    [<ore:blockMagma>, <pneumaticcraft:pressure_tube>, <ore:blockIce>],
    [<ore:stickSteel>, <contenttweaker:lubricated_gear>, <ore:stickSteel>]
]);

recipes.addShaped("pn_plastic_mixer", <pneumaticcraft:plastic_mixer>, [
    [<ore:stickSteel>, <astralsorcery:itemcraftingcomponent:3>, <ore:stickSteel>],
    [<ore:ingotHOPGraphite>, <industrialforegoing:dye_mixer>, <ore:ingotHOPGraphite>],
    [<tconstruct:large_plate>.withTag({Material: "cobalt"}), <contenttweaker:lubricated_gear>, <tconstruct:large_plate>.withTag({Material: "cobalt"})]
]);

recipes.addShaped("pn_charging_station", <pneumaticcraft:charging_station>, [
    [null, <pneumaticcraft:pressure_tube>, null],
    [<ore:plasticRed>, <contenttweaker:lubricated_gear>, <ore:plasticRed>],
    [<ore:stickSteel>, <ore:compressed2xCobblestone>, <ore:stickSteel>]
]);

recipes.addShaped("pn_pressure_chamber_wall", <pneumaticcraft:pressure_chamber_wall> * 16, [
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <contenttweaker:lubricated_gear>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]
]);

recipes.addShaped("pn_uv_lightbox", <pneumaticcraft:uv_light_box>, [
    [<ore:enlightenedFusedQuartz>, <ore:enlightenedFusedQuartz>, <ore:enlightenedFusedQuartz>],
    [<ore:ingotIronCompressed>, <pneumaticcraft:pcb_blueprint>, <pneumaticcraft:pressure_tube>],
    [<ore:ingotIronCompressed>, <contenttweaker:lubricated_gear>, <ore:ingotIronCompressed>]
]);

recipes.addShaped("pn_speed_upgrade", <pneumaticcraft:speed_upgrade>, [
    [<ore:gemLapis>, <minecraft:sugar>, <ore:gemLapis>],
    [<minecraft:sugar>, <contenttweaker:lubricated_gear>, <minecraft:sugar>],
    [<ore:gemLapis>, <minecraft:sugar>, <ore:gemLapis>]
]);

recipes.addShaped("pn_advanced_air_compressor", <pneumaticcraft:advanced_air_compressor>, [
    [<ore:plasticBlue>, <ore:plasticBlue>, <ore:plasticBlue>],
    [<pneumaticcraft:advanced_pressure_tube>, <pneumaticcraft:air_compressor>, <pneumaticcraft:advanced_pressure_tube>]
]);

recipes.addShaped("pn_advanced_liquid_compressor", <pneumaticcraft:advanced_liquid_compressor>, [
    [<ore:plasticBlue>, <ore:plasticBlue>, <ore:plasticBlue>],
    [<pneumaticcraft:advanced_pressure_tube>, <pneumaticcraft:liquid_compressor>, <pneumaticcraft:advanced_pressure_tube>]
]);

recipes.addShaped("pn_network_io_port", <pneumaticcraft:network_component:3> * 2, [
    [null, <pneumaticcraft:capacitor>, null],
    [<modularmachinery:blockinputbus:6>, <appliedenergistics2:material:24>, <modularmachinery:blockoutputbus:6>],
    [null, <pneumaticcraft:capacitor>, null]
]);



# ----------------
# Pressure Chamber
# ----------------
pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);
pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);
pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);
pressurechamber.removeRecipe([<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);

# Empty pcb
pressurechamber.addRecipe([
    <pneumaticcraft:plastic:11>,
    <immersiveengineering:material:27>
], 3.0, [<pneumaticcraft:empty_pcb:100>]);

# Transistor
pressurechamber.addRecipe([
    <immersiveengineering:material:9>,
    <pneumaticcraft:plastic:8>,
    <ore:crystalFluix>.firstItem * 2
], 3.0, [<pneumaticcraft:transistor>]);

# Capacitor
pressurechamber.addRecipe([
    <immersiveengineering:material:9>,
    <pneumaticcraft:plastic:12>,
    <ore:crystalFluix>.firstItem * 2
], 3.0, [<pneumaticcraft:capacitor>]);

# Conduit binder
pressurechamber.addRecipe([
    <pneumaticcraft:plastic:3> * 3,
    <minecraft:clay_ball> * 8,
    <appliedenergistics2:material:5> * 8
], 3.0, [<enderio:item_material:4> * 16]);

# Etching acid
pressurechamber.addRecipe([
    <forge:bucketfilled>.withTag({FluidName: "ammonium_nitrate", Amount: 1000}),
    <contenttweaker:scorpion_venom_gland> * 4,
    <minecraft:rotten_flesh> * 4
], 3.0, [<forge:bucketfilled>.withTag({FluidName: "etchacid", Amount: 1000})]);

# Tier 2 crafting seed
pressurechamber.addRecipe([
    <mysticalagriculture:crafting:18>,
    <mysticalagriculture:crafting:2> * 6,
    <mysticalagriculture:crafting:5> * 10
], 3.0, [<mysticalagriculture:crafting:19>]);

# Infinity BiMetal gear
pressurechamber.addRecipe([
    <pneumaticcraft:compressed_iron_gear>,
    <ore:ingotElectricalSteel>.firstItem * 4,
    <ore:dustBedrock>.firstItem * 4
], 3.0, [<enderio:item_material:11>]);

# ----------------
# TPP
# ----------------
thermopneumaticprocessingplant.removeRecipe(<liquid:plastic>);
thermopneumaticprocessingplant.removeRecipe(<liquid:lubricant>);

# Require IF plastic to make plastic (aswell as some pressure)
thermopneumaticprocessingplant.addRecipe(
    <liquid:lpg> * 250,
    <industrialforegoing:plastic>,
    3.5,
    523.15,
    <liquid:plastic> * 2000
);

# Automated way of making Blessed Life Essence (A tad cheaper than the brewing recipe)
thermopneumaticprocessingplant.addRecipe(
    <liquid:lifeessence> * 1000,
    <contenttweaker:blood_raven_feather> * 4,
    0.0,
    373.15,
    <liquid:blessed_life_essence> * 1000
);

# Ammonium Nitrate
thermopneumaticprocessingplant.addRecipe(
    <liquid:fish_oil> * 1000,
    <ore:dustSaltpeter>.firstItem * 4,
    0.0,
    402.15,
    <liquid:ammonium_nitrate> * 500
);