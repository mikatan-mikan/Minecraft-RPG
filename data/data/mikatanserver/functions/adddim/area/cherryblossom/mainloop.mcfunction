
##cherryblossom
    ##わき制限  FieldCherryBlossom tagを持っているプレイヤーがいるなら(10秒に一回判定)
    scoreboard players operation $score TMP = $cherryblossom_count field_loop
    scoreboard players operation $score TMP %= $200 int
    execute in mikatanserver:dungeon if score $score TMP matches 0 if entity @a[tag=FieldCherryblossom] run function mikatanserver:adddim/area/cherryblossom/mob/cherry_zombie/spawn/spawncheck

    ##cherry king
    execute as @a[scores={field_mobcount=1..},tag=FieldCherryblossom,predicate=mikatanserver:chance/0.02] at @s run function mikatanserver:adddim/area/cherryblossom/mob/cherryking
    execute as @a[scores={field_mobcount=1..},tag=FieldCherryblossom,nbt={Inventory:[{id:"minecraft:player_head",Count:1b,Slot:100b,tag:{ender_ar:1b}}]}] at @s if predicate mikatanserver:chance/0.02 run function mikatanserver:adddim/area/ender/mob/summon_eye_ender
    scoreboard players set @a field_mobcount 0

    ##村人に話しかけたなら
    execute as @a[tag=FieldCherryblossom,scores={VillagerFlag=1..},predicate=mikatanserver:villager/cherryblossom/1] at @s run function mikatanserver:adddim/area/cherryblossom/villager/talk_1
    execute as @a[tag=FieldCherryblossom,scores={VillagerFlag=1..},predicate=mikatanserver:villager/cherryblossom/2] at @s run function mikatanserver:adddim/area/cherryblossom/villager/talk_2
    execute as @a[tag=FieldCherryblossom,scores={VillagerFlag=1..},predicate=mikatanserver:villager/cherryblossom/3] at @s run function mikatanserver:adddim/area/cherryblossom/villager/talk_3
    scoreboard players set @a[tag=FieldCherryblossom] VillagerFlag 0


##ループリセット
execute if score $cherryblossom_count field_loop matches 8000.. run scoreboard players set $cherryblossom_count field_loop 0

##わきループ
scoreboard players add $cherryblossom_count field_loop 1