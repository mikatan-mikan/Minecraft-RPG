execute if score @s AtkBoost_1 matches 0 run tellraw @s {"text": "木こりブースト(tier 1)の効果が切れました","color": "red"}
execute if score @s LuckBoost_9 matches 0 run tellraw @s {"text": "釣りブースト(tier 9)の効果が切れました","color": "red"}


#boost時間減算
    scoreboard players remove @s[scores = {LuckBoost_9 = 1..}] LuckBoost_9 1
    scoreboard players remove @s[scores = {AtkBoost_1 = 1..}] AtkBoost_1 1
    ##フラグ
    scoreboard players remove @s[scores = {Boost = 1..}] Boost 1