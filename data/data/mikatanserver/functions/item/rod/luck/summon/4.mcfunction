summon armor_stand ~-1 ~0 ~-1 {Tags:["luckrodAr","BeforeStoreLuckrodAr","miniluckrod"],Invulnerable:1b,Invisible:1b}
summon armor_stand ~ ~0 ~ {Tags:["luckrodAr","BeforeStoreLuckrodAr","miniluckrod"],Invulnerable:1b,Invisible:1b}
summon armor_stand ~1 ~0 ~1 {Tags:["luckrodAr","BeforeStoreLuckrodAr","miniluckrod"],Invulnerable:1b,Invisible:1b}
summon armor_stand ~ ~-1 ~ {Tags:["luckrodAr","BeforeStoreLuckrodAr","miniluckrod"],Invulnerable:1b,Invisible:1b}
scoreboard players set $mana TMP 10
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP