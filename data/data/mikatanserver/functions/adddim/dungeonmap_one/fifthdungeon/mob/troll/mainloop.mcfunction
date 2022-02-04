scoreboard players add @e[tag=FifDunTroll,limit=1,sort=nearest] TrollFifDunSkill 1
scoreboard players add @e[tag=FifDunNotMove,type=armor_stand,limit=1,sort=nearest] TrollArmorCT 1

##アマスタ呼び出し
execute as @s[tag=FifDunTroll,scores={TrollFifDunSkill=80}] at @s run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/mob/troll/set_stone

##アマスタ移動許可
execute as @e[tag=FifDunNotMove,type=armor_stand,scores={TrollArmorCT=15},limit=1,sort=nearest] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/mob/troll/move_start_armorstand
execute as @s[tag=FifDunTroll,scores={TrollFifDunSkill=95}] run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/mob/troll/set_stone_after

execute as @e[tag=FifDunNotMove,type=armor_stand,scores={TrollArmorCT=16},limit=1,sort=nearest] run data merge entity @s {NoGravity:0b}

execute as @e[tag=FifDunNotMove,type=armor_stand,scores={TrollArmorCT=15..},limit=1,sort=nearest] at @s run function mikatanserver:adddim/dungeonmap_one/fifthdungeon/mob/troll/armorstand_damage


execute as @e[tag=FifDunTroll,scores={TrollFifDunSkill=100}] run scoreboard players set @s TrollFifDunSkill 0