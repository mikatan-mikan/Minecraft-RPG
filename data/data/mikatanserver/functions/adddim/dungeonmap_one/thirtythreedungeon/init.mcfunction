
# execute in mikatanserver:dungeon run summon armor_stand 3.5 124 -556.5 {Tags:["ThirtythreeDunMobArmor","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
# execute in mikatanserver:dungeon run summon armor_stand -11.5 132 -559.5 {Tags:["ThirtythreeDunMobArmor","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
# execute in mikatanserver:dungeon run summon armor_stand -0.5 141 -565.5 {Tags:["ThirtythreeDunMobArmor","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
# execute in mikatanserver:dungeon run summon armor_stand -5.5 149 -551.5 {Tags:["ThirtythreeDunMobArmor","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
# execute in mikatanserver:dungeon run summon armor_stand -15.5 159 -563.5 {Tags:["ThirtythreeDunMobArmor","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
# execute in mikatanserver:dungeon run summon armor_stand 0.5 168 -558.5 {Tags:["ThirtythreeDunMobArmor","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
# execute in mikatanserver:dungeon run summon armor_stand -5.5 174 -546.5 {Tags:["ThirtythreeDunMobArmor","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
##ボスTP用アマスタ
scoreboard players set @s MK.r.RandValue 3
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches 0 in mikatanserver:dungeon run summon minecraft:armor_stand -2470.0 51 2590.0 {Tags:["ThirtythreeDunBossTPA","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
execute if score @s MK.r.RandValue matches 1 in mikatanserver:dungeon run summon minecraft:armor_stand -2398.0 51 2590.0 {Tags:["ThirtythreeDunBossTPA","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}
execute if score @s MK.r.RandValue matches 2 in mikatanserver:dungeon run summon minecraft:armor_stand -2398.0 51 2518.0 {Tags:["ThirtythreeDunBossTPA","ThirtythreeDunArmor"],Invisible:1b,Invulnerable:1b}


scoreboard objectives remove DungeonStartCnt33
scoreboard objectives add ThirtythreeDunDeath deathCount