recipes.remove(<extrautils2:ineffableglass:2>);
recipes.remove(<extrautils2:ineffableglass:3>);

# Remove Stone Drum
recipes.remove(<extrautils2:drum>);
# Remove Creative Drum recipe
recipes.remove(<extrautils2:drum:4>);


# ----------------
# Recipes
# ----------------
recipes.addShaped("exutil_mechuser", <extrautils2:user>, [
    [null, <ore:gearDiamond>, null],
    [<ore:ingotHOPGraphite>, g_blessedMachineFrame, <ore:ingotHOPGraphite>], 
    [<ore:gearSanguineMetal>, <ore:partToolRodSanguineMetal>, <ore:gearSanguineMetal>]
]);
