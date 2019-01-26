import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;

// Alter the astral shrine loot
val astralShrineLootTable = LootTables.getTable("astralsorcery:chest_shrine");
val astralShrinePool = astralShrineLootTable.getPool("astralsorcery:chest_shrine");

astralShrinePool.removeEntry("minecraft:ender_pearl");
astralShrinePool.removeEntry("minecraft:emerald");
astralShrinePool.removeEntry("minecraft:diamond");

#val bookPool = astralShrineLootTable.addPool("custom", 1, 1, 0, 0);
#bookPool.addItemEntry(<gamestagebooks:ie_stage>, 1);
