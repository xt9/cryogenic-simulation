import mods.tconstruct.Drying;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;
import mods.tconstruct.Fuel;
import mods.tconstruct.Alloy;
import scripts.helpers;

# ----------------
# Drying Section
# ----------------
Drying.removeRecipe(<tconstruct:dried_clay>);
Drying.removeRecipe(<tconstruct:edible:33>);
Drying.removeRecipe(<ore:ingotBrickDried>.firstItem, <minecraft:clay_ball>);

Drying.addRecipe(<ore:ingotBrickDried>.firstItem, <minecraft:clay_ball>, 700);
Drying.addRecipe(<tconstruct:edible:33>, <ore:slimeballBlood>.firstItem, 1000);

# Drying Plastic
Drying.addRecipe(<ore:itemRubber>.firstItem, <industrialforegoing:dryrubber>, 1000);

# ----------------
# Recipe Section
# ----------------
# Remove EFLN recipe
recipes.remove(<tconstruct:throwball:1>);
recipes.remove(<tconstruct:soil:0>);
recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:seared_tank>);
# Remove colored clear glass variants, add with chiseling
recipes.remove(<tconstruct:clear_stained_glass:*>);
recipes.removeByRecipeName("tconstruct:gadgets/slime_boots_fallback");
recipes.removeByRecipeName("tconstruct:gadgets/slimeboots/blue");
recipes.removeByRecipeName("tconstruct:gadgets/slimeboots/purple");
recipes.removeByRecipeName("tconstruct:gadgets/slimeboots/magma");

# Change default slime boot recipe
recipes.replaceAllOccurences(<tconstruct:slime_congealed>, <immersiveengineering:cloth_device>, <tconstruct:slime_boots>);

# Remove slime sling, a bit strong
recipes.remove(<tconstruct:slimesling:*>);

# Add new smeltery controller recipe
recipes.addShaped("tconstruct_smeltery_controller", <tconstruct:smeltery_controller>, [
    [<tconstruct:materials>, <tconstruct:materials>, <tconstruct:materials>],
    [<tconstruct:materials>, <minecraft:redstone_block>, <tconstruct:materials>],
    [<tconstruct:materials>, <minecraft:furnace>, <tconstruct:materials>]
]);

# Add new smeltery controller recipe
recipes.addShaped("tconstruct_seared_tank", <tconstruct:seared_tank>, [
    [null, <tconstruct:materials>, null],
    [<tconstruct:materials>, <minecraft:glass_bottle>, <tconstruct:materials>],
    [null, <tconstruct:materials>, null]
]);

# ----------------
# Casting Section
# ----------------
Casting.addTableRecipe(<tconstruct:cast_custom:3>, <contenttweaker:seared_plate>, <liquid:gold>, 288, true);
Casting.addTableRecipe(<tconstruct:cast_custom:3>, <contenttweaker:seared_plate>, <liquid:alubrass>, 144, true);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, <liquid:alubrass>, 144, true);

# Remove coagulated blood
Casting.removeTableRecipe(<tconstruct:edible:3>);

# Remove wood -> stone gear casting
Casting.removeTableRecipe(<thermalfoundation:material:23>);

# ----------------
# Melting Section
# ----------------
for stack in <ore:plastic>.items { 
    Melting.addRecipe(<liquid:plastic> * 250, stack, 500);
}
Melting.addRecipe(<liquid:liquid_blaze> * 1000, <contenttweaker:block_blaze_powder>, 500);
Melting.removeRecipe(<liquid:blood>);

# ----------------
# Alloying Section
# ----------------
Alloy.removeRecipe(<liquid:electrical_steel>);
Alloy.removeRecipe(<liquid:energetic_alloy>);
Alloy.removeRecipe(<liquid:vibrant_alloy>);
Alloy.removeRecipe(<liquid:redstone_alloy>);
Alloy.removeRecipe(<liquid:conductive_iron>);
Alloy.removeRecipe(<liquid:pulsating_iron>);
Alloy.removeRecipe(<liquid:dark_steel>);
Alloy.removeRecipe(<liquid:soularium>);
Alloy.removeRecipe(<liquid:end_steel>);

# ----------------
# Fuel Section
# ----------------
helpers.addAtlasTip(<forge:bucketfilled>.withTag({FluidName: "liquid_blaze", Amount: 1000}), [
    format.red("Tinkers smeltery fuel, really hot")
]);

Fuel.registerFuel(<liquid:liquid_blaze> * 50, 120);

# ----------------
# Tooltips
# ----------------
helpers.addAtlasTip(<tconstruct:soil>, [
    format.yellow("Manufactured by dropping Gravel into Creosote Oil")
]);

helpers.addAtlasTip(<tconstruct:slime_congealed:3>, [
    format.yellow("Crush a Heartbeet against this block"),
    format.yellow("to gain Regenration IV for 1 minute.")
]); 