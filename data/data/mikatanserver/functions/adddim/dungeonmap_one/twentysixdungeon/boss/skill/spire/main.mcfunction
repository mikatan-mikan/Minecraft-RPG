execute as @a[tag=DungeonPlay_26] at @s run effect give @s instant_damage 1 2
execute as @a[tag=DungeonPlay_26] at @s run playsound item.armor.equip_leather master @s ~ ~ ~ 1 1.4
tellraw @a[tag=DungeonPlay_26] [{"text": "大精霊 シルフ>>","color": "#abdbb3"},{"text": "風の槍","color": "green"}]