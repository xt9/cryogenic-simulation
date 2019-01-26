import mods.treetweaker.TreeFactory;

# ----------------
# Trees
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