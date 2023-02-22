bossbar remove minecraft:eleventhboss_bar
give @a[tag=DungeonPlay_11] minecraft:chest{display:{Name:'[{"text":"ダンジョンドロップ","color":"green"},{"text":" - ","color":"yellow"},{"text":"再臨  その先にあるものは・・・","color":"green"}]'},BlockEntityTag:{LootTable:"mikatanserver:dungeon/eleventh_dungeon/boss/boss"}}
#execute as @a[tag=DungeonPlay_11] if entity @s[nbt={SelectedItem:{tag:{dancing:[1]}}}] run give @s minecraft:chest{BlockEntityTag:{LootTable:"mikatanserver:dungeon/eleventh_dungeon/boss/boss"}}
execute as @a[tag=DungeonPlay_11] at @s run playsound entity.player.levelup master @a[tag=DungeonPlay_11] ~ ~ ~ 2 0
tellraw @a[tag=DungeonPlay_11] [{"text":"ダンジョンクリア!!\n","color": "aqua"},{"text":"5秒後にオーバーワールド(0,100,0)へTPします","color": "yellow"}]
bossbar remove minecraft:eleventhboss_bar
scoreboard players add @a[tag=DungeonPlay_11] DungeonClear_Num 5
execute as @a[tag=DungeonPlay_11] run function mikatanserver:adddim/dungeonmap_one/atks_xp
gamerule keepInventory true
tag @a[tag=DungeonPlay_11] remove CountLeader
tag @a[tag=DungeonPlay_11] remove DungeonPlay
tag @a[tag=DungeonPlay_11] remove BossBattle11
tag @a[tag=DungeonPlay_11] add Return_Dun_11
scoreboard objectives remove EleventhDunDeath
scoreboard objectives remove ElevenBossSkill
scoreboard objectives remove Wind_Count
scoreboard objectives remove Wind_Rot_Count
scoreboard players set $11 dungeon_play_now 0
scoreboard players add $11_Clear ClearPer 1
kill @e[tag=ElevenDunArmor]
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
execute in mikatanserver:dungeon run kill @e[tag=ElevenDunMob]
schedule function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/clearboss_tp 100t