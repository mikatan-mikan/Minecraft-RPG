summon silverfish ~-5 ~ ~5 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{ShowParticles:0b,Id:14,Duration:600}],Tags:["impact_rod_sil","impact_rod_sil_BE","impact_rod_sil_1"]}
summon silverfish ~-5 ~ ~-5 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{ShowParticles:0b,Id:14,Duration:600}],Tags:["impact_rod_sil","impact_rod_sil_BE","impact_rod_sil_2"]}
summon silverfish ~5 ~ ~-5 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{ShowParticles:0b,Id:14,Duration:600}],Tags:["impact_rod_sil","impact_rod_sil_BE","impact_rod_sil_3"]}
summon silverfish ~5 ~ ~5 {NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{ShowParticles:0b,Id:14,Duration:600}],Tags:["impact_rod_sil","impact_rod_sil_BE","impact_rod_sil_4"]}

scoreboard players set @e[tag=impact_rod_sil_BE,distance=..40] impact_timer 0
tag @e[distance=..40,tag=impact_rod_sil_BE] remove impact_rod_sil_BE

function mikatanserver:item/rod/impact/mainloop