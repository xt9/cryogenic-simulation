#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var stoneShears = VanillaFactory.createItem("stone_shears");
stoneShears.maxStackSize = 1;
stoneShears.maxDamage = 80;
stoneShears.register();

var bloodRavenFeather = VanillaFactory.createItem("blood_raven_feather");
bloodRavenFeather.register();

var trollEye = VanillaFactory.createItem("troll_eye");
trollEye.register();

var searedPlate = VanillaFactory.createItem("seared_plate");
searedPlate.register();

var sandyBottle = VanillaFactory.createItem("sandy_bottle");
sandyBottle.register();

var charredFeather = VanillaFactory.createItem("charred_feather");
charredFeather.register();

var soakedFabric = VanillaFactory.createItem("soaked_fabric");
soakedFabric.register();

var bloodyMud = VanillaFactory.createItem("bloody_mud");
bloodyMud.register();