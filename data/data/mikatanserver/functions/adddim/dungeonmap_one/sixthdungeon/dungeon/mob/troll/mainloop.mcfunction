scoreboard players add @e[tag=SixDunTroll,limit=1,sort=nearest] TrollSixDunSkill 1
scoreboard players add @e[tag=SixDunNotMove,type=armor_stand,limit=1,sort=nearest] TrollArmorCT 1

##アマスタ呼び出し
execute as @s[tag=SixDunTroll,scores={TrollSixDunSkill=80}] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/mob/troll/set_stone

##アマスタ移動許可
execute as @e[tag=SixDunNotMove,type=armor_stand,scores={TrollArmorCT=15},limit=1,sort=nearest] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/mob/troll/move_start_armorstand
execute as @s[tag=SixDunTroll,scores={TrollSixDunSkill=95}] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/mob/troll/set_stone_after

execute as @e[tag=SixDunNotMove,type=armor_stand,scores={TrollArmorCT=16},limit=1,sort=nearest] run data merge entity @s {NoGravity:0b}

execute as @e[tag=SixDunNotMove,type=armor_stand,scores={TrollArmorCT=15..},limit=1,sort=nearest] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/mob/troll/armorstand_damage


execute as @e[tag=SixDunTroll,scores={TrollSixDunSkill=100}] run scoreboard players set @s TrollSixDunSkill 0