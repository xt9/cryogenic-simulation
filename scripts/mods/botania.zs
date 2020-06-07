import mods.botania.Apothecary;
import scripts.helpers;


# ----------
# Tooltips
# ----------
helpers.addAtlasTip(<botania:flower>, [
    format.yellow("Crafted by transmuting Ghost Plants with the Resonating Wand")
]);

# ----------------
# Recipes
# ----------------
recipes.remove(<botania:altar>);
# Remove dye floral fertilizer recipe
recipes.removeByRecipeName("botania:fertilizer_dye");

# ------------------
# Petal Apothecary
# ------------------
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "endoflame"}));
Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "hydroangeas"}));
    