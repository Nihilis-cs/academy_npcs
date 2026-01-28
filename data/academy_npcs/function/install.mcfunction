# Installation et initialisation du datapack Academy NPCs
# Exécuté une seule fois lors de l'installation

# Message de bienvenue
tellraw @a [{"text":"================================","color":"gold"}]
tellraw @a [{"text":"   ACADEMY NPCS - Installation","color":"gold","bold":true}]
tellraw @a [{"text":"================================","color":"gold"}]
tellraw @a [{"text":"","color":"white"}]
tellraw @a [{"text":"✓ Initialisation des systèmes...","color":"green"}]

# Initialiser les systèmes
function academy_npcs:zones/init
function academy_npcs:config/teams

# Créer les objectifs nécessaires
scoreboard objectives add dialogue_cooldown dummy
scoreboard objectives add trainer_lifetime dummy
scoreboard objectives add random dummy

# Marquer l'installation comme terminée
scoreboard objectives add academy_installed dummy
scoreboard players set #system academy_installed 1

tellraw @a [{"text":"","color":"white"}]
tellraw @a [{"text":"✓ Installation terminée !","color":"green"}]
tellraw @a [{"text":"","color":"white"}]
tellraw @a [{"text":"Commandes disponibles:","color":"yellow"}]
tellraw @a [{"text":"• /function academy_npcs:config/start","color":"aqua"},{"text":" - Démarrer le système","color":"white"}]
tellraw @a [{"text":"• /function academy_npcs:config/stop","color":"aqua"},{"text":" - Arrêter le système","color":"white"}]
tellraw @a [{"text":"• /function academy_npcs:config/reload","color":"aqua"},{"text":" - Recharger la config","color":"white"}]
tellraw @a [{"text":"• /function academy_npcs:trainer/spawn_debug","color":"aqua"},{"text":" - Spawn de test avec diagnostic","color":"white"}]
tellraw @a [{"text":"• /function academy_npcs:trainer/spawn_manual","color":"aqua"},{"text":" - Spawn manuel (strict)","color":"white"}]
tellraw @a [{"text":"","color":"white"}]
tellraw @a [{"text":"Configuration des équipes: ","color":"yellow"},{"text":"data/academy_npcs/function/config/teams.mcfunction","color":"aqua"}]
tellraw @a [{"text":"================================","color":"gold"}]