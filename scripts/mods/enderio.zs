import mods.enderio.Vat;

# ---------------------------------------------
# Recipes 
# (Most disabled in the user XML files for EIO)
# ---------------------------------------------
# Remove quartz recolor recipes, done with a Chisel
recipes.remove(<enderio:block_dark_fused_glass:*>);
recipes.remove(<enderio:block_dark_fused_quartz:*>);
recipes.remove(<enderio:block_enlightened_fused_glass:*>);
recipes.remove(<enderio:block_enlightened_fused_quartz:*>);
recipes.remove(<enderio:block_fused_glass:*>);
recipes.remove(<enderio:block_fused_quartz:*>);
# Remove Tank recipes
recipes.remove(<enderio:block_tank>);
recipes.remove(<enderio:block_tank:1>);
# Remove EnderCore tnt recipes
recipes.removeByRecipeName("enderio:confusion_charge");
recipes.removeByRecipeName("enderio:concussion_charge");
recipes.removeByRecipeName("enderio:ender_charge");
# Remove slab to plank recipe (Tinkers construct recipe conflict)
recipes.removeByRecipeName("endercore:slabwoodoak_to_planks");
# Remove ender pearl recipe
recipes.removeByRecipeName("enderio:ender_defragmentation");

recipes.addShaped("eio_tank", <enderio:block_tank>, [
    [<ore:ingotSteel>, <minecraft:iron_bars>, <ore:ingotSteel>],
    [<pneumaticcraft:pressure_tube>, <ore:fusedQuartz>, <pneumaticcraft:pressure_tube>],
    [<ore:ingotSteel>, <minecraft:iron_bars>, <ore:ingotSteel>]
]);

recipes.addShaped("eio_pressurized_tank", <enderio:block_tank:1>, [
    [<ore:ingotDarkSteel>, <enderio:block_dark_iron_bars>, <ore:ingotDarkSteel>],
    [<enderio:block_dark_iron_bars>, <enderio:block_tank>, <enderio:block_dark_iron_bars>],
    [<ore:ingotDarkSteel>, <enderio:block_dark_iron_bars>, <ore:ingotDarkSteel>]
]);

recipes.addShapeless("eio_quite_clear_enlightened_glass", <enderio:block_enlightened_fused_glass> * 4, [
    <enderio:block_fused_glass>, <enderio:block_fused_glass>, <enderio:block_fused_glass>, <ore:dustGlowstone>
]);

recipes.addShapeless("eio_quite_clear_dark_glass", <enderio:block_dark_fused_glass> * 4, [
    <enderio:block_fused_glass>, <enderio:block_fused_glass>, <enderio:block_fused_glass>, <ore:dustObsidian>
]);

# Conduit recipes
recipes.addShaped("eio_item_conduit", <enderio:item_item_conduit> * 8, [
    [<contenttweaker:lubricated_gear>, <ore:itemConduitBinder>, <contenttweaker:lubricated_gear>],
    [<ore:itemConduitBinder>, <ore:itemduct>, <ore:itemConduitBinder>],
    [<contenttweaker:lubricated_gear>, <ore:itemConduitBinder>, <contenttweaker:lubricated_gear>]
]);

recipes.addShaped("eio_energy_conduit_t1", <enderio:item_power_conduit> * 8, [
    [<contenttweaker:lubricated_gear>, <ore:itemConduitBinder>, <contenttweaker:lubricated_gear>],
    [<ore:itemConduitBinder>, <ore:fluxduct>, <ore:itemConduitBinder>],
    [<contenttweaker:lubricated_gear>, <ore:itemConduitBinder>, <contenttweaker:lubricated_gear>]
]);

recipes.addShaped("eio_energy_conduit_t2", <enderio:item_power_conduit:1> * 8, [
    [<enderio:item_power_conduit>, <ore:itemConduitBinder>, <enderio:item_power_conduit>],
    [<ore:itemConduitBinder>, <ore:ingotEnergeticAlloy>, <ore:itemConduitBinder>],
    [<enderio:item_power_conduit>, <ore:itemConduitBinder>, <enderio:item_power_conduit>]
]);

recipes.addShaped("eio_energy_conduit_t3", <enderio:item_power_conduit:2> * 8, [
    [<enderio:item_power_conduit:1>, <ore:itemConduitBinder>, <enderio:item_power_conduit:1>],
    [<ore:itemConduitBinder>, <ore:ingotVibrantAlloy>, <ore:itemConduitBinder>],
    [<enderio:item_power_conduit:1>, <ore:itemConduitBinder>, <enderio:item_power_conduit:1>]
]);

recipes.addShaped("eio_fluid_conduit_t1", <enderio:item_liquid_conduit:1> * 8, [
    [<contenttweaker:lubricated_gear>, <ore:itemConduitBinder>, <contenttweaker:lubricated_gear>],
    [<ore:itemConduitBinder>, <ore:fluiduct>, <ore:itemConduitBinder>],
    [<contenttweaker:lubricated_gear>, <ore:itemConduitBinder>, <contenttweaker:lubricated_gear>]
]);

recipes.addShaped("eio_fluid_conduit_t2", <enderio:item_liquid_conduit:2> * 8, [
    [<enderio:item_liquid_conduit:1>, <ore:fusedQuartz>, <enderio:item_liquid_conduit:1>],
    [<ore:fusedQuartz>, <ore:ingotVibrantAlloy>, <ore:fusedQuartz>],
    [<enderio:item_liquid_conduit:1>, <ore:fusedQuartz>, <enderio:item_liquid_conduit:1>]
]);

/* recipes.addShaped("eio_ae2_conduit_smart", <enderio:item_me_conduit> * 8, [
    [<contenttweaker:lubricated_gear>, <ore:itemConduitBinder>, <contenttweaker:lubricated_gear>],
    [<ore:itemConduitBinder>, <appliedenergistics2:part:56>, <ore:itemConduitBinder>],
    [<contenttweaker:lubricated_gear>, <ore:itemConduitBinder>, <contenttweaker:lubricated_gear>]
]);

recipes.addShaped("eio_ae2_conduit_dense", <enderio:item_me_conduit:1> * 8, [
    [<enderio:item_me_conduit>, <ore:itemConduitBinder>, <enderio:item_me_conduit>],
    [<ore:itemConduitBinder>, <appliedenergistics2:part:76>, <ore:itemConduitBinder>],
    [<enderio:item_me_conduit>, <ore:itemConduitBinder>, <enderio:item_me_conduit>]
]); */

recipes.addShapeless("eio_advanced_filter", <enderio:item_advanced_item_filter>, [<enderio:item_basic_item_filter>, <pneumaticcraft:capacitor>]);

# ------------
# Vat recipes
# ------------
Vat.addRecipe(
    <liquid:blessed_life_essence>,
    1.0,
    <liquid:lifeessence>,
    [<contenttweaker:blood_raven_feather>],
    [0.25],
    [],
    []
);

