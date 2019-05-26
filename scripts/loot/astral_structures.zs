import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;

// Alter the astral shrine loot
var astralShrineLootTable = LootTables.getTable("astralsorcery:chest_shrine");
var astralShrinePool = astralShrineLootTable.getPool("astralsorcery:chest_shrine");

astralShrinePool.removeEntry("minecraft:ender_pearl");
# Last parameter is weight
astralShrinePool.addItemEntry(<contenttweaker:blood_raven_feather> * 4, 7);

var astralShootingStarLootTable = LootTables.getTable("astralsorcery:shooting_star");
var astralShootingStarPool = astralShootingStarLootTable.getPool("astralsorcery:shooting_star");

astralShootingStarPool.removeEntry("minecraft:ender_pearl");

#val bookPool = astralShrineLootTable.addPool("custom", 1, 1, 0, 0);
#bookPool.addItemEntry(<gamestagebooks:ie_stage>, 1);
