#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var liquidBlaze = VanillaFactory.createFluid("liquid_blaze", Color.fromHex("FF652D"));
liquidBlaze.temperature = 3000;
liquidBlaze.register();

var trollEyeGoop = VanillaFactory.createFluid("troll_eye_goop", Color.fromHex("CEA575"));
trollEyeGoop.register();

var blessedLifeEssence = VanillaFactory.createFluid("blessed_life_essence", Color.fromHex("F72133"));
blessedLifeEssence.register();

var fishOil = VanillaFactory.createFluid("fish_oil", Color.fromHex("EFA721"));
fishOil.register();