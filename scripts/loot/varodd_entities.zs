import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;


val ravenTable = LootTables.getTable("varodd:entities/raven");

val ravenMainPool = ravenTable.addPool("main", 1, 1, 0, 0);
ravenMainPool.addItemEntryHelper(<contenttweaker:blood_raven_feather>, 1, 1, [
    Functions.setCount(1, 2),
    Functions.lootingEnchantBonus(2, 2, 0)
], []);

val trollTable = LootTables.getTable("varodd:entities/troll");
val trollMainPool = trollTable.addPool("main", 1, 1, 0, 0);
trollMainPool.addItemEntryHelper(<contenttweaker:troll_eye>, 1, 1, [
    Functions.setCount(1, 1),
    Functions.lootingEnchantBonus(1, 2, 0)
], []);