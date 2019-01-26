# ----------------
# Recipe removals
# ----------------
recipes.remove(<storagedrawers:controller>);
recipes.remove(<storagedrawers:compdrawers>);
recipes.remove(<storagedrawers:upgrade_template>);


# Drawer Controller
recipes.addShaped("sd_upgrade_template", <storagedrawers:upgrade_template> * 2, [
    [<ore:stickTreatedWood>, <ore:plankTreatedWood>, <ore:stickTreatedWood>],
    [<ore:plankTreatedWood>, <ore:drawerBasic>, <ore:plankTreatedWood>],
    [<ore:stickTreatedWood>, <ore:plankTreatedWood>, <ore:stickTreatedWood>],
]);

# Drawer Controller
recipes.addShaped("sd_controller", <storagedrawers:controller>, [
    [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>],
    [<immersiveengineering:metal_decoration0:5>, <ore:drawerBasic>, <immersiveengineering:metal_decoration0:5>],
    [<ore:compressed1xCobblestone>, <ore:gemDiamond>, <ore:compressed1xCobblestone>],
]);

# Compacting Drawer
recipes.addShaped("sd_compacting", <storagedrawers:compdrawers> * 2, [
    [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>],
    [<ore:piston>, <ore:drawerBasic>, <ore:piston>],
    [<ore:compressed1xCobblestone>, <ore:plateSteel>, <ore:compressed1xCobblestone>],
]);