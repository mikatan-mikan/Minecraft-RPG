
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{inocent:[1]}}]} run give @p minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "yellow"}]',Lore:['{"text":"純真の思いⅠ","color": "gray","bold": false,"italic": false}','[{"text":" manaを70消費し、範囲10mの味方に純真の加護を与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1331336341,1100038867,-1743693146,-275107896],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY1ZjA4OGFiYmVmYzI0NGUzNTkyNGM4MDAyM2MyNTA1NWFmMTAyNTc2NTZiYWM0ZTg0ZTc0ODU1ZWMxMmYyYiJ9fX0="}]}},inocent:1} 1
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{inocent:[2]}}]} run give @p minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "yellow"}]',Lore:['{"text":"純真の思いⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" manaを70消費し、範囲10mの味方に純真の加護を与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1331336341,1100038867,-1743693146,-275107896],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY1ZjA4OGFiYmVmYzI0NGUzNTkyNGM4MDAyM2MyNTA1NWFmMTAyNTc2NTZiYWM0ZTg0ZTc0ODU1ZWMxMmYyYiJ9fX0="}]}},inocent:2} 1

#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1}],display:{Name:'[{"text":"蜘蛛剣 tierⅡ","color": "yellow"}]',Lore:['[{"text": "ダメージ増加Ⅴ","color": "gray","italic": false}]','[{"text": "リープⅠⅠ","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを40消費して前方向に進み一定範囲にダメージを与える","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 11","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.7","color": "dark_green","italic": false}]','[{"text": " 最大体力 +2","color": "dark_green","italic": false}]']},HideFlags:2,CustomModelData:43,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:11,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.3,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]},{AttributeName:"minecraft:generic.max_health",Amount:2,Operation:0,Slot:"mainhand",UUID:[I;564646,6461436,3584614,897361265]}],spidersword:2} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/rod_and_sword/reaping_2


