effect give @s instant_health 1 4
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_8,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_8] [{"text": "Neptune Guardian>>","color": "aqua"},{"text": "healing","color": "green"}]