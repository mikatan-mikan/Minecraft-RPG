summon armor_stand ^8.6 ^ ^-5 {Tags:["SeventeenDungeonBombAr"],Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
playsound entity.experience_orb.pickup master @a[distance=..80] ~ ~ ~ 1 0 1
execute as @e[tag=SeventeenDungeonBombAr] at @s run particle flame ~ ~ ~ 0.4 0.4 0.4 0.2 100