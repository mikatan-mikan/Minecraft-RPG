tag @a[tag=ender_tp_after] add FieldEnder
tag @a[tag=ender_tp_after] remove ender_tp_after
scoreboard players set @s field_EnderKillCnt 0
kill @e[tag=EnderField_Ar]
kill @e[tag=field_wither_1]
execute in mikatanserver:dungeon run function mikatanserver:item/teleporter/area/ender/summon