import mods.recipestages.Recipes;

Recipes.setPrintContainers(true);


var stages = [
    "ae2_stage",
    "as_stage",
    "bm_stage",
    "ie_stage",
    "ticon_stage"
] as string[];

Recipes.setContainerStage("appeng.container.ContainerNull", stages);
Recipes.setContainerStage("mcjty.rftools.blocks.crafter.CrafterBaseTE$1", stages);