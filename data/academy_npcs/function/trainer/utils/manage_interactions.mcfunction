# Système d'interaction par clic droit naturel
# Utilise l'interaction native des villageois avec trade factice

# Créer les scoreboards nécessaires
scoreboard objectives add academy_npcs dummy
scoreboard objectives add interact_time dummy  
scoreboard objectives add dialogue_cooldown dummy

# Gérer les IDs des joueurs pour le tracking des combats
function academy_npcs:trainer/manage_player_ids

# Le clic droit est détecté automatiquement via le trade factice
# L'interaction déclenche start_dialogue via le système de trade

# Réduire les cooldowns d'interaction
execute as @a if score @s interact_time matches 1.. run scoreboard players remove @s interact_time 1
execute as @e[type=villager,tag=pokemon_trainer] if score @s dialogue_cooldown matches 1.. run scoreboard players remove @s dialogue_cooldown 1

# Gestion de la durée de vie des dresseurs
execute as @e[type=villager,tag=pokemon_trainer] run function academy_npcs:trainer/utils/manage_lifetime