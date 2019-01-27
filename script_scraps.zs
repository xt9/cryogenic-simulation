 # Copy old tags from bags, partial override
/* 
    function(out, ins, cInfo) {
    var oldTags = ins.backpack.tag as IData;

    var colorTag = {} as IData;
    if(oldTags has "backpack_tag") {
        colorTag = oldTags.backpack_tag.color;
    }

    var newTags = {
        backpack_tag: {
            color: colorTag, 
            upgrades: {
                Size: 18
            }, 
            energyMax: 0, 
            energy: 0
        },
        "vsb:nbtItemHandler": {
            Size: 117 
        }
    } as IData;

    var finalTags = (oldTags + newTags) as IData;
    print("newTags: " + newTags.asString());
    print("finalTags: " + finalTags.asString());
    return out.withTag(finalTags);
}, null);
 */

# Custom hammer transformer
/* .transformNew(function(item) {
            var damage = 1;
            var currentDamage = 0;

            if(item.tag has "Damage") {
                currentDamage = item.tag.Damage as int;
                if(currentDamage >= 100) {
                    return null;
                }
            }

            return item.updateTag({Damage: (damage + currentDamage)});
        }), */

/* var hammerUse = hammer.transformNew(
    function(item) {

        // Fetch the item's tags
        var itemTags = item.tag as IData;

        // Fetch the item's damage
        var itemDmg = (itemTags has "hammerDmg") ? itemTags.hammerDmg as int : 0;

        // Increase the damage
        itemDmg = itemDmg + 1;
        if (itemDmg >= 100) {
            return null;
        }

        // Modify the item's NBT tags
        var damageTag = {hammerDmg: itemDmg} as IData;

        // Return the item with the recombined tags
        return item.withTag(itemTags + damageTag);
    }
); */

# Enchanting to nbt tags
/* val array as IEnchantmentDefinition[] = [
    <enchantment:minecraft:fire_protection>,
    <enchantment:minecraft:feather_falling>,
    <enchantment:minecraft:blast_protection>,
    <enchantment:minecraft:projectile_protection>,
    <enchantment:minecraft:respiration>,
    <enchantment:minecraft:aqua_affinity>
];

var map as IData = {};

for ench in array {
    map += ench.makeEnchantment(3).makeTag();
}

print(map.asString()); */


# Obsolete since this is now baseline for the mod
/* addDankNullTooltip(<danknull:dank_null>, "128", 9);
addDankNullTooltip(<danknull:dank_null:1>, "512", 18);
addDankNullTooltip(<danknull:dank_null:2>, "1152", 27);
addDankNullTooltip(<danknull:dank_null:3>, "2048", 36);
addDankNullTooltip(<danknull:dank_null:4>, "3200", 45);
addDankNullTooltip(<danknull:dank_null:5>, "2.14b", 54);

function addDankNullTooltip(item as IItemStack, items as string, slots as int) {
    helpers.addAtlasTip(item, [
        format.yellow("Capacity: ") + format.white(items + " items"),
        format.yellow("Slots: ") + format.white("" + slots)
    ]);  
} */