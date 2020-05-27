recipes.remove(<enderstorage:ender_storage>);
recipes.remove(<enderstorage:ender_storage:1>);
recipes.remove(<enderstorage:ender_pouch>);

recipes.addShaped("enderstorage_chest", <enderstorage:ender_storage>, [
    [<ore:rodBlaze>, <ore:gemQuartz>, <ore:rodBlaze>],
    [<ore:obsidian>, <ore:chestGold>, <ore:obsidian>],
    [<ore:rodBlaze>, <contenttweaker:troll_eye>, <ore:rodBlaze>]
]);

recipes.addShaped("enderstorage_tank", <enderstorage:ender_storage:1>, [
    [<ore:rodBlaze>, <ore:gemQuartz>, <ore:rodBlaze>],
    [<ore:obsidian>, <enderio:block_tank>, <ore:obsidian>],
    [<ore:rodBlaze>, <contenttweaker:troll_eye>, <ore:rodBlaze>]
]);

recipes.addShaped("enderstorage_pouch", <enderstorage:ender_pouch>, [
    [<ore:rodBlaze>, <ore:gemQuartz>, <ore:rodBlaze>],
    [<ore:obsidian>, <improvedbackpacks:backpack>, <ore:obsidian>],
    [<ore:rodBlaze>, <contenttweaker:troll_eye>, <ore:rodBlaze>]
]);
