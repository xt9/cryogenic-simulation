var gamestageBook = <ore:gamestageBook>;

gamestageBook.add(
    <gamestagebooks:ie_stage>,
    <gamestagebooks:ticon_stage>,
    <gamestagebooks:as_stage>,
    <gamestagebooks:bm_stage>
);


# ----------------
# Recipes
# ----------------
recipes.addShapeless("gamestagebooks_unmake", <minecraft:book>, [gamestageBook]);