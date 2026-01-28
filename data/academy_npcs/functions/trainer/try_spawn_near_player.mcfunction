# Tentative de spawn d'un dresseur près d'un joueur
# Exécuté en tant que joueur pour spawn un dresseur à proximité

# Chance de spawn (30% par tentative)
execute store result score #spawn_chance academy_npcs run random value 1..100
execute if score #spawn_chance academy_npcs matches 31.. run return 0

# Trouver une position aléatoire dans un rayon de 50-100 blocs
execute store result score #offset_x academy_npcs run random value -100..100
execute store result score #offset_z academy_npcs run random value -100..100

# S'assurer que c'est assez loin du joueur (minimum 50 blocs)
execute if score #offset_x academy_npcs matches -49..49 run return 0
execute if score #offset_z academy_npcs matches -49..49 run return 0

# Calculer la position de spawn
execute store result storage academy_npcs:temp spawn_x double 1 run scoreboard players operation #spawn_pos_x academy_npcs = #offset_x academy_npcs
execute store result score #player_x academy_npcs run data get entity @s Pos[0]
scoreboard players operation #spawn_pos_x academy_npcs += #player_x academy_npcs

execute store result storage academy_npcs:temp spawn_z double 1 run scoreboard players operation #spawn_pos_z academy_npcs = #offset_z academy_npcs
execute store result score #player_z academy_npcs run data get entity @s Pos[2]
scoreboard players operation #spawn_pos_z academy_npcs += #player_z academy_npcs

# Spawn du dresseur à cette position
function academy_npcs:trainer/spawn_trainer with storage academy_npcs:temp