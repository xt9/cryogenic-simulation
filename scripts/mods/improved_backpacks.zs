# ----------------
# Recipe removal
# ----------------
recipes.remove(<improvedbackpacks:ender_backpack>);
recipes.removeByRecipeName("improvedbackpacks:blank_upgrade_2");

recipes.replaceAllOccurences(<ore:logWood>, <ore:plankTreatedWood>, <improvedbackpacks:upgrade>);
recipes.replaceAllOccurences(<ore:ingotIron>, <ore:plateIron>, <improvedbackpacks:upgrade:2>);
recipes.replaceAllOccurences(<ore:ingotGold>, <ore:plateGold>, <improvedbackpacks:upgrade:3>);
recipes.replaceAllOccurences(<ore:gemDiamond>, <rftools:infused_diamond>, <improvedbackpacks:upgrade:4>);