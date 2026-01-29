# Spawn aléatoire de dresseurs dans le monde
# Exécuté périodiquement pour faire apparaître des dresseurs

# Limiter le nombre total de dresseurs actifs
execute store result score #trainer_count academy_npcs if entity @e[type=villager,tag=pokemon_trainer]
execute if score #trainer_count academy_npcs matches 20.. run return 0

# Choisir des joueurs aléatoirement comme points de spawn
execute as @r at @s run function academy_npcs:trainer/utils/try_spawn_near_player