#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var blockAsh = VanillaFactory.createBlock("block_ash", <blockmaterial:sand>);
blockAsh.setBlockHardness(0.8);
blockAsh.setBlockResistance(0.8);
blockAsh.setToolLevel(0);
blockAsh.setToolClass("shovel");
blockAsh.setBlockSoundType(<soundtype:sand>);
blockAsh.register();

var blockGoldenDust = VanillaFactory.createBlock("block_golden_dust", <blockmaterial:sand>);
blockGoldenDust.setBlockHardness(0.8);
blockGoldenDust.setBlockResistance(0.8);
blockGoldenDust.setToolLevel(0);
blockGoldenDust.setToolClass("shovel");
blockGoldenDust.setBlockSoundType(<soundtype:sand>);
blockGoldenDust.register();

var blockBlazePowder = VanillaFactory.createBlock("block_blaze_powder", <blockmaterial:sand>);
blockBlazePowder.setBlockHardness(0.8);
blockBlazePowder.setBlockResistance(0.8);
blockBlazePowder.setToolLevel(0);
blockBlazePowder.setToolClass("shovel");
blockBlazePowder.setBlockSoundType(<soundtype:sand>);
blockBlazePowder.register();

var blockSilverDust = VanillaFactory.createBlock("block_silver_dust", <blockmaterial:sand>);
blockSilverDust.setBlockHardness(0.8);
blockSilverDust.setBlockResistance(0.8);
blockSilverDust.setToolLevel(0);
blockSilverDust.setToolClass("shovel");
blockSilverDust.setBlockSoundType(<soundtype:sand>);
blockSilverDust.register();

var blockCharredTerracotta = VanillaFactory.createBlock("block_charred_terracotta", <blockmaterial:rock>);
blockCharredTerracotta.setBlockHardness(2.0);
blockCharredTerracotta.setBlockResistance(2.0);
blockCharredTerracotta.setToolLevel(0);
blockCharredTerracotta.setToolClass("pickaxe");
blockCharredTerracotta.setBlockSoundType(<soundtype:stone>);
blockCharredTerracotta.register();

var fauxSteel = VanillaFactory.createBlock("faux_steel", <blockmaterial:iron>);
fauxSteel.setBlockHardness(3.0);
fauxSteel.setBlockResistance(3.0);
fauxSteel.setToolLevel(2);
fauxSteel.setToolClass("pickaxe");
fauxSteel.setBlockSoundType(<soundtype:metal>);
fauxSteel.register();