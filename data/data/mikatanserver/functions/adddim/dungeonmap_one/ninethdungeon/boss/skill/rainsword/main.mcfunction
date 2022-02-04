execute if entity @a[scores={NineBossSkill2=126},tag=BossBattle9] run tellraw @a[tag=DungeonPlay_9] [{"text": "Michelle>>","color": "gold"},{"text": "剣雨！！","color": "blue"}]
execute at @a[tag=BossBattle9] run playsound weather.rain.above master @s ~ ~ ~ 2 2 1
##1

summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}
summon armor_stand ~ 180 ~ {Tags:["NineDunArmor","RainSwordAr"],Invisible:1b,Invulnerable:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"diamond_sword",Count:1b},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}

execute as @e[tag=RainSwordAr] run function mikatanserver:adddim/dungeonmap_one/ninethdungeon/boss/skill/rainsword/pos_store