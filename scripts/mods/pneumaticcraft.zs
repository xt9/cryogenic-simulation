import mods.pneumaticcraft.thermopneumaticprocessingplant;

# ----------------
# Recipe removal
# ----------------
thermopneumaticprocessingplant.removeRecipe(<liquid:plastic>);
thermopneumaticprocessingplant.removeRecipe(<liquid:lubricant>);

# Require IF plastic to make plastic (aswell as some pressure)
thermopneumaticprocessingplant.addRecipe(
    <liquid:lpg> * 100,
    <industrialforegoing:plastic>,
    3.5,
    523.15,
    <liquid:plastic> * 1500
);

# Automated way of making Blessed Life Essence
thermopneumaticprocessingplant.addRecipe(
    <liquid:lifeessence> * 1000,
    <contenttweaker:blood_raven_feather> * 5,
    0.0,
    373.15,
    <liquid:blessed_life_essence> * 1000
);