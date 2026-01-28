# ========================================
# SCRIPT DE TEST COBBLEMON 1.6
# ========================================

# Utilisez ces commandes pour tester l'intégration avec Cobblemon 1.6
# Exécutez ce fichier avec: /function academy_npcs:test/cobblemon_1_6_test

tellraw @s [{"text":"=== TEST COBBLEMON 1.6 ===","color":"gold","bold":true}]

# 1. Vérifier la version de Cobblemon
tellraw @s [{"text":"1. Exécutez: ","color":"yellow"},{"text":"/cobblemon info","color":"white","clickEvent":{"action":"suggest_command","value":"/cobblemon info"}}]

# 2. Tester le spawn d'un Pokémon de test
tellraw @s [{"text":"2. Test spawn: ","color":"yellow"},{"text":"/cobblemon spawn pikachu 20","color":"white","clickEvent":{"action":"suggest_command","value":"/cobblemon spawn pikachu 20"}}]

# 3. Spawn un dresseur de test
tellraw @s [{"text":"3. Spawn dresseur: ","color":"yellow"},{"text":"/function academy_npcs:trainer/spawn_manual","color":"white","clickEvent":{"action":"suggest_command","value":"/function academy_npcs:trainer/spawn_manual"}}]

# 4. Test des commandes de combat
tellraw @s [{"text":"4a. Test combat v1: ","color":"yellow"},{"text":"/cobblemon battle @e[tag=pokemon_trainer,limit=1]","color":"white","clickEvent":{"action":"suggest_command","value":"/cobblemon battle @e[tag=pokemon_trainer,limit=1]"}}]
tellraw @s [{"text":"4b. Test combat v2: ","color":"yellow"},{"text":"/cobblemon trainer battle @e[tag=pokemon_trainer,limit=1]","color":"white","clickEvent":{"action":"suggest_command","value":"/cobblemon trainer battle @e[tag=pokemon_trainer,limit=1]"}}]

# 5. Vérifier les tags de combat
tellraw @s [{"text":"5. Vérifier tags: ","color":"yellow"},{"text":"/data get entity @s","color":"white","clickEvent":{"action":"suggest_command","value":"/data get entity @s"}}]

# 6. Test du système complet
tellraw @s [{"text":"6. Test dialogue: ","color":"yellow"},{"text":"Faites clic-droit sur un dresseur","color":"white"}]

tellraw @s [{"text":"============================","color":"gold"}]
tellraw @s [{"text":"Si une commande ne fonctionne pas, notez l'erreur pour ajuster l'intégration.","color":"gray","italic":true}]