summon armor_stand ~ ~ ~ {Tags:["TwentythreeDunMob","TwentythreeBombAr"],Invisible:1b,Invulnerable:1b,Small:1b}
playsound entity.enderman.teleport master @a[distance=..80] ~ ~ ~ 2 1 1
particle witch ~ ~ ~ 0.4 0.8 0.4 1 50
tellraw @s [{"text": "Comet>>","color": "aqua"},{"text": "comet bomb!!","color": "dark_green"}]