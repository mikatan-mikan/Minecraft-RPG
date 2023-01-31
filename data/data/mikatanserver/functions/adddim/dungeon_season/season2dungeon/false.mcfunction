gamerule keepInventory true
scoreboard objectives remove season2DSkillTimerseason2
bossbar remove minecraft:season2boss_bar
scoreboard players reset $season2_boss dungeon_play_now
tellraw @a[tag=DungeonPlay_season2] [{"text":"ゲームオーバー!!\n","color":"red"},{"text":"参加者の1人以上が死亡しました","color": "gold"}]
kill @a[tag=DungeonPlay_season2]
kill @e[tag=season2DunArmor]
kill @e[tag=season2DunNowP]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=season2DunMob]
scoreboard objectives remove season2DunDeath
gamemode survival @a[tag=DungeonPlay_season2]
tag @a[tag=DungeonPlay_season2] remove CountLeader
tag @a[tag=DungeonPlay_season2] remove DungeonPlay
tag @a[tag=DungeonPlay_season2] remove BossBattleseason2
tag @a[tag=DungeonPlay_season2] remove DungeonPlay_season2
scoreboard players set $season2 dungeon_play_now 0
schedule function mikatanserver:main/keepinventoryfalse 10s