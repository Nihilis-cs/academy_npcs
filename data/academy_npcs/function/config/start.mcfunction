# Démarrage du système Academy NPCs
# Active le spawn automatique des dresseurs

# Vérifier que le système est installé
execute unless score #system academy_installed matches 1 run function academy_npcs:install

# Activer le système
scoreboard objectives add academy_active dummy
scoreboard players set #system academy_active 1

# Programmer les spawns automatiques (toutes les 2 minutes)
schedule function academy_npcs:trainer/spawn_random 120s replace
schedule function academy_npcs:trainer/manage_interactions 20t replace

# Message de confirmation
tellraw @a [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Système démarré ! Les dresseurs vont commencer à apparaître.","color":"green"}]
tellraw @a [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Nouveau spawn toutes les 2 minutes.","color":"yellow"}]