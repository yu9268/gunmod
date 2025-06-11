#死亡判定
execute as @a[scores={death=1..}] run tag @s remove teamA
execute as @a[scores={death=1..}] run tag @s remove teamB
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

#毎回0にリセット
scoreboard players set Bチーム生存者 life 0
scoreboard players set Aチーム生存者 life 0

#両チームの生存数加算
execute as @a[tag=teamA] run scoreboard players add Aチーム生存者 life 1
execute as @a[tag=teamB] run scoreboard players add Bチーム生存者 life 1

#勝利判定
execute if score Aチーム生存者 life matches 0 run function gunmod:win_b
execute if score Bチーム生存者 life matches 0 run function gunmod:win_a