#初期化
scoreboard objectives add flag dummy
scoreboard objectives add tmpflag dummy
scoreboard objectives add health health
scoreboard objectives add life dummy
scoreboard objectives add death deathCount
scoreboard objectives add team_count dummy
scoreboard objectives add gamemode dummy
scoreboard objectives add tmpmode dummy
scoreboard objectives add killcount dummy
scoreboard objectives add lives dummy "残ライフ"
scoreboard objectives add alive dummy

scoreboard players set #aliveA alive 0
scoreboard players set #aliveB alive 0
scoreboard players set #flag flag 0
scoreboard players set #gamemode gamemode 0
scoreboard players set Aチーム人数 team_count 0
scoreboard players set Bチーム人数 team_count 0
scoreboard objectives setdisplay sidebar team_count
scoreboard players set @a lives 3

# 2025.06.28 チームのリセット
team leave @a
team remove TeamA
team remove TeamB

team add TeamA
team modify TeamA color red
team add TeamB
team modify TeamB color blue

scoreboard objectives setdisplay sidebar life
gamemode creative @a