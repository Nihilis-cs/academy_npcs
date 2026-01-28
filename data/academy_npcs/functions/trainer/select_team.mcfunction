# Sélection aléatoire d'une équipe selon la zone
# Exécutée par un dresseur PNJ pour obtenir son équipe

# Générer un nombre aléatoire pour la sélection d'équipe
execute store result score #random academy_npcs run random value 0..999

# Zone 1 (5 équipes disponibles)
execute if entity @s[tag=zone_1] store result score #team_count academy_npcs run data get storage academy_npcs:teams zone_1
execute if entity @s[tag=zone_1] run scoreboard players operation #random academy_npcs %= #team_count academy_npcs
execute if entity @s[tag=zone_1] if score #random academy_npcs matches 0 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_1[0]
execute if entity @s[tag=zone_1] if score #random academy_npcs matches 1 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_1[1]
execute if entity @s[tag=zone_1] if score #random academy_npcs matches 2 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_1[2]
execute if entity @s[tag=zone_1] if score #random academy_npcs matches 3 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_1[3]
execute if entity @s[tag=zone_1] if score #random academy_npcs matches 4 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_1[4]

# Zone 2 (5 équipes disponibles)
execute if entity @s[tag=zone_2] store result score #team_count academy_npcs run data get storage academy_npcs:teams zone_2
execute if entity @s[tag=zone_2] run scoreboard players operation #random academy_npcs %= #team_count academy_npcs
execute if entity @s[tag=zone_2] if score #random academy_npcs matches 0 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_2[0]
execute if entity @s[tag=zone_2] if score #random academy_npcs matches 1 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_2[1]
execute if entity @s[tag=zone_2] if score #random academy_npcs matches 2 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_2[2]
execute if entity @s[tag=zone_2] if score #random academy_npcs matches 3 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_2[3]
execute if entity @s[tag=zone_2] if score #random academy_npcs matches 4 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_2[4]

# Zone 3 (5 équipes disponibles)
execute if entity @s[tag=zone_3] store result score #team_count academy_npcs run data get storage academy_npcs:teams zone_3
execute if entity @s[tag=zone_3] run scoreboard players operation #random academy_npcs %= #team_count academy_npcs
execute if entity @s[tag=zone_3] if score #random academy_npcs matches 0 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_3[0]
execute if entity @s[tag=zone_3] if score #random academy_npcs matches 1 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_3[1]
execute if entity @s[tag=zone_3] if score #random academy_npcs matches 2 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_3[2]
execute if entity @s[tag=zone_3] if score #random academy_npcs matches 3 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_3[3]
execute if entity @s[tag=zone_3] if score #random academy_npcs matches 4 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_3[4]

# Zone 4 (5 équipes disponibles)
execute if entity @s[tag=zone_4] store result score #team_count academy_npcs run data get storage academy_npcs:teams zone_4
execute if entity @s[tag=zone_4] run scoreboard players operation #random academy_npcs %= #team_count academy_npcs
execute if entity @s[tag=zone_4] if score #random academy_npcs matches 0 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_4[0]
execute if entity @s[tag=zone_4] if score #random academy_npcs matches 1 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_4[1]
execute if entity @s[tag=zone_4] if score #random academy_npcs matches 2 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_4[2]
execute if entity @s[tag=zone_4] if score #random academy_npcs matches 3 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_4[3]
execute if entity @s[tag=zone_4] if score #random academy_npcs matches 4 run data modify entity @s data.selected_team set from storage academy_npcs:teams zone_4[4]

# Copier le nom du dresseur comme nom custom
execute store result score #random academy_npcs run data get entity @s data.selected_team.name
data modify entity @s CustomName set from entity @s data.selected_team.name
data modify entity @s CustomNameVisible set value 1b

# Debug: afficher l'équipe sélectionnée
# tellraw @a [{"text":"Équipe sélectionnée: ","color":"yellow"},{"nbt":"data.selected_team.name","entity":"@s","color":"white"}]