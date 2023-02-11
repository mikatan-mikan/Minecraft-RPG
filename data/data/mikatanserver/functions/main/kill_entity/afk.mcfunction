##バグらないようにforce load しておく
forceload add ~ ~
summon armor_stand ~ ~ ~ {Tags:["AFKAr"],Small:1b,Invisible:1b,Invulnerable:1b}

schedule function mikatanserver:main/kill_entity/undo_force 100t

tp 0 100 0
scoreboard players reset @s AFKCheck
tag @s add AFK

tellraw @s [{"text": "[system]","color":"yellow"},{"text": "負荷対策のため放置プレイヤーを移動しました","color":"white"},{"text": "\n    負荷対策の判定は以下の通りです","color":"red"},{"text": "\n        ・移動動作を一定期間内に実行していない","color":"gold"},{"text": "\n        ・プレイヤー数が一定以上である","color":"gold"},{"text": "\n・移動後は60秒の間移動ができません"},{"text": "\n・現仕様の悪用又は意図を無視する行動をした場合(高負荷時高負荷地点における放置など)、Kick/一定期間Banされる可能性があります"},{"text": "\n但し、負荷対策に限らず実質的には放置しているのに対して、放置判定を回避するマクロや装置などは許可されません","color":"red"}]