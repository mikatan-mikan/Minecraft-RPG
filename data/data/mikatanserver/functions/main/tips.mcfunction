scoreboard players set @s MK.r.RandValue 10
function mikatanlib:rand/rand_exe

execute if score @s MK.r.RandValue matches 0 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "レベルアップ\n","color": "aqua"},{"text": "レベルアップによってステータスをあげよう！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 1 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "エンチャント\n","color": "aqua"},{"text": "エンチャントを使ってツールの性能を向上させよう！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 2 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "上位エンチャント\n","color": "aqua"},{"text": "40lv,60lvエンチャントを使うことで強力なツールが簡単に作れるよ！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 3 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "ファーミングラック\n","color": "aqua"},{"text": "LuckLvが高い状態でcrafterを使ってエンチャント本を作るとエンチャントレベルが上がることがあるよ！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 4 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "立ち回り\n","color": "aqua"},{"text": "実装されたモンスターは基本的にパターンがある。習性を把握しよう！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 5 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "魔法\n","color": "aqua"},{"text": "manaステータスを使って魔法攻撃を使ってみよう！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 6 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "ダンジョン\n","color": "aqua"},{"text": "1人の死亡で失敗になってしまう。落ち着いて攻略しよう！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 7 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "アクセサリー\n","color": "aqua"},{"text": "詰まってしまったときは特殊な効果をもつアクセサリーを使ってみよう！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 8 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "鉱石\n","color": "aqua"},{"text": "色々な鉱石が追加されている。作って性能を確かめよう！","color": "white","bold": true}]
execute if score @s MK.r.RandValue matches 9 run tellraw @s [{"text": "✧","color": "red"},{"text": "Tips","color":"green"},{"text": "✧","color": "red"} , {"text": "エリア\n","color": "aqua"},{"text": "エリアと呼ばれる場所からは様々なアイテムがドロップする。準備を整えてみよう！","color": "white","bold": true}]


scoreboard players set @s DeathCnt_Tip 0