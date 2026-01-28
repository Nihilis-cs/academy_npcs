# Gestion des interactions avec les dresseurs
# Détecte les clics droits sur les dresseurs et lance le dialogue

# Gérer les IDs des joueurs pour le tracking des combats
function academy_npcs:trainer/manage_player_ids

# Détecter l'interaction avec un dresseur
execute as @a at @s if entity @e[type=villager,tag=pokemon_trainer,distance=..5] run function academy_npcs:trainer/start_dialogue

# Gestion de la durée de vie des dresseurs
execute as @e[type=villager,tag=pokemon_trainer] run function academy_npcs:trainer/manage_lifetime