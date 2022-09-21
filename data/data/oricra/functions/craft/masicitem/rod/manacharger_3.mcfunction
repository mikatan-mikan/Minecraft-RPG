
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{inocent:[1]}}]} run give @p minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "yellow"}]',Lore:['{"text":"純真の思いⅠ","color": "gray","bold": false,"italic": false}','[{"text":" manaを70消費し、範囲10mの味方に純真の加護を与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1331336341,1100038867,-1743693146,-275107896],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY1ZjA4OGFiYmVmYzI0NGUzNTkyNGM4MDAyM2MyNTA1NWFmMTAyNTc2NTZiYWM0ZTg0ZTc0ODU1ZWMxMmYyYiJ9fX0="}]}},inocent:1} 1
execute if block ~ ~ ~ dropper{Items:[{Slot:4b,tag:{inocent:[2]}}]} run give @p minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "yellow"}]',Lore:['{"text":"純真の思いⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" manaを70消費し、範囲10mの味方に純真の加護を与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1331336341,1100038867,-1743693146,-275107896],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY1ZjA4OGFiYmVmYzI0NGUzNTkyNGM4MDAyM2MyNTA1NWFmMTAyNTc2NTZiYWM0ZTg0ZTc0ODU1ZWMxMmYyYiJ9fX0="}]}},inocent:2} 1

#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{Enchantments:[{id:"minecraft:mending",lvl:1},{id:"minecraft:smite",lvl:4},{id:"minecraft:sharpness",lvl:5}],display:{Name:'[{"text":"origin of mana tierⅢ","color": "blue"}]',Lore:['[{"text": "マナⅠⅠⅠ","color": "gray","italic": false}]','[{"text": " 右クリックでmanaを1回復する。さらに40%で1回復する(cool time 1s)","color": "blue","italic": false}]','[{"text": "利き手に持った時","color":"white","italic": false}]','[{"text":" 攻撃力 11.5","color": "dark_green","italic": false}]','[{"text": " 攻撃速度 1.6","color": "dark_green","italic": false}]','[{"text":" 防具 +2","color": "dark_green","italic": false}]','[{"text":" スピード +18%","color": "dark_green","italic": false}]']},CustomModelData:31,AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.018,Operation:0,UUID:[I;13447191,-304867078,-473838902,652051635],Slot:"mainhand"},{AttributeName:"generic.armor",Amount:2.0,Operation:0,UUID:[I;915581423,-105458275,-295946392,53618116],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Amount:8.5,Operation:0,Slot:"mainhand",UUID:[I;-956796003,830653523,393774358,-36031691]},{AttributeName:"generic.attack_speed",Amount:-2.4,Operation:0,Slot:"mainhand",UUID:[I;-212372333,307371239,101113870,96471227]}],HideFlags:2,manacharger:[3]}



#進捗
advancement grant @p only mikatanserver:customcrafter/manacharger_3
