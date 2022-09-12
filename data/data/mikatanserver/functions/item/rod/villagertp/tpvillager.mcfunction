tp @e[type=villager,distance=..10] @e[type=armor_stand,tag=VillagerTpAr,sort=nearest,limit=1]
schedule function mikatanserver:item/rod/villagertp/armorkill 1t

tellraw @p [{"text": "エンティティを移動し、tp先を削除しました"}]
