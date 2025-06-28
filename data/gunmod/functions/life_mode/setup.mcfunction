scoreboard objectives setdisplay sidebar lives

#死亡時にライフを1減らす
execute as @a[scores={death=1..}] run scoreboard players remove @s lives 1
execute as @a[scores={death=1..}] run scoreboard players set @s death 0

#死亡判定
execute as @a[scores={lives=..0}] run team leave @s
execute as @a[scores={lives=..0}] run gamemode spectator @s

#勝利判定
execute if score Aチーム生存者 life matches 0 run function gunmod:win_b
execute if score Bチーム生存者 life matches 0 run function gunmod:win_a