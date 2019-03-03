#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var oldGod = MaterialSystem.getMaterialBuilder().setName("Sanguine Metal").setColor(Color.fromHex("a51318")).build();
oldGod.registerParts(["gear", "plate", "nugget", "ingot", "rod"] as string[]);

var moltenSanguineMetal = oldGod.registerPart("molten").getData();
moltenSanguineMetal.addDataValue("temperature", "400");
moltenSanguineMetal.addDataValue("luminosity", "10");

var blockSanguineMetal = oldGod.registerPart("block").getData();
blockSanguineMetal.addDataValue("hardness", "5");
blockSanguineMetal.addDataValue("resistance", "30");
blockSanguineMetal.addDataValue("harvestTool", "pickaxe");
blockSanguineMetal.addDataValue("harvestLevel", "1");

var pristineGlass = MaterialSystem.getMaterialBuilder().setName("Pristine Glass").setColor(Color.fromHex("A5F5FF")).build();

var moltenPristineGlass = pristineGlass.registerPart("molten").getData();
moltenPristineGlass.addDataValue("temperature", "599");
moltenPristineGlass.addDataValue("luminosity", "10");