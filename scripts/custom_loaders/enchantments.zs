#loader contenttweaker

import mods.contenttweaker.enchantments.EnchantmentBuilder;
import crafttweaker.enchantments.IEnchantmentDefinition;


var blessed = EnchantmentBuilder.create("blessed");
blessed.allowedOnBooks = false;
blessed.setDomain("contenttweaker");
blessed.setRarityVeryRare();
blessed.setTreasure(false);
blessed.register();
