# Guide d'intégration avec Cobblemon
# Ce fichier contient les instructions pour adapter le datapack à votre version spécifique de Cobblemon

# ========================================
# ÉTAPES D'INTÉGRATION NÉCESSAIRES
# ========================================

# 1. Vérifiez la version de Cobblemon installée
#    - Cobblemon 1.3.x, 1.4.x, ou 1.5.x ?
#    - Utilisez `/cobblemon info` en jeu pour vérifier

# 2. Identifiez les commandes de combat disponibles
#    - `/cobblemon battle` ou `/cobblemon npc battle`
#    - Testez ces commandes en jeu pour voir la syntaxe exacte

# 3. Adaptez start_battle.mcfunction
#    Remplacez les commentaires dans trainer/start_battle.mcfunction par:
#    
#    POUR COBBLEMON 1.6 (VOTRE VERSION):
#    execute as @s run cobblemon battle @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest]
#    OU avec la nouvelle syntaxe trainer:
#    execute as @s run cobblemon trainer battle @e[tag=pokemon_trainer,distance=..10,limit=1,sort=nearest]
#    
#    POUR COBBLEMON 1.5:
#    execute as @s run cobblemon battle trainer @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1]
#    
#    OU POUR VERSIONS ANTÉRIEURES:
#    execute as @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1] run cobblemon npc battle @p

# 4. Configurez les équipes de dresseurs
#    Dans config/teams.mcfunction, assurez-vous que les noms de Pokémon 
#    correspondent exactement aux noms utilisés par Cobblemon:
#    - Utilisez les noms en minuscules (ex: "charizard" pas "Charizard")
#    - Vérifiez avec `/cobblemon spawn [pokemon]` pour tester les noms

# 5. Détection de fin de combat
#    Dans trainer/detect_battle_end.mcfunction, décommentez et adaptez:
#    - La ligne avec le type d'entité Pokémon de votre version Cobblemon
#    - Les tags ou scores spécifiques à votre version

# ========================================
# COMMANDES DE TEST POUR COBBLEMON 1.6
# ========================================

# Testez ces commandes en jeu pour vérifier la compatibilité:
# /cobblemon spawn pikachu 20 ~ ~ ~
# /cobblemon battle help
# /cobblemon trainer help
# /cobblemon info (pour voir votre version exacte)

# Test de combat manuel:
# 1. Spawnez un dresseur: /function academy_npcs:trainer/spawn_manual
# 2. Testez: /cobblemon battle @e[type=villager,tag=pokemon_trainer,limit=1]
# 3. Ou testez: /cobblemon trainer battle @e[tag=pokemon_trainer,limit=1]

# ========================================
# VERSIONS SPÉCIFIQUES
# ========================================

# COBBLEMON 1.6.x (Latest - VOTRE VERSION):
# - Utilisez: execute as @s run cobblemon battle @e[type=villager,tag=pokemon_trainer,limit=1,sort=nearest]
# - Alternative: execute as @s run cobblemon trainer battle @e[tag=pokemon_trainer,limit=1,sort=nearest]
# - Type d'entité: cobblemon:pokemon
# - Tag de combat: InBattle ou BattleState
# - Nouveau: Support amélioré des dresseurs NPC

# COBBLEMON 1.5.x:
# - Utilisez: execute as @s run cobblemon battle trainer @e[tag=pokemon_trainer,limit=1]
# - Type d'entité: cobblemon:pokemon
# - Tag de combat: InBattle

# COBBLEMON 1.4.x:
# - Utilisez: execute as @s run cobblemon battle @e[tag=pokemon_trainer,limit=1] 
# - Type d'entité: cobblemon:pokemon
# - Score de combat: cobblemon.battle_state

# COBBLEMON 1.3.x (Older):
# - Utilisez: cobblemon npc battle start @p @e[tag=pokemon_trainer,limit=1]
# - Détection manuelle de fin de combat requise

# ========================================
# NOTES IMPORTANTES
# ========================================

# - Ce datapack est conçu pour être modulaire et facile à adapter
# - Seules 3 fonctions nécessitent une adaptation spécifique à Cobblemon:
#   1. trainer/start_battle.mcfunction (commande de combat)
#   2. trainer/detect_battle_end.mcfunction (détection de fin)
#   3. trainer/prepare_battle.mcfunction (création d'équipes optionnelle)

# - Le reste du système (spawn, zones, dialogues) fonctionne indépendamment
# - Testez d'abord le spawn et les dialogues, puis intégrez le combat

tellraw @a [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Guide d'intégration Cobblemon chargé ! Consultez le fichier cobblemon_integration.mcfunction","color":"green"}]