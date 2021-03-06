import scripts.helpers;

# ----------------
# Recipe removal
# ----------------
recipes.remove(<midnight:bogshroom_powder>);
recipes.remove(<midnight:nightshroom_powder>);
recipes.remove(<midnight:dewshroom_powder>);
recipes.remove(<midnight:viridshroom_powder>);

# ----------
# Tooltips
# ----------
helpers.addAtlasTip(<midnight:ghost_plant>, [
    format.yellow("Found in the Midnight")
]);

helpers.addAtlasTip(<midnight:dark_pearl>, [
    format.yellow("Rare drop from Dark Pearl Ore")
]);