#死亡判定
# 2025.06.15 チームの変更
execute as @a[scores={death=1..}] run gamemode spectator @s
execute as @a[scores={death=1..}] run team leave @s
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

#勝利判定
execute if score Aチーム生存者 life matches 0 run function gunmod:win_b
execute if score Bチーム生存者 life matches 0 run function gunmod:win_a