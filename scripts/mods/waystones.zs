# ----------------
# Recipe Removal
# ----------------
recipes.remove(<waystones:waystone>);
recipes.remove(<waystones:return_scroll>);
recipes.remove(<waystones:bound_scroll>);
recipes.remove(<waystones:warp_scroll>);
recipes.remove(<waystones:warp_stone>);

# ----------------
# Recipes
# ----------------
recipes.addShaped("waystones_waystone", <waystones:waystone>, [
    [null, <chisel:antiblock:15>, null],
    [<chisel:marble2:7>, <contenttweaker:blood_raven_feather>, <chisel:marble2:7>], 
    [<chisel:marble2:7>, <ore:compressed3xCobblestone>, <chisel:marble2:7>]
]);

recipes.addShaped("waystones_warp_stone", <waystones:warp_stone>, [
    [<ore:dyePurple>, <ore:gemAquamarine>, <ore:dyePurple>],
    [<ore:gemAquamarine>, <contenttweaker:troll_eye>, <ore:gemAquamarine>], 
    [<ore:dyePurple>, <ore:gemAquamarine>, <ore:dyePurple>]
]);
