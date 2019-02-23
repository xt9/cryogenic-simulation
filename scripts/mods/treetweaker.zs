import mods.treetweaker.TreeFactory;

# ----------------
# Hexlands trees
# ----------------
var slimeOak = TreeFactory.createTree("slimeOak");
slimeOak.setTreeType("OAK");
slimeOak.setLog("tconstruct:slime_congealed");
slimeOak.setLeaf("tconstruct:slime_leaves");
slimeOak.setGenBiome("traverse:green_swamp");
slimeOak.minTreeHeight = 5;
slimeOak.generationFrequency = 1;
slimeOak.generationAttempts = 2;
slimeOak.setDimWhitelist(88);
slimeOak.register();

# ----------------
# Lunar Plane Trees
# ----------------
var bloodOakLarge = TreeFactory.createTree("bloodOakLarge");
bloodOakLarge.setTreeType("LARGE_OAK");
bloodOakLarge.setLog("cryosimadditions:block_blood_resin_log");
bloodOakLarge.setLeaf("cryosimadditions:block_blood_leaves");
bloodOakLarge.setGenBiome("biometweaker:lp_badlands");
bloodOakLarge.extraTreeHeight = 10;
bloodOakLarge.minTreeHeight = 6;
bloodOakLarge.generationFrequency = 1;
bloodOakLarge.setDimWhitelist(89);
bloodOakLarge.register();

var bloodOak = TreeFactory.createTree("bloodOak");
bloodOak.setTreeType("OAK");
bloodOak.setLog("cryosimadditions:block_blood_resin_log");
bloodOak.setLeaf("cryosimadditions:block_blood_leaves");
bloodOak.setGenBiome("biometweaker:lp_badlands");
bloodOak.extraTreeHeight = 3;
bloodOak.minTreeHeight = 3;
bloodOak.generationFrequency = 1;
bloodOak.setDimWhitelist(89);
bloodOak.register();