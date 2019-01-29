
import mods.artisanworktables.builder.RecipeBuilder;

# ----------------
# Worktable recipes
# ----------------
# Stone shears + wool -> string
RecipeBuilder.get("mason")
  .setShapeless([<ore:blockWool>])
  .addOutput(<minecraft:string> * 3)
  .addTool(<contenttweaker:stone_shears>, 1)
  .create();

# Sifter + dust + water = Redstone & Extras
RecipeBuilder.get("mason")
  .setShapeless([<exnihilocreatio:block_dust>])
  .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:redstone>)
  .addTool(<ore:artisansSifter>, 1)
  .setExtraOutputOne(<ore:dustAluminum>.firstItem * 2, 0.18)
  .setExtraOutputTwo(<ore:dustCopper>.firstItem * 1, 0.18)
  .create();

# Sifter + ash + water = Pulverized coal & Extras
  RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:block_ash>])
  .setFluid(<liquid:water> * 50)
  .addOutput(<ore:dustCoal>.firstItem)
  .addTool(<ore:artisansSifter>, 1)
  .setExtraOutputOne(<minecraft:blaze_powder> * 4, 0.30)
  .setExtraOutputTwo(<thermalfoundation:material:771> * 2, 0.15)
  .create();

# Sifter + golden dust + water = Glowstone & Extras
  RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:block_golden_dust>])
  .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:glowstone_dust>)
  .addTool(<ore:artisansSifter>, 1)
  .setExtraOutputOne(<minecraft:dye:4>, 0.75)
  .setExtraOutputTwo(<minecraft:diamond>, 0.08)
  .setExtraOutputThree(<minecraft:emerald>, 0.05)
  .create();

# Sifter + silver dust + water = Silver nuggets & Extras
RecipeBuilder.get("mason")
  .setShapeless([<contenttweaker:block_silver_dust>])
  .setFluid(<liquid:water> * 50)
  .addOutput(<thermalfoundation:material:194> * 2)
  .addTool(<ore:artisansSifter>, 1)
  .setExtraOutputOne(<minecraft:prismarine_shard> * 5, 0.08)
  .create();

# Hammer + sand -> Sandy Bottle Compound
RecipeBuilder.get("mason")
  .setShaped([
    [null, <ore:slabWood>, null],
    [<ore:sand>, null, <ore:sand>],
    [null, <ore:sand>, null]
  ])
  .addOutput(<contenttweaker:sandy_bottle> * 3)
  .addTool(<ore:exHammer>, 5)
  .create();

# ----------------
# Metal Rods
# ----------------
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:ingotSteel>],
    [<ore:ingotSteel>]
  ])
  .addOutput(<ore:stickSteel>.firstItem * 4)
  .addTool(<ore:exMetalHammer>, 5)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:ingotIron>],
    [<ore:ingotIron>]
  ])
  .addOutput(<ore:stickIron>.firstItem * 4)
  .addTool(<ore:exMetalHammer>, 5)
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:ingotAluminum>],
    [<ore:ingotAluminum>]
  ])
  .addOutput(<ore:stickAluminum>.firstItem * 4)
  .addTool(<ore:exMetalHammer>, 5)
  .create();

# ----------------
# Recipe Section
# ----------------

# Basic worktable
recipes.addShaped("aw_masons_worktable", <artisanworktables:worktable:2>, [
    [<ore:ingotBrickDried>, <minecraft:crafting_table>, <ore:ingotBrickDried>],
    [null, <tconstruct:dried_clay:1>, null],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);