execute as @a[tag=BossBattle34] at @s run summon guardian ~ ~ ~ {Tags:["ThirtyfourDunMob","ThirtyfourDunZombie"],Attributes:[{Name:"minecraft:generic.attack_damage",Base:25}]}
effect give @s resistance 2 4
execute as @a[tag=BossBattle34] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.4 1.5
tellraw @a[tag=DungeonPlay_34] [{"text": "大精霊 ウィンディーネ>>","color": "aqua"},{"text": "水の加護","color": "#5e6cbf"}]

##/give @p minecraft:player_head{display:{Name:"{\"text\":\"Salamander\"}"},SkullOwner:{Id:[I;740346601,293620434,-2042410720,-1249016349],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQxOTY5MjFjYjljZGE0YjgxZjM4ODgwZDljMzIzOWY5YmRmOGNjNWY1ZjJlNzUyMDE2ZjU3ZTgzMTFmNDkifX19"}]}}} 1