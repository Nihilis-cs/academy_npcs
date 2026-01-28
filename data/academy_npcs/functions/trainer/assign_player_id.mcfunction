# Attribution d'un ID unique à un joueur
# Utilise un compteur global pour assigner des IDs séquentiels

# Incrémenter le compteur global d'ID
scoreboard players add #global_player_id academy_npcs 1

# Assigner l'ID au joueur
scoreboard players operation @s player_id = #global_player_id academy_npcs