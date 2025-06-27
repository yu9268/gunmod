#毎回0にリセット
scoreboard players set Bチーム生存者 life 0
scoreboard players set Aチーム生存者 life 0

#両チームの生存数加算
# 2025.06.15 チームの変更
execute as @e[team=TeamA] run scoreboard players add Aチーム生存者 life 1
execute as @e[team=TeamB] run scoreboard players add Bチーム生存者 life 1

execute if score #flag flag matches 1 run function gunmod:main