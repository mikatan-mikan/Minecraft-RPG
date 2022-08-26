##アマスタ視点
    #pillager
    execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon pillager ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    #enderman
    execute positioned ~2 ~ ~ if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~ ~ ~2 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~-2 ~ ~ if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~ ~ ~-2 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~2 ~ ~2 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~-2 ~ ~-2 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~2 ~ ~-2 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~-2 ~ ~2 if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}
    execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:air if predicate mikatanserver:chance/0.25 run summon enderman ~ ~ ~ {Tags:["TwelveDunMob"],DeathLootTable:"mikatanserver:dungeon/twelveth_dungeon/mob/mob"}

#自身を削除
kill @s