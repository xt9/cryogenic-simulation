import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Squeezer;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.helpers;

# ----------------
# Coke oven section
# ----------------
CokeOven.removeRecipe(<immersiveengineering:material:6>);
CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
CokeOven.removeRecipe(<minecraft:coal:1>);

CokeOven.addRecipe(<ore:fuelCoke>.firstItem, 50, <minecraft:coal>, 300);
CokeOven.addRecipe(<ore:blockFuelCoke>.firstItem, 450, <minecraft:coal_block>, 2700);

# ----------------
# Blast furnace section
# ----------------
BlastFurnace.addRecipe(<contenttweaker:charred_feather>, <contenttweaker:blood_raven_feather>, 100);
BlastFurnace.addRecipe(<minecraft:glass>, <ore:sand>, 100);

# ----------------
# Kiln Section
# ----------------
AlloySmelter.addRecipe(<contenttweaker:block_charred_terracotta> * 8, <contenttweaker:charred_feather>, <tconstruct:materials> * 8, 140);

# ----------------
# Squeezer section
# ----------------
Squeezer.addRecipe(<tconstruct:edible:3>, <liquid:blood> * 50, <cryosimadditions:block_blood_resin_log>, 1024);
Squeezer.addRecipe(null, <liquid:blood> * 100, <ore:slimeballBlood>, 1024);

# ----------------
# Blueprint section
# ----------------
Blueprint.removeRecipe(<immersiveengineering:material:26>);
Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.removeRecipe(<immersiveengineering:material:8>);
Blueprint.removeRecipe(<immersiveengineering:material:9>);

# Vacuum tube
Blueprint.addRecipe("components", <immersiveengineering:material:26> * 4, [
    <ore:plateSilver>,
    <ore:plateSilver>,
    <ore:blockGlass>,
    <ore:dustCoal>,
    <ore:nuggetElectrum>,
    <ore:nuggetElectrum>
]);

# Circuit Board
Blueprint.addRecipe("components", <immersiveengineering:material:27>, [
    <immersiveengineering:material:26>,
    <immersiveengineering:material:26>,
    <ore:plateCopper>,
    <ore:dyeGreen>,
    <ore:nuggetElectrum>,
    <ore:nuggetElectrum>
]);

# Iron Mechanical component
Blueprint.addRecipe("components", <immersiveengineering:material:8> * 4, [
    <ore:plateIron>,
    <ore:plateIron>,
    <ore:ingotLead>,
    <ore:dustRedstone>,
]);

# Steel Mechanical component
Blueprint.addRecipe("components", <immersiveengineering:material:9> * 4, [
    <ore:plateSteel>,
    <ore:plateSteel>,
    <ore:ingotLead>,
    <ore:dustRedstone>,
]);

# Machine Frame
Blueprint.addRecipe("Machine Parts", <thermalexpansion:frame>, [
    <immersiveengineering:metal_decoration0:5>,
    <ore:blockGlass>,
    <ore:dustRedstone> * 4,
    <ore:gearSanguineMetal>
]);

# Device Frame
Blueprint.addRecipe("Machine Parts", <thermalexpansion:frame:64> * 4, [
    <ore:blockGlass>,
    <ore:plateTin> * 4,
    <ore:dustRedstone> * 4,
    <ore:gearCopper>
]);


# Engineering Knowledge
Blueprint.addRecipe("Knowledge", <gamestagebooks:ie_stage>, [
    <ore:book>,
    <immersiveengineering:tool>
]);

# Smelting Knowledge
Blueprint.addRecipe("Knowledge", <gamestagebooks:ticon_stage>, [
    <ore:book>,
    <tconstruct:faucet>
]);

# Blood Magic Knowledge
Blueprint.addRecipe("Knowledge", <gamestagebooks:bm_stage>, [
    <ore:book>,
    <bloodmagic:sacrificial_dagger>.withTag({sacrifice: 0 as byte})
]);

# Astral Sorcery Knowledge
Blueprint.addRecipe("Knowledge", <gamestagebooks:as_stage>, [
    <ore:book>,
    <astralsorcery:itemwand>.withTag({astralsorcery: {}})
]);

# ----------------
# Tooltips
# ----------------
helpers.addAtlasTip(<immersiveengineering:treated_wood:*>, [
    format.yellow("Manufactured by dropping Planks into Creosote Oil"),
    format.yellow("Only Planks from Fir Trees are suitable"),
    format.yellow("for this process")
]);

helpers.addAtlasTip(<traverse:fir_planks>, [
    format.yellow("Fir Trees are found in the"),
    format.yellow("Temperate Rainforest biome")
]);

# ----------------
# Recipe removals
# ----------------
# Remove hammer
recipes.remove(<immersiveengineering:tool>);
# Remove coke brick
recipes.remove(<immersiveengineering:stone_decoration>);
# Remove blast brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
# Remove blast brick slab
recipes.remove(<immersiveengineering:stone_decoration_slab:1>);
# Remove reinforced blast brick
recipes.remove(<immersiveengineering:stone_decoration:2>);
# Remove Block of coal coke recipe
recipes.remove(<immersiveengineering:stone_decoration:3>);
# Remove Thermoelectric generator
recipes.remove(<immersiveengineering:metal_device1:3>);
# Remove Default rod recipes
recipes.remove(<immersiveengineering:material:1>);
recipes.remove(<immersiveengineering:material:2>);
recipes.remove(<immersiveengineering:material:3>);
# Remove Treated wood
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
# Remove Connector recipes
recipes.remove(<immersiveengineering:connector>);
recipes.remove(<immersiveengineering:connector:2>);
recipes.remove(<immersiveengineering:connector:4>);
# Remove Radiator block recipe
recipes.remove(<immersiveengineering:metal_decoration0:7>);
# Remove Cloche recipe
recipes.remove(<immersiveengineering:metal_device1:13>);
# Remove Metal components
recipes.remove(<immersiveengineering:material:8>);
recipes.remove(<immersiveengineering:material:9>);
# Remove Kinetic dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
# Remove Redstone engineering block
recipes.remove(<immersiveengineering:metal_decoration0:3>);
# Remove Light engineering block
recipes.remove(<immersiveengineering:metal_decoration0:4>);
# Remove Heavy engineering block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
# Remove Blast furnace preheater
recipes.remove(<immersiveengineering:metal_device1>);
# Remove External Heater
recipes.remove(<immersiveengineering:metal_device1:1>);
# Remove MV/HV capacitor recipes
recipes.remove(<immersiveengineering:metal_device0:1>);
recipes.remove(<immersiveengineering:metal_device0:2>);
# Remove Insulated coil recipes
recipes.remove(<immersiveengineering:wirecoil:6>);
recipes.remove(<immersiveengineering:wirecoil:7>);
# Remove wire coil recipes
recipes.remove(<immersiveengineering:wirecoil>);
recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.remove(<immersiveengineering:wirecoil:2>);
recipes.remove(<immersiveengineering:wirecoil:3>);
recipes.remove(<immersiveengineering:wirecoil:4>);
recipes.remove(<immersiveengineering:wirecoil:5>);
# Remove Touch fabric recipe
recipes.remove(<immersiveengineering:material:5>);

# ----------------
# Recipes
# ----------------
recipes.addShaped("ie_hammer", <immersiveengineering:tool>, [
    [null, <ore:string>, <minecraft:stone>],
    [null, <ore:stickWood>, <ore:string>], 
    [<ore:stickWood>, null, null]
]);

recipes.addShaped("ie_coke_bricks", <immersiveengineering:stone_decoration> * 3, [
    [<ore:itemClay>, <ore:ingotBrickDried>, <ore:itemClay>],
    [<ore:ingotBrickDried>, <ore:sandstone>, <ore:ingotBrickDried>], 
    [<ore:itemClay>, <ore:ingotBrickDried>, <ore:itemClay>]
]);

recipes.addShaped("ie_blast_bricks", <immersiveengineering:stone_decoration:2> * 3, [
    [<tconstruct:materials>, <thermalfoundation:material:32>, <tconstruct:materials>],
    [<thermalfoundation:material:32>, <minecraft:blaze_powder>, <thermalfoundation:material:32>],
    [<tconstruct:materials>, <thermalfoundation:material:32>, <tconstruct:materials>],
]);

recipes.addShaped("ie_dynamo", <immersiveengineering:metal_device1:2>, [
    [<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

recipes.addShaped("ie_cloche", <immersiveengineering:metal_device1:13>, [
    [<ore:blockGlass>, <immersiveengineering:material:26>, <ore:blockGlass>],
    [<ore:blockGlass>, <ore:gearSanguineMetal>, <ore:blockGlass>], 
    [<ore:plankTreatedWood>, <ore:blockSheetmetalSteel>, <ore:plankTreatedWood>]
]);

recipes.addShaped("ie_radiator", <immersiveengineering:metal_decoration0:7> * 8, [
    [<ore:plateSteel>, <contenttweaker:block_charred_terracotta>, <ore:plateSteel>],
    [<contenttweaker:block_charred_terracotta>, <minecraft:water_bucket>, <contenttweaker:block_charred_terracotta>],
    [<ore:plateSteel>, <contenttweaker:block_charred_terracotta>, <ore:plateSteel>],
]);

recipes.addShaped("ie_redstone_engineering", <immersiveengineering:metal_decoration0:3> * 4, [
    [<ore:ingotBrickDried>, <ore:blockRedstone>, <ore:ingotBrickDried>],
    [<ore:blockRedstone>, <ore:ingotCopper>, <ore:blockRedstone>],
    [<ore:ingotBrickDried>, <ore:blockRedstone>, <ore:ingotBrickDried>],
]);

recipes.addShaped("ie_light_engineering", <immersiveengineering:metal_decoration0:4> * 4, [
    [<ore:ingotBrickDried>, <immersiveengineering:material:8>, <ore:ingotBrickDried>],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
    [<ore:ingotBrickDried>, <immersiveengineering:material:8>, <ore:ingotBrickDried>],
]);

recipes.addShaped("ie_heavy_engineering", <immersiveengineering:metal_decoration0:5> * 4, [
    [<ore:ingotBrickSeared>, <immersiveengineering:material:9>, <ore:ingotBrickSeared>],
    [<ore:ingotElectrum>, <ore:piston>, <ore:ingotElectrum>],
    [<ore:ingotBrickSeared>, <immersiveengineering:material:9>, <ore:ingotBrickSeared>],
]);

recipes.addShaped("ie_blast_preheater", <immersiveengineering:metal_device1> * 2, [
    [<ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>],
    [<ore:blockSheetmetalIron>, null, <ore:blockSheetmetalIron>],
    [<ore:blockSheetmetalIron>, <immersiveengineering:metal_device1:1>, <ore:blockSheetmetalIron>],
]);

recipes.addShaped("ie_external_heater", <immersiveengineering:metal_device1:1>, [
    [<ore:plateTin>, <ore:ingotLead>, <ore:plateTin>],
    [<ore:ingotLead>, <immersiveengineering:metal_decoration0>, <ore:ingotLead>],
    [<ore:plateTin>, <ore:furnaceStone>, <ore:plateTin>],
]);

recipes.addShaped("ie_lv_wirecoil", <immersiveengineering:wirecoil> * 8, [
    [null, <ore:wireCopper>, null],
    [<ore:wireCopper>, <ore:stickTreatedWood>, <ore:wireCopper>],
    [null, <ore:wireCopper>, null],
]);

recipes.addShaped("ie_mv_wirecoil", <immersiveengineering:wirecoil:1> * 8, [
    [null, <ore:wireElectrum>, null],
    [<ore:wireElectrum>, <ore:stickTreatedWood>, <ore:wireElectrum>],
    [null, <ore:wireElectrum>, null],
]);

recipes.addShaped("ie_hv_wirecoil", <immersiveengineering:wirecoil:2> * 8, [
    [null, <ore:wireSteel>, null],
    [<ore:wireAluminum>, <ore:stickTreatedWood>, <ore:wireAluminum>],
    [null, <ore:wireSteel>, null],
]);

recipes.addShaped("ie_hemp_wirecoil", <immersiveengineering:wirecoil:3> * 8, [
    [null, <ore:fiberHemp>, null],
    [<ore:fiberHemp>, <ore:stickTreatedWood>, <ore:fiberHemp>],
    [null, <ore:fiberHemp>, null],
]);

recipes.addShaped("ie_steel_cable_wirecoil", <immersiveengineering:wirecoil:4> * 8, [
    [null, <ore:wireSteel>, null],
    [<ore:wireSteel>, <ore:stickTreatedWood>, <ore:wireSteel>],
    [null, <ore:wireSteel>, null],
]);

recipes.addShaped("ie_redstone_wirecoil", <immersiveengineering:wirecoil:5> * 8, [
    [null, <ore:dustRedstone>, null],
    [<ore:wireAluminum>, <ore:stickTreatedWood>, <ore:wireAluminum>],
    [null, <ore:dustRedstone>, null],
]);

recipes.addShaped("ie_lv_insulated_coil", <immersiveengineering:wirecoil:6> * 4, [
    [<contenttweaker:soaked_fabric>, <immersiveengineering:wirecoil>, <contenttweaker:soaked_fabric>],
    [<immersiveengineering:wirecoil>, null, <immersiveengineering:wirecoil>],
    [<contenttweaker:soaked_fabric>, <immersiveengineering:wirecoil>, <contenttweaker:soaked_fabric>],
]);

recipes.addShaped("ie_mv_insulated_coil", <immersiveengineering:wirecoil:7> * 4, [
    [<contenttweaker:soaked_fabric>, <immersiveengineering:wirecoil:1>, <contenttweaker:soaked_fabric>],
    [<immersiveengineering:wirecoil:1>, null, <immersiveengineering:wirecoil:1>],
    [<contenttweaker:soaked_fabric>, <immersiveengineering:wirecoil:1>, <contenttweaker:soaked_fabric>],
]);

recipes.addShaped("ie_tough_fabric", <immersiveengineering:material:5>, [
    [<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>],
    [<ore:fiberHemp>, <ore:stickTreatedWood>, <ore:fiberHemp>],
    [<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>],
]);

recipes.addShaped("ie_lv_connector", <immersiveengineering:connector> * 8, [
    [null, null, null],
    [null, null, null],
    [<contenttweaker:block_charred_terracotta>, <ore:ingotLead>, <contenttweaker:block_charred_terracotta>],
]);

recipes.addShaped("ie_mv_connector", <immersiveengineering:connector:2> * 8, [
    [null, null, null],
    [<contenttweaker:block_charred_terracotta>, <ore:ingotElectrum>, <contenttweaker:block_charred_terracotta>],
    [<contenttweaker:block_charred_terracotta>, <ore:ingotElectrum>, <contenttweaker:block_charred_terracotta>],
]);

recipes.addShaped("ie_hv_connector", <immersiveengineering:connector:4> * 8, [
    [null, <ore:ingotSanguineMetal>, null],
    [<contenttweaker:block_charred_terracotta>, <ore:ingotSanguineMetal>, <contenttweaker:block_charred_terracotta>],
    [<contenttweaker:block_charred_terracotta>, <ore:ingotSanguineMetal>, <contenttweaker:block_charred_terracotta>],
]);

recipes.addShaped("ie_mv_capacitor", <immersiveengineering:metal_device0:1>, [
    [<ore:ingotElectrum>, <ore:blockLead>, <ore:ingotElectrum>],
    [<ore:ingotElectrum>, <immersiveengineering:metal_device0>, <ore:ingotElectrum>],
    [<ore:ingotElectrum>, <ore:blockRedstone>, <ore:ingotElectrum>],
]);

recipes.addShaped("ie_hv_capacitor", <immersiveengineering:metal_device0:2>, [
    [<ore:ingotSteel>, <ore:blockLead>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <immersiveengineering:metal_device0:1>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:blockRedstone>, <ore:ingotSteel>],
]);

recipes.addShaped("ie_machine_parts_blueprint", <immersiveengineering:blueprint>.withTag({blueprint: "Machine Parts"}), [
    [<ore:gearSanguineMetal>, <immersiveengineering:material:27>, <ore:gearSanguineMetal>],
    [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
]);

recipes.addShaped("ie_knowledge_blueprint", <immersiveengineering:blueprint>.withTag({blueprint: "Knowledge"}), [
    [null, <ore:book>, null],
    [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
]);

recipes.addShapeless("ie_hemp_to_string", <minecraft:string>, [<ore:fiberHemp>, <ore:fiberHemp>, <ore:fiberHemp>]);