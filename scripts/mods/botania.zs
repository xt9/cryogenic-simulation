import mods.botania.Apothecary;


# ----------------
# Recipes
# ----------------
# Remove dye floral fertilizer recipe
recipes.removeByRecipeName("botania:fertilizer_dye");

# ------------------
# Petal Apothecary
# ------------------
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));
