execute if entity @a[scores={season2BossSkill2=126},tag=BossBattleseason2] run tellraw @a[tag=DungeonPlay_season2] [{"text": "Michelle>>","color": "gold"},{"text": "剣雨！！","color": "blue"}]
execute at @a[tag=BossBattleseason2] run playsound weather.rain.above master @s ~ ~ ~ 2 2 1
##1

summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["season2DunArmor","RainSwordAr_season2"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}

execute as @e[tag=RainSwordAr_season2] run function mikatanserver:adddim/dungeon_season/season2dungeon/0/skill/rainsword/pos_store