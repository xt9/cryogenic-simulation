import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityDropFunction;

/* <entity:varodd:raven>.addDropFunction(function(entity, damageSource) {
    var killerEntity = damageSource.getTrueSource();
    
    if(killerEntity instanceof IPlayer) {
        var player as IPlayer = killerEntity;
        if(!player.hasGameStage("bm_stage")) {
            return <gamestagebooks:bm_stage>;
        }
    }
    return null;
} as IEntityDropFunction); */
