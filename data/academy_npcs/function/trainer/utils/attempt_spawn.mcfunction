# Tentative de spawn avec retry
# Essaie de trouver une position valide, jusqu'à 5 tentatives

scoreboard players add #spawn_attempts academy_npcs 1

# Trouver une position aléatoire dans un rayon de 50-150 blocs
execute store result score #offset_x academy_npcs run random value -150..150
execute store result score #offset_z academy_npcs run random value -150..150

# S'assurer que c'est assez loin du joueur (minimum 50 blocs)
execute if score #offset_x academy_npcs matches -49..49 if score #offset_z academy_npcs matches -49..49 run function academy_npcs:trainer/utils/attempt_spawn_retry

# Calculer la position de spawn
execute store result storage academy_npcs:temp check_x double 1 run scoreboard players operation #spawn_pos_x academy_npcs = #offset_x academy_npcs
execute store result score #player_x academy_npcs run data get entity @s Pos[0]
scoreboard players operation #spawn_pos_x academy_npcs += #player_x academy_npcs

execute store result storage academy_npcs:temp check_z double 1 run scoreboard players operation #spawn_pos_z academy_npcs = #offset_z academy_npcs
execute store result score #player_z academy_npcs run data get entity @s Pos[2]
scoreboard players operation #spawn_pos_z academy_npcs += #player_z academy_npcs

# Vérifier si la position est valide pour le spawn
function academy_npcs:trainer/utils/check_spawn_position with storage academy_npcs:temp

# Si valide, spawner. Sinon retry si possible
execute if score #spawn_valid academy_npcs matches 1 run function academy_npcs:trainer/utils/spawn_trainer_validated
execute if score #spawn_valid academy_npcs matches 0 if score #spawn_attempts academy_npcs matches ..4 run function academy_npcs:trainer/utils/attempt_spawn