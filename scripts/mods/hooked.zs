# ----------------
# Recipe removal
# ----------------

# Remove wood hook
recipes.remove(<hooked:hook>);

# Remove iron hook and components, received from quest
recipes.remove(<hooked:hook:1>);

recipes.remove(<hooked:microcrafting>);
recipes.remove(<hooked:microcrafting:1>);
recipes.remove(<hooked:microcrafting:2>);
recipes.remove(<hooked:microcrafting:3>);

# ----------------
# Recipes
# ----------------
recipes.addShaped("hooked_iron_hook", <hooked:hook:1>, [
    [<ore:string>, <ore:string>, <minecraft:tripwire_hook>],
    [null, <ore:stickIron>, <ore:string>], 
    [<ore:stickIron>, null, <ore:string>]
]);
