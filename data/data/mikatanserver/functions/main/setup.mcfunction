
    tellraw @s [{"text": "=====================================================\n\n","color": "aqua"},{"text":"初回ログインを検知しました！\n"},{"text":"setup......","color": "aqua"}]
    scoreboard players add @s firstlogin 100
    scoreboard players set @s speed-Lv 0
    scoreboard players set @s speedxp 0
    scoreboard players set @s needspeedxp 500
    scoreboard players set @s attackS-Lv 0
    scoreboard players set @s attackSxp 0
    scoreboard players set @s needattackSxp 67
    scoreboard players set @s ench-Lv 0
    scoreboard players set @s enchxp 0
    scoreboard players set @s needenchxp 15
    scoreboard players set @s hp-Lv 0
    scoreboard players set @s hpxp 0
    scoreboard players set @s needhpxp 13
    scoreboard players set @s attackD-Lv 0
    scoreboard players set @s attackDxp 0
    scoreboard players set @s needattackDxp 325
    scoreboard players set @s mana-Lv 0
    scoreboard players set @s manaxp 0
    scoreboard players set @s needmanaxp 1
    scoreboard players set @s luck-Lv 0
    scoreboard players set @s luckxp 0
    scoreboard players set @s needluckxp 3
    tellraw @s [{"text": "initialize main method...","color": "green","italic": true}]

    scoreboard players set @s mana 0
    scoreboard players set @s manamax 0
    tellraw @s [{"text": "initialize mana method...","color": "green","italic": true}]

    scoreboard players set @s FarmingLuckPT 0
    tellraw @s [{"text": "initialize farming method...","color": "green","italic": true}]

    scoreboard players set @s AngelStoneFlag 0
    scoreboard players set @s ForestStoneFlag 0

    scoreboard players set @s DungeonClear_Num 0

    tellraw @s [{"text": "initialize flag and dungeon method...","color": "green","italic": true}]

    tellraw @s [{"text": "completed setup!!","color": "gold"},{"text":"\n\n=====================================================","color": "aqua"}]


give @s carrot_on_a_stick{GiveXp:1000} 1