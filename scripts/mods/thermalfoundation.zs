import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Pulverizer;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

# ----------------
# Vanilla Thermal Foundation Tools
# ----------------
var wood = {
    <thermalfoundation:tool.shears_wood:*>: false,
    <thermalfoundation:tool.sickle_wood:*>: false,
    <thermalfoundation:tool.hammer_wood:*>: false,
    <thermalfoundation:tool.excavator_wood:*>: false
} as bool[IItemStack];

var iron = {
    <thermalfoundation:tool.bow_iron:*>: false,
    <thermalfoundation:tool.fishing_rod_iron:*>: false,
    <thermalfoundation:tool.sickle_iron:*>: false,
    <thermalfoundation:tool.hammer_iron:*>: false,
    <thermalfoundation:tool.excavator_iron:*>: false,
    <thermalfoundation:tool.shield_iron:*>: false
} as bool[IItemStack];

var diamond = {
    <thermalfoundation:tool.bow_diamond:*>: false,
    <thermalfoundation:tool.fishing_rod_diamond:*>: false,
    <thermalfoundation:tool.shears_diamond:*>: false,
    <thermalfoundation:tool.sickle_diamond:*>: false,
    <thermalfoundation:tool.hammer_diamond:*>: false,
    <thermalfoundation:tool.excavator_diamond:*>: false,
    <thermalfoundation:tool.shield_diamond:*>: false
} as bool[IItemStack];

var gold = {
    <thermalfoundation:tool.bow_gold:*>: false,
    <thermalfoundation:tool.fishing_rod_gold:*>: false,
    <thermalfoundation:tool.shears_gold:*>: false,
    <thermalfoundation:tool.sickle_gold:*>: false,
    <thermalfoundation:tool.hammer_gold:*>: false,
    <thermalfoundation:tool.excavator_gold:*>: false,
    <thermalfoundation:tool.shield_gold:*>: false

} as bool[IItemStack];

# ----------------
# TF Tools & Armor
# ----------------
var copper = {
    <thermalfoundation:armor.helmet_copper:*>: false,
    <thermalfoundation:armor.plate_copper:*>: false,
    <thermalfoundation:armor.legs_copper:*>: false,
    <thermalfoundation:armor.boots_copper:*>: false,
    <thermalfoundation:tool.sword_copper:*>: false,
    <thermalfoundation:tool.shovel_copper:*>: false,
    <thermalfoundation:tool.pickaxe_copper:*>: false,
    <thermalfoundation:tool.axe_copper:*>: false,
    <thermalfoundation:tool.hoe_copper:*>: false,
    <thermalfoundation:tool.bow_copper:*>: false,
    <thermalfoundation:tool.fishing_rod_copper:*>: false,
    <thermalfoundation:tool.shears_copper:*>: false,
    <thermalfoundation:tool.sickle_copper:*>: false,
    <thermalfoundation:tool.hammer_copper:*>: false,
    <thermalfoundation:tool.excavator_copper:*>: false,
    <thermalfoundation:tool.shield_copper:*>: false
} as bool[IItemStack];

var tin = {
    <thermalfoundation:armor.helmet_tin:*>: false,
    <thermalfoundation:armor.plate_tin:*>: false,
    <thermalfoundation:armor.legs_tin:*>: false,
    <thermalfoundation:armor.boots_tin:*>: false,
    <thermalfoundation:tool.sword_tin:*>: false,
    <thermalfoundation:tool.shovel_tin:*>: false,
    <thermalfoundation:tool.pickaxe_tin:*>: false,
    <thermalfoundation:tool.axe_tin:*>: false,
    <thermalfoundation:tool.hoe_tin:*>: false,
    <thermalfoundation:tool.bow_tin:*>: false,
    <thermalfoundation:tool.fishing_rod_tin:*>: false,
    <thermalfoundation:tool.shears_tin:*>: false,
    <thermalfoundation:tool.sickle_tin:*>: false,
    <thermalfoundation:tool.hammer_tin:*>: false,
    <thermalfoundation:tool.excavator_tin:*>: false,
    <thermalfoundation:tool.shield_tin:*>: false
} as bool[IItemStack];

var silver = {
    <thermalfoundation:armor.helmet_silver:*>: false,
    <thermalfoundation:armor.plate_silver:*>: false,
    <thermalfoundation:armor.legs_silver:*>: false,
    <thermalfoundation:armor.boots_silver:*>: false,
    <thermalfoundation:tool.sword_silver:*>: false,
    <thermalfoundation:tool.shovel_silver:*>: false,
    <thermalfoundation:tool.pickaxe_silver:*>: false,
    <thermalfoundation:tool.axe_silver:*>: false,
    <thermalfoundation:tool.hoe_silver:*>: false,
    <thermalfoundation:tool.bow_silver:*>: false,
    <thermalfoundation:tool.fishing_rod_silver:*>: false,
    <thermalfoundation:tool.shears_silver:*>: false,
    <thermalfoundation:tool.sickle_silver:*>: false,
    <thermalfoundation:tool.hammer_silver:*>: false,
    <thermalfoundation:tool.excavator_silver:*>: false,
    <thermalfoundation:tool.shield_silver:*>: false
} as bool[IItemStack];

var lead = {
    <thermalfoundation:armor.helmet_lead:*>: false,
    <thermalfoundation:armor.plate_lead:*>: false,
    <thermalfoundation:armor.legs_lead:*>: false,
    <thermalfoundation:armor.boots_lead:*>: false,
    <thermalfoundation:tool.sword_lead:*>: false,
    <thermalfoundation:tool.shovel_lead:*>: false,
    <thermalfoundation:tool.pickaxe_lead:*>: false,
    <thermalfoundation:tool.axe_lead:*>: false,
    <thermalfoundation:tool.hoe_lead:*>: false,
    <thermalfoundation:tool.bow_lead:*>: false,
    <thermalfoundation:tool.fishing_rod_lead:*>: false,
    <thermalfoundation:tool.shears_lead:*>: false,
    <thermalfoundation:tool.sickle_lead:*>: false,
    <thermalfoundation:tool.hammer_lead:*>: false,
    <thermalfoundation:tool.excavator_lead:*>: false,
    <thermalfoundation:tool.shield_lead:*>: false
} as bool[IItemStack];

var aluminum = {
    <thermalfoundation:armor.helmet_aluminum:*>: false,
    <thermalfoundation:armor.plate_aluminum:*>: false,
    <thermalfoundation:armor.legs_aluminum:*>: false,
    <thermalfoundation:armor.boots_aluminum:*>: false,
    <thermalfoundation:tool.sword_aluminum:*>: false,
    <thermalfoundation:tool.shovel_aluminum:*>: false,
    <thermalfoundation:tool.pickaxe_aluminum:*>: false,
    <thermalfoundation:tool.axe_aluminum:*>: false,
    <thermalfoundation:tool.hoe_aluminum:*>: false,
    <thermalfoundation:tool.bow_aluminum:*>: false,
    <thermalfoundation:tool.fishing_rod_aluminum:*>: false,
    <thermalfoundation:tool.shears_aluminum:*>: false,
    <thermalfoundation:tool.sickle_aluminum:*>: false,
    <thermalfoundation:tool.hammer_aluminum:*>: false,
    <thermalfoundation:tool.excavator_aluminum:*>: false,
    <thermalfoundation:tool.shield_aluminum:*>: false
} as bool[IItemStack];

var nickel = {
    <thermalfoundation:armor.helmet_nickel:*>: false,
    <thermalfoundation:armor.plate_nickel:*>: false,
    <thermalfoundation:armor.legs_nickel:*>: false,
    <thermalfoundation:armor.boots_nickel:*>: false,
    <thermalfoundation:tool.sword_nickel:*>: false,
    <thermalfoundation:tool.shovel_nickel:*>: false,
    <thermalfoundation:tool.pickaxe_nickel:*>: false,
    <thermalfoundation:tool.axe_nickel:*>: false,
    <thermalfoundation:tool.hoe_nickel:*>: false,
    <thermalfoundation:tool.bow_nickel:*>: false,
    <thermalfoundation:tool.fishing_rod_nickel:*>: false,
    <thermalfoundation:tool.shears_nickel:*>: false,
    <thermalfoundation:tool.sickle_nickel:*>: false,
    <thermalfoundation:tool.hammer_nickel:*>: false,
    <thermalfoundation:tool.excavator_nickel:*>: false,
    <thermalfoundation:tool.shield_nickel:*>: false
} as bool[IItemStack];

var platinum = {
    <thermalfoundation:armor.helmet_platinum:*>: false,
    <thermalfoundation:armor.plate_platinum:*>: false,
    <thermalfoundation:armor.legs_platinum:*>: false,
    <thermalfoundation:armor.boots_platinum:*>: false,
    <thermalfoundation:tool.sword_platinum:*>: false,
    <thermalfoundation:tool.shovel_platinum:*>: false,
    <thermalfoundation:tool.pickaxe_platinum:*>: false,
    <thermalfoundation:tool.axe_platinum:*>: false,
    <thermalfoundation:tool.hoe_platinum:*>: false,
    <thermalfoundation:tool.bow_platinum:*>: false,
    <thermalfoundation:tool.fishing_rod_platinum:*>: false,
    <thermalfoundation:tool.shears_platinum:*>: false,
    <thermalfoundation:tool.sickle_platinum:*>: false,
    <thermalfoundation:tool.hammer_platinum:*>: false,
    <thermalfoundation:tool.excavator_platinum:*>: false,
    <thermalfoundation:tool.shield_platinum:*>: false
} as bool[IItemStack];

var steel = {
    <thermalfoundation:armor.helmet_steel:*>: false,
    <thermalfoundation:armor.plate_steel:*>: false,
    <thermalfoundation:armor.legs_steel:*>: false,
    <thermalfoundation:armor.boots_steel:*>: false,
    <thermalfoundation:tool.sword_steel:*>: false,
    <thermalfoundation:tool.shovel_steel:*>: false,
    <thermalfoundation:tool.pickaxe_steel:*>: false,
    <thermalfoundation:tool.axe_steel:*>: false,
    <thermalfoundation:tool.hoe_steel:*>: false,
    <thermalfoundation:tool.bow_steel:*>: false,
    <thermalfoundation:tool.fishing_rod_steel:*>: false,
    <thermalfoundation:tool.shears_steel:*>: false,
    <thermalfoundation:tool.sickle_steel:*>: false,
    <thermalfoundation:tool.hammer_steel:*>: false,
    <thermalfoundation:tool.excavator_steel:*>: false,
    <thermalfoundation:tool.shield_steel:*>: false
} as bool[IItemStack];

var electrum = {
    <thermalfoundation:armor.helmet_electrum:*>: false,
    <thermalfoundation:armor.plate_electrum:*>: false,
    <thermalfoundation:armor.legs_electrum:*>: false,
    <thermalfoundation:armor.boots_electrum:*>: false,
    <thermalfoundation:tool.sword_electrum:*>: false,
    <thermalfoundation:tool.shovel_electrum:*>: false,
    <thermalfoundation:tool.pickaxe_electrum:*>: false,
    <thermalfoundation:tool.axe_electrum:*>: false,
    <thermalfoundation:tool.hoe_electrum:*>: false,
    <thermalfoundation:tool.bow_electrum:*>: false,
    <thermalfoundation:tool.fishing_rod_electrum:*>: false,
    <thermalfoundation:tool.shears_electrum:*>: false,
    <thermalfoundation:tool.sickle_electrum:*>: false,
    <thermalfoundation:tool.hammer_electrum:*>: false,
    <thermalfoundation:tool.excavator_electrum:*>: false,
    <thermalfoundation:tool.shield_electrum:*>: false
} as bool[IItemStack];

var invar = {
    <thermalfoundation:armor.helmet_invar:*>: false,
    <thermalfoundation:armor.plate_invar:*>: false,
    <thermalfoundation:armor.legs_invar:*>: false,
    <thermalfoundation:armor.boots_invar:*>: false,
    <thermalfoundation:tool.sword_invar:*>: false,
    <thermalfoundation:tool.shovel_invar:*>: false,
    <thermalfoundation:tool.pickaxe_invar:*>: false,
    <thermalfoundation:tool.axe_invar:*>: false,
    <thermalfoundation:tool.hoe_invar:*>: false,
    <thermalfoundation:tool.bow_invar:*>: false,
    <thermalfoundation:tool.fishing_rod_invar:*>: false,
    <thermalfoundation:tool.shears_invar:*>: false,
    <thermalfoundation:tool.sickle_invar:*>: false,
    <thermalfoundation:tool.hammer_invar:*>: false,
    <thermalfoundation:tool.excavator_invar:*>: false,
    <thermalfoundation:tool.shield_invar:*>: false
} as bool[IItemStack];

var bronze = {
    <thermalfoundation:armor.helmet_bronze:*>: false,
    <thermalfoundation:armor.plate_bronze:*>: false,
    <thermalfoundation:armor.legs_bronze:*>: false,
    <thermalfoundation:armor.boots_bronze:*>: false,
    <thermalfoundation:tool.sword_bronze:*>: false,
    <thermalfoundation:tool.shovel_bronze:*>: false,
    <thermalfoundation:tool.pickaxe_bronze:*>: false,
    <thermalfoundation:tool.axe_bronze:*>: false,
    <thermalfoundation:tool.hoe_bronze:*>: false,
    <thermalfoundation:tool.bow_bronze:*>: false,
    <thermalfoundation:tool.fishing_rod_bronze:*>: false,
    <thermalfoundation:tool.shears_bronze:*>: false,
    <thermalfoundation:tool.sickle_bronze:*>: false,
    <thermalfoundation:tool.hammer_bronze:*>: false,
    <thermalfoundation:tool.excavator_bronze:*>: false,
    <thermalfoundation:tool.shield_bronze:*>: false
} as bool[IItemStack];

var constantan = {
    <thermalfoundation:armor.helmet_constantan:*>: false,
    <thermalfoundation:armor.plate_constantan:*>: false,
    <thermalfoundation:armor.legs_constantan:*>: false,
    <thermalfoundation:armor.boots_constantan:*>: false,
    <thermalfoundation:tool.sword_constantan:*>: false,
    <thermalfoundation:tool.shovel_constantan:*>: false,
    <thermalfoundation:tool.pickaxe_constantan:*>: false,
    <thermalfoundation:tool.axe_constantan:*>: false,
    <thermalfoundation:tool.hoe_constantan:*>: false,
    <thermalfoundation:tool.bow_constantan:*>: false,
    <thermalfoundation:tool.fishing_rod_constantan:*>: false,
    <thermalfoundation:tool.shears_constantan:*>: false,
    <thermalfoundation:tool.sickle_constantan:*>: false,
    <thermalfoundation:tool.hammer_constantan:*>: false,
    <thermalfoundation:tool.excavator_constantan:*>: false,
    <thermalfoundation:tool.shield_constantan:*>: false
} as bool[IItemStack];

# ----------------
# Horse Armors
# ----------------
var horseArmors = {
    <thermalfoundation:horse_armor_copper:0>: false,
    <thermalfoundation:horse_armor_tin:0>: false,
    <thermalfoundation:horse_armor_silver:0>: false,
    <thermalfoundation:horse_armor_lead:0>: false,
    <thermalfoundation:horse_armor_aluminum:0>: false,
    <thermalfoundation:horse_armor_nickel:0>: false,
    <thermalfoundation:horse_armor_platinum:0>: false,
    <thermalfoundation:horse_armor_steel:0>: false,
    <thermalfoundation:horse_armor_electrum:0>: false,
    <thermalfoundation:horse_armor_invar:0>: false,
    <thermalfoundation:horse_armor_bronze:0>: false,
    <thermalfoundation:horse_armor_constantan:0>: false
} as bool[IItemStack];

# ----------------
# Vanilla TF tool removal
# ----------------
pulverizerRemoval(wood);
inductionSmelterRemoval(iron);
pulverizerRemoval(diamond);
inductionSmelterRemoval(gold);

# ----------------
# TF Tools & Armor Removal
# ----------------
inductionSmelterRemoval(copper);
inductionSmelterRemoval(tin);
inductionSmelterRemoval(silver);
inductionSmelterRemoval(lead);
inductionSmelterRemoval(aluminum);
inductionSmelterRemoval(nickel);
inductionSmelterRemoval(platinum);
inductionSmelterRemoval(steel);
inductionSmelterRemoval(electrum);
inductionSmelterRemoval(invar);
inductionSmelterRemoval(bronze);
inductionSmelterRemoval(constantan);

# ----------------
# Horse Armor Removal
# ----------------
inductionSmelterRemoval(horseArmors);

# ----------------
# Removal Functions
# ----------------
function pulverizerRemoval(stacks as bool[IItemStack]) {
    for stack, isEnabled in stacks {
        if(!isEnabled) {
            JEI.removeAndHide(stack);
            furnace.setFuel(stack, 0);
            Pulverizer.removeRecipe(stack);
        }
    }
}

function inductionSmelterRemoval(metalObjects as bool[IItemStack]) {
    for object, isEnabled in metalObjects {
        if(!isEnabled) {
            JEI.removeAndHide(object);
            InductionSmelter.removeRecipe(<minecraft:sand:*>, object);
        }
    }
}