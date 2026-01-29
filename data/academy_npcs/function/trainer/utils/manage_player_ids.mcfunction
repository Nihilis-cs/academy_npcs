# Attribution d'ID unique aux joueurs pour le tracking des combats
# Exécuté périodiquement pour s'assurer que tous les joueurs ont un ID

execute as @a unless score @s player_id matches 1.. run function academy_npcs:trainer/utils/assign_player_id