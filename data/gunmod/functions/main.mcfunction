#ゲームモード判定
execute if score #gamemode gamemode matches 0 run function gunmod:life_mode/setup
execute if score #gamemode gamemode matches 1 run function gunmod:kill_mode/setup





