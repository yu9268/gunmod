#初期化
scoreboard objectives add flag dummy
scoreboard objectives add tmpflag dummy
scoreboard objectives add health health
scoreboard objectives add life dummy
scoreboard objectives add death deathCount
scoreboard objectives add team_count dummy

scoreboard players set #flag flag 0
scoreboard players set Aチーム人数 team_count 0
scoreboard players set Bチーム人数 team_count 0
scoreboard objectives setdisplay sidebar team_count

tag @a remove teamA
tag @a remove teamB