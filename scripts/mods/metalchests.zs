var itemDef = <metalchests:chest_upgrade>.definition;

recipes.remove(<ore:chestCopper>.firstItem);

# Remove Copper chests
recipes.replaceAllOccurences(<ore:chestCopper>, <minecraft:chest>, <ore:chestIron>.firstItem);
recipes.replaceAllOccurences(<metalchests:chest_upgrade>, <ore:plankWood>, <metalchests:chest_upgrade:1>);

recipes.remove(itemDef.makeStack(0));
for i in 6 .. 10 {
    recipes.remove(itemDef.makeStack(i));
}