import crafttweaker.item.IItemStack;
import crafttweaker.formatting.IFormattedText;

#priority 999

function addAtlasTip(item as IItemStack, lines as IFormattedText[]) {
    item.addTooltip(format.aqua("-- Atlas Tip --"));
    for line in lines {
        item.addTooltip(line);
    }
}