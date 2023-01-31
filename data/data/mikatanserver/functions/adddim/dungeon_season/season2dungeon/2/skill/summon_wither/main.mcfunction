tellraw @s [{"text": "溶岩塊>>","color": "red"},{"text": "召喚：ウィザースケルトン！！","color": "light_purple"}]
summon wither_skeleton ~ ~ ~ {Tags:["season2DunMob"],Attributes:[{Name:"minecraft:generic.max_health",Base:50},{Name:"minecraft:generic.attack_damage",Base:25}],Health:50}
playsound entity.ender_pearl.throw master @s ~ ~ ~ 1 1