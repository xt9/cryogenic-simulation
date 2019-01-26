#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var oldGod = MaterialSystem.getMaterialBuilder().setName("Sanguine Metal").setColor(Color.fromHex("a51318")).build();
oldGod.registerParts(["gear", "plate", "nugget", "ingot", "rod"] as string[]);

var molten = oldGod.registerPart("molten").getData();
molten.addDataValue("temperature", "400");
molten.addDataValue("luminosity", "10");

var block = oldGod.registerPart("block").getData();
block.addDataValue("hardness", "5");
block.addDataValue("resistance", "30");
block.addDataValue("harvestTool", "pickaxe");
block.addDataValue("harvestLevel", "1");