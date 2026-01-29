# Arrêt du système Academy NPCs
# Désactive le spawn automatique et retire les dresseurs

# Désactiver le système
scoreboard players set #system academy_active 0

# Annuler les schedules
schedule clear academy_npcs:trainer/utils/spawn_random
schedule clear academy_npcs:trainer/utils/manage_interactions

# Retirer tous les dresseurs actifs
execute as @e[type=villager,tag=pokemon_trainer] run function academy_npcs:trainer/utils/despawn_trainer

# Message de confirmation
tellraw @a [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Système arrêté. Tous les dresseurs ont été retirés.","color":"red"}]