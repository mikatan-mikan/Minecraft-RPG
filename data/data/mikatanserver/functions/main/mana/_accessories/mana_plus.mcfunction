##回復する％を取得
execute store result score $mana_per TMP run data get entity @s Inventory[{Slot:10b}].tag.per
##mana自体はいじらない方が安全
scoreboard players operation $accessories TMP = $mana TMP
##回復manaの算出
scoreboard players operation $accessories TMP *= $mana_per TMP
scoreboard players operation $accessories TMP /= $100 int
##上限検知
execute if score $accessories TMP matches 6.. run scoreboard players set $accessories TMP 5
##回復処理
scoreboard players operation @s mana += $accessories TMP
execute if score @s mana > @s manamax run scoreboard players operation @s mana = @s manamax