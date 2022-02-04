scoreboard players remove @s mana 15



#既にアマスタがあればtpを実行
execute if entity @e[tag=VillagerTpAr] at @s run function mikatanserver:item/rod/villagertp/tpvillager
#移動先アマスタが無ければアマスタを召喚
execute unless entity @e[tag=VillagerTpAr] at @s run function mikatanserver:item/rod/villagertp/summonarmor