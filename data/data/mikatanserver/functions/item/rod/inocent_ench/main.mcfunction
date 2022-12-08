
scoreboard players set $mana TMP 70
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP
effect clear @a[distance=..10] absorption
effect give @a[distance=..10] instant_health 1 0
effect give @a[distance=..10] absorption 10 0
effect give @a[distance=..10] saturation 1 0

playsound minecraft:item.totem.use master @a[distance=..10] ~ ~ ~ 0.6 0
playsound minecraft:block.glass.break master @a[distance=..10] ~ ~ ~ 2 1

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAKwoAspKAnAGYoC0lAzHA6zQAz9WADhQB2Ia1FxRNAEwM+8vpRpgCAOwCGAWwTJAYYoACAIxqwMTRh0BnJOBQB7QuohJ+BFHBdwMdsADdNbEI9cAAPJD4CKEiAX1iCK1I0QltESgJrCEtXRCiwOGxsNBhrPWM+fIwHbIg9fLRrAFEikrKmgEdCIOwoAGULT3JEJiCy+LxwaHgKGAdegHMHdTNiMgpScVIOIU04VgYOTd4hBllWTSEAIwA2XhQhIWMmUlJNSl2zLV0KQCxNQCXIwBG+iYzBYrNo0vYnC4kLJ8p5vL5EOBAsFQmAInlonEEmAkik0hkwFkcpECIViqVypVEjVNHUyagHBh1D4kESAFaEbQwJDGAhXOAALzQbKxYEaLUp7S6PX6gzgw1G2DKBEaACFhaKMJ1ukV5ZohkhleMElNYHpzPMoEsVgQ1sMwHwhDs4HA+JpWBwaO77kIaBcGEHWKRKJQ4DQUKQmFwrrIvjpLQDgfGCGCbH5HM5cnCPF46kiUUEQn5MfkYnkJnjNMlUm5MtkMLkduTWlS+TS8XSGeLHCyxZzubzEPywIKRWKGs02zK9b0BobFcaxnA1dZNROdbL9QujSMV-EALpAA_3
# 多角形 2
particle dripping_lava ~2.46265 ~ ~-3.15204 0 0 0 0 1
particle dripping_lava ~2.52745 ~ ~-2.92604 0 0 0 0 1
particle dripping_lava ~2.59226 ~ ~-2.70003 0 0 0 0 1
particle dripping_lava ~2.65706 ~ ~-2.47402 0 0 0 0 1
particle dripping_lava ~2.72187 ~ ~-2.24802 0 0 0 0 1
particle dripping_lava ~2.78668 ~ ~-2.02201 0 0 0 0 1
particle dripping_lava ~2.85148 ~ ~-1.79601 0 0 0 0 1
particle dripping_lava ~2.91629 ~ ~-1.57 0 0 0 0 1
particle dripping_lava ~2.9811 ~ ~-1.34399 0 0 0 0 1
particle dripping_lava ~3.0459 ~ ~-1.11799 0 0 0 0 1
particle dripping_lava ~3.11071 ~ ~-0.89198 0 0 0 0 1
particle dripping_lava ~3.17551 ~ ~-0.66598 0 0 0 0 1
particle dripping_lava ~3.24032 ~ ~-0.43997 0 0 0 0 1
particle dripping_lava ~3.30513 ~ ~-0.21396 0 0 0 0 1
particle dripping_lava ~3.36993 ~ ~0.01204 0 0 0 0 1
particle dripping_lava ~3.43474 ~ ~0.23805 0 0 0 0 1
particle dripping_lava ~3.49955 ~ ~0.46406 0 0 0 0 1
particle dripping_lava ~3.56435 ~ ~0.69006 0 0 0 0 1
particle dripping_lava ~3.62916 ~ ~0.91607 0 0 0 0 1
particle dripping_lava ~3.69396 ~ ~1.14207 0 0 0 0 1
particle dripping_lava ~3.75877 ~ ~1.36808 0 0 0 0 1
particle dripping_lava ~3.56385 ~ ~1.49955 0 0 0 0 1
particle dripping_lava ~3.36893 ~ ~1.63103 0 0 0 0 1
particle dripping_lava ~3.17402 ~ ~1.7625 0 0 0 0 1
particle dripping_lava ~2.9791 ~ ~1.89398 0 0 0 0 1
particle dripping_lava ~2.78418 ~ ~2.02545 0 0 0 0 1
particle dripping_lava ~2.58926 ~ ~2.15693 0 0 0 0 1
particle dripping_lava ~2.39434 ~ ~2.2884 0 0 0 0 1
particle dripping_lava ~2.19942 ~ ~2.41987 0 0 0 0 1
particle dripping_lava ~2.0045 ~ ~2.55135 0 0 0 0 1
particle dripping_lava ~1.80959 ~ ~2.68282 0 0 0 0 1
particle dripping_lava ~1.61467 ~ ~2.8143 0 0 0 0 1
particle dripping_lava ~1.41975 ~ ~2.94577 0 0 0 0 1
particle dripping_lava ~1.22483 ~ ~3.07724 0 0 0 0 1
particle dripping_lava ~1.02991 ~ ~3.20872 0 0 0 0 1
particle dripping_lava ~0.83499 ~ ~3.34019 0 0 0 0 1
particle dripping_lava ~0.64008 ~ ~3.47167 0 0 0 0 1
particle dripping_lava ~0.44516 ~ ~3.60314 0 0 0 0 1
particle dripping_lava ~0.25024 ~ ~3.73462 0 0 0 0 1
particle dripping_lava ~0.05532 ~ ~3.86609 0 0 0 0 1
particle dripping_lava ~-0.1396 ~ ~3.99756 0 0 0 0 1
particle dripping_lava ~-0.32487 ~ ~3.85281 0 0 0 0 1
particle dripping_lava ~-0.51014 ~ ~3.70806 0 0 0 0 1
particle dripping_lava ~-0.69542 ~ ~3.56331 0 0 0 0 1
particle dripping_lava ~-0.88069 ~ ~3.41856 0 0 0 0 1
particle dripping_lava ~-1.06596 ~ ~3.27381 0 0 0 0 1
particle dripping_lava ~-1.25123 ~ ~3.12906 0 0 0 0 1
particle dripping_lava ~-1.43651 ~ ~2.98431 0 0 0 0 1
particle dripping_lava ~-1.62178 ~ ~2.83956 0 0 0 0 1
particle dripping_lava ~-1.80705 ~ ~2.69481 0 0 0 0 1
particle dripping_lava ~-1.99232 ~ ~2.55006 0 0 0 0 1
particle dripping_lava ~-2.17759 ~ ~2.40531 0 0 0 0 1
particle dripping_lava ~-2.36287 ~ ~2.26055 0 0 0 0 1
particle dripping_lava ~-2.54814 ~ ~2.1158 0 0 0 0 1
particle dripping_lava ~-2.73341 ~ ~1.97105 0 0 0 0 1
particle dripping_lava ~-2.91868 ~ ~1.8263 0 0 0 0 1
particle dripping_lava ~-3.10396 ~ ~1.68155 0 0 0 0 1
particle dripping_lava ~-3.28923 ~ ~1.5368 0 0 0 0 1
particle dripping_lava ~-3.4745 ~ ~1.39205 0 0 0 0 1
particle dripping_lava ~-3.65977 ~ ~1.2473 0 0 0 0 1
particle dripping_lava ~-3.84505 ~ ~1.10255 0 0 0 0 1
particle dripping_lava ~-3.76463 ~ ~0.88161 0 0 0 0 1
particle dripping_lava ~-3.68422 ~ ~0.66068 0 0 0 0 1
particle dripping_lava ~-3.60381 ~ ~0.43974 0 0 0 0 1
particle dripping_lava ~-3.52339 ~ ~0.21881 0 0 0 0 1
particle dripping_lava ~-3.44298 ~ ~-0.00213 0 0 0 0 1
particle dripping_lava ~-3.36256 ~ ~-0.22306 0 0 0 0 1
particle dripping_lava ~-3.28215 ~ ~-0.444 0 0 0 0 1
particle dripping_lava ~-3.20174 ~ ~-0.66493 0 0 0 0 1
particle dripping_lava ~-3.12132 ~ ~-0.88587 0 0 0 0 1
particle dripping_lava ~-3.04091 ~ ~-1.1068 0 0 0 0 1
particle dripping_lava ~-2.9605 ~ ~-1.32774 0 0 0 0 1
particle dripping_lava ~-2.88008 ~ ~-1.54867 0 0 0 0 1
particle dripping_lava ~-2.79967 ~ ~-1.76961 0 0 0 0 1
particle dripping_lava ~-2.71925 ~ ~-1.99054 0 0 0 0 1
particle dripping_lava ~-2.63884 ~ ~-2.21148 0 0 0 0 1
particle dripping_lava ~-2.55843 ~ ~-2.43241 0 0 0 0 1
particle dripping_lava ~-2.47801 ~ ~-2.65335 0 0 0 0 1
particle dripping_lava ~-2.3976 ~ ~-2.87428 0 0 0 0 1
particle dripping_lava ~-2.31719 ~ ~-3.09522 0 0 0 0 1
particle dripping_lava ~-2.23677 ~ ~-3.31615 0 0 0 0 1
particle dripping_lava ~-2.0018 ~ ~-3.30794 0 0 0 0 1
particle dripping_lava ~-1.76683 ~ ~-3.29974 0 0 0 0 1
particle dripping_lava ~-1.53186 ~ ~-3.29153 0 0 0 0 1
particle dripping_lava ~-1.29689 ~ ~-3.28333 0 0 0 0 1
particle dripping_lava ~-1.06192 ~ ~-3.27512 0 0 0 0 1
particle dripping_lava ~-0.82695 ~ ~-3.26692 0 0 0 0 1
particle dripping_lava ~-0.59198 ~ ~-3.25871 0 0 0 0 1
particle dripping_lava ~-0.357 ~ ~-3.25051 0 0 0 0 1
particle dripping_lava ~-0.12203 ~ ~-3.2423 0 0 0 0 1
particle dripping_lava ~0.11294 ~ ~-3.2341 0 0 0 0 1
particle dripping_lava ~0.34791 ~ ~-3.22589 0 0 0 0 1
particle dripping_lava ~0.58288 ~ ~-3.21769 0 0 0 0 1
particle dripping_lava ~0.81785 ~ ~-3.20948 0 0 0 0 1
particle dripping_lava ~1.05282 ~ ~-3.20128 0 0 0 0 1
particle dripping_lava ~1.28779 ~ ~-3.19307 0 0 0 0 1
particle dripping_lava ~1.52276 ~ ~-3.18486 0 0 0 0 1
particle dripping_lava ~1.75773 ~ ~-3.17666 0 0 0 0 1
particle dripping_lava ~1.9927 ~ ~-3.16845 0 0 0 0 1
particle dripping_lava ~2.22768 ~ ~-3.16025 0 0 0 0 1
# 円 1
particle dripping_lava ~0 ~ ~-5 0 0 0 0 1
particle dripping_lava ~0.78217 ~ ~-4.93844 0 0 0 0 1
particle dripping_lava ~1.54508 ~ ~-4.75528 0 0 0 0 1
particle dripping_lava ~2.26995 ~ ~-4.45503 0 0 0 0 1
particle dripping_lava ~2.93893 ~ ~-4.04508 0 0 0 0 1
particle dripping_lava ~3.53553 ~ ~-3.53553 0 0 0 0 1
particle dripping_lava ~4.04508 ~ ~-2.93893 0 0 0 0 1
particle dripping_lava ~4.45503 ~ ~-2.26995 0 0 0 0 1
particle dripping_lava ~4.75528 ~ ~-1.54508 0 0 0 0 1
particle dripping_lava ~4.93844 ~ ~-0.78217 0 0 0 0 1
particle dripping_lava ~5 ~ ~0 0 0 0 0 1
particle dripping_lava ~4.93844 ~ ~0.78217 0 0 0 0 1
particle dripping_lava ~4.75528 ~ ~1.54508 0 0 0 0 1
particle dripping_lava ~4.45503 ~ ~2.26995 0 0 0 0 1
particle dripping_lava ~4.04508 ~ ~2.93893 0 0 0 0 1
particle dripping_lava ~3.53553 ~ ~3.53553 0 0 0 0 1
particle dripping_lava ~2.93893 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~2.26995 ~ ~4.45503 0 0 0 0 1
particle dripping_lava ~1.54508 ~ ~4.75528 0 0 0 0 1
particle dripping_lava ~0.78217 ~ ~4.93844 0 0 0 0 1
particle dripping_lava ~0 ~ ~5 0 0 0 0 1
particle dripping_lava ~-0.78217 ~ ~4.93844 0 0 0 0 1
particle dripping_lava ~-1.54508 ~ ~4.75528 0 0 0 0 1
particle dripping_lava ~-2.26995 ~ ~4.45503 0 0 0 0 1
particle dripping_lava ~-2.93893 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-3.53553 ~ ~3.53553 0 0 0 0 1
particle dripping_lava ~-4.04508 ~ ~2.93893 0 0 0 0 1
particle dripping_lava ~-4.45503 ~ ~2.26995 0 0 0 0 1
particle dripping_lava ~-4.75528 ~ ~1.54508 0 0 0 0 1
particle dripping_lava ~-4.93844 ~ ~0.78217 0 0 0 0 1
particle dripping_lava ~-5 ~ ~0 0 0 0 0 1
particle dripping_lava ~-4.93844 ~ ~-0.78217 0 0 0 0 1
particle dripping_lava ~-4.75528 ~ ~-1.54508 0 0 0 0 1
particle dripping_lava ~-4.45503 ~ ~-2.26995 0 0 0 0 1
particle dripping_lava ~-4.04508 ~ ~-2.93893 0 0 0 0 1
particle dripping_lava ~-3.53553 ~ ~-3.53553 0 0 0 0 1
particle dripping_lava ~-2.93893 ~ ~-4.04508 0 0 0 0 1
particle dripping_lava ~-2.26995 ~ ~-4.45503 0 0 0 0 1
particle dripping_lava ~-1.54508 ~ ~-4.75528 0 0 0 0 1
particle dripping_lava ~-0.78217 ~ ~-4.93844 0 0 0 0 1
# 多角形 1
particle dripping_lava ~0 ~ ~-5 0 0 0 0 1
particle dripping_lava ~0.23776 ~ ~-4.82725 0 0 0 0 1
particle dripping_lava ~0.47553 ~ ~-4.65451 0 0 0 0 1
particle dripping_lava ~0.71329 ~ ~-4.48176 0 0 0 0 1
particle dripping_lava ~0.95106 ~ ~-4.30902 0 0 0 0 1
particle dripping_lava ~1.18882 ~ ~-4.13627 0 0 0 0 1
particle dripping_lava ~1.42658 ~ ~-3.96353 0 0 0 0 1
particle dripping_lava ~1.66435 ~ ~-3.79078 0 0 0 0 1
particle dripping_lava ~1.90211 ~ ~-3.61803 0 0 0 0 1
particle dripping_lava ~2.13988 ~ ~-3.44529 0 0 0 0 1
particle dripping_lava ~2.37764 ~ ~-3.27254 0 0 0 0 1
particle dripping_lava ~2.61541 ~ ~-3.0998 0 0 0 0 1
particle dripping_lava ~2.85317 ~ ~-2.92705 0 0 0 0 1
particle dripping_lava ~3.09093 ~ ~-2.75431 0 0 0 0 1
particle dripping_lava ~3.3287 ~ ~-2.58156 0 0 0 0 1
particle dripping_lava ~3.56646 ~ ~-2.40881 0 0 0 0 1
particle dripping_lava ~3.80423 ~ ~-2.23607 0 0 0 0 1
particle dripping_lava ~4.04199 ~ ~-2.06332 0 0 0 0 1
particle dripping_lava ~4.27975 ~ ~-1.89058 0 0 0 0 1
particle dripping_lava ~4.51752 ~ ~-1.71783 0 0 0 0 1
particle dripping_lava ~4.75528 ~ ~-1.54508 0 0 0 0 1
particle dripping_lava ~4.66446 ~ ~-1.26558 0 0 0 0 1
particle dripping_lava ~4.57365 ~ ~-0.98607 0 0 0 0 1
particle dripping_lava ~4.48283 ~ ~-0.70656 0 0 0 0 1
particle dripping_lava ~4.39201 ~ ~-0.42705 0 0 0 0 1
particle dripping_lava ~4.30119 ~ ~-0.14754 0 0 0 0 1
particle dripping_lava ~4.21038 ~ ~0.13197 0 0 0 0 1
particle dripping_lava ~4.11956 ~ ~0.41147 0 0 0 0 1
particle dripping_lava ~4.02874 ~ ~0.69098 0 0 0 0 1
particle dripping_lava ~3.93792 ~ ~0.97049 0 0 0 0 1
particle dripping_lava ~3.8471 ~ ~1.25 0 0 0 0 1
particle dripping_lava ~3.75629 ~ ~1.52951 0 0 0 0 1
particle dripping_lava ~3.66547 ~ ~1.80902 0 0 0 0 1
particle dripping_lava ~3.57465 ~ ~2.08853 0 0 0 0 1
particle dripping_lava ~3.48383 ~ ~2.36803 0 0 0 0 1
particle dripping_lava ~3.39302 ~ ~2.64754 0 0 0 0 1
particle dripping_lava ~3.3022 ~ ~2.92705 0 0 0 0 1
particle dripping_lava ~3.21138 ~ ~3.20656 0 0 0 0 1
particle dripping_lava ~3.12056 ~ ~3.48607 0 0 0 0 1
particle dripping_lava ~3.02974 ~ ~3.76558 0 0 0 0 1
particle dripping_lava ~2.93893 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~2.64503 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~2.35114 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~2.05725 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~1.76336 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~1.46946 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~1.17557 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~0.88168 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~0.58779 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~0.29389 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~0 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-0.29389 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-0.58779 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-0.88168 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-1.17557 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-1.46946 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-1.76336 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-2.05725 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-2.35114 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-2.64503 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-2.93893 ~ ~4.04508 0 0 0 0 1
particle dripping_lava ~-3.02974 ~ ~3.76558 0 0 0 0 1
particle dripping_lava ~-3.12056 ~ ~3.48607 0 0 0 0 1
particle dripping_lava ~-3.21138 ~ ~3.20656 0 0 0 0 1
particle dripping_lava ~-3.3022 ~ ~2.92705 0 0 0 0 1
particle dripping_lava ~-3.39302 ~ ~2.64754 0 0 0 0 1
particle dripping_lava ~-3.48383 ~ ~2.36803 0 0 0 0 1
particle dripping_lava ~-3.57465 ~ ~2.08853 0 0 0 0 1
particle dripping_lava ~-3.66547 ~ ~1.80902 0 0 0 0 1
particle dripping_lava ~-3.75629 ~ ~1.52951 0 0 0 0 1
particle dripping_lava ~-3.8471 ~ ~1.25 0 0 0 0 1
particle dripping_lava ~-3.93792 ~ ~0.97049 0 0 0 0 1
particle dripping_lava ~-4.02874 ~ ~0.69098 0 0 0 0 1
particle dripping_lava ~-4.11956 ~ ~0.41147 0 0 0 0 1
particle dripping_lava ~-4.21038 ~ ~0.13197 0 0 0 0 1
particle dripping_lava ~-4.30119 ~ ~-0.14754 0 0 0 0 1
particle dripping_lava ~-4.39201 ~ ~-0.42705 0 0 0 0 1
particle dripping_lava ~-4.48283 ~ ~-0.70656 0 0 0 0 1
particle dripping_lava ~-4.57365 ~ ~-0.98607 0 0 0 0 1
particle dripping_lava ~-4.66446 ~ ~-1.26558 0 0 0 0 1
particle dripping_lava ~-4.75528 ~ ~-1.54508 0 0 0 0 1
particle dripping_lava ~-4.51752 ~ ~-1.71783 0 0 0 0 1
particle dripping_lava ~-4.27975 ~ ~-1.89058 0 0 0 0 1
particle dripping_lava ~-4.04199 ~ ~-2.06332 0 0 0 0 1
particle dripping_lava ~-3.80423 ~ ~-2.23607 0 0 0 0 1
particle dripping_lava ~-3.56646 ~ ~-2.40881 0 0 0 0 1
particle dripping_lava ~-3.3287 ~ ~-2.58156 0 0 0 0 1
particle dripping_lava ~-3.09093 ~ ~-2.75431 0 0 0 0 1
particle dripping_lava ~-2.85317 ~ ~-2.92705 0 0 0 0 1
particle dripping_lava ~-2.61541 ~ ~-3.0998 0 0 0 0 1
particle dripping_lava ~-2.37764 ~ ~-3.27254 0 0 0 0 1
particle dripping_lava ~-2.13988 ~ ~-3.44529 0 0 0 0 1
particle dripping_lava ~-1.90211 ~ ~-3.61803 0 0 0 0 1
particle dripping_lava ~-1.66435 ~ ~-3.79078 0 0 0 0 1
particle dripping_lava ~-1.42658 ~ ~-3.96353 0 0 0 0 1
particle dripping_lava ~-1.18882 ~ ~-4.13627 0 0 0 0 1
particle dripping_lava ~-0.95106 ~ ~-4.30902 0 0 0 0 1
particle dripping_lava ~-0.71329 ~ ~-4.48176 0 0 0 0 1
particle dripping_lava ~-0.47553 ~ ~-4.65451 0 0 0 0 1
particle dripping_lava ~-0.23776 ~ ~-4.82725 0 0 0 0 1