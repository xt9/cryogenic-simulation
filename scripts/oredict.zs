#priority 998


# ----------------
# ContentTweaker
# ----------------
<ore:feather>.add(<contenttweaker:blood_raven_feather>);

# ----------------
# Tinkers Construct
# ----------------
<ore:ingotBrickDried>.add(<tconstruct:materials:2>);

# ----------------
# Bloodmagic
# ----------------
<ore:slateTier1>.add(<bloodmagic:slate>);
<ore:slateTier2>.add(<bloodmagic:slate:1>);
<ore:slateTier3>.add(<bloodmagic:slate:2>);
<ore:slateTier4>.add(<bloodmagic:slate:3>);
<ore:slateTier5>.add(<bloodmagic:slate:4>);

# ----------------
# EnderIO
# ----------------
<ore:dustArdite>.remove(<enderio:item_material:30>);
<ore:dustCobalt>.remove(<enderio:item_material:31>);

# ----------------
# Ex Nihilo
# ----------------
var dustArdite = <exnihilocreatio:item_ore_ardite:2>;
var dustCobalt = <exnihilocreatio:item_ore_cobalt:2>;
<ore:notUsedDustArdite>.remove(dustArdite);
<ore:notUsedDustCobalt>.remove(dustCobalt);

<ore:dustArdite>.add(dustArdite);
<ore:dustCobalt>.add(dustCobalt);

<ore:exHammer>.add(
    <exnihilocreatio:hammer_stone>,
    <exnihilocreatio:hammer_iron>,
    <exnihilocreatio:hammer_diamond>
);
<ore:exMetalHammer>.add(
    <exnihilocreatio:hammer_iron>,
    <exnihilocreatio:hammer_diamond>
);

# ----------------
# Gamestage Books
# ----------------
<ore:gamestageBook>.add(
    <gamestagebooks:ie_stage>,
    <gamestagebooks:ticon_stage>,
    <gamestagebooks:as_stage>,
    <gamestagebooks:bm_stage>
);

# ----------------
# Dank Nulls
# ----------------
<ore:dankNullTier1>.add(<danknull:dank_null:0>);
<ore:dankNullTier2>.add(<danknull:dank_null:1>);
<ore:dankNullTier3>.add(<danknull:dank_null:2>);
<ore:dankNullTier4>.add(<danknull:dank_null:3>);