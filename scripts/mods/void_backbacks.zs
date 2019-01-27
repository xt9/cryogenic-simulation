import crafttweaker.item.IIngredient;

# ----------------
# Recipe removal
# ----------------
recipes.remove(<v0idssmartbackpacks:reinforced_leather>);
recipes.remove(<v0idssmartbackpacks:dragon_scales>);

# Remove these by recipe name since we also add them from Cryosim
recipes.removeByRecipeName("v0idssmartbackpacks:backpack_basic");
recipes.removeByRecipeName("v0idssmartbackpacks:backpack_reinforced");
recipes.removeByRecipeName("v0idssmartbackpacks:backpack_advanced");
recipes.removeByRecipeName("v0idssmartbackpacks:backpack_ultimate");

recipes.addShaped("vb_reinforced_leather", <v0idssmartbackpacks:reinforced_leather>, [
    [<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:leather>, <ore:plateSanguineMetal>, <ore:leather>],
    [<ore:leather>, <ore:leather>, <ore:leather>]
]);