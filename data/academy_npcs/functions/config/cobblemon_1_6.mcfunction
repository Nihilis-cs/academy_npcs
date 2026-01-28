# ========================================
# CONFIGURATION SPÉCIFIQUE COBBLEMON 1.6
# ========================================

# Ce fichier contient les adaptations spécifiques à Cobblemon 1.6
# Utilisez ce fichier comme référence pour les commandes mises à jour

# ========================================
# COMMANDES DE COMBAT COBBLEMON 1.6
# ========================================

# Commande principale pour initier un combat:
# execute as @s run cobblemon battle @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1,sort=nearest]

# Commande alternative (nouvelle syntaxe trainer):
# execute as @s run cobblemon trainer battle @e[tag=pokemon_trainer,distance=..10,limit=1,sort=nearest]

# ========================================
# DÉTECTION DE FIN DE COMBAT 1.6
# ========================================

# Tag de combat Cobblemon 1.6 (peut être "InBattle" ou "BattleState"):
# execute as @a[tag=in_battle] unless data entity @s {Tags:["InBattle"]} run function academy_npcs:trainer/post_battle_cleanup

# Alternative avec NBT BattleState:
# execute as @a[tag=in_battle] unless data entity @s {BattleState:1b} run function academy_npcs:trainer/post_battle_cleanup

# ========================================
# ÉQUIPES POKÉMON COBBLEMON 1.6
# ========================================

# Noms Pokémon valides pour Cobblemon 1.6:
# - pikachu, charizard, blastoise, venusaur
# - alakazam, machamp, golem, gengar
# - mrmime (pas mr_mime), scyther, jynx, electabuzz
# - magmar, pinsir, tauros, gyarados, lapras
# - ditto, eevee, vaporeon, jolteon, flareon
# - porygon, omanyte, omastar, kabuto, kabutops
# - aerodactyl, snorlax, articuno, zapdos, moltres

# ========================================
# TESTS DE COMPATIBILITÉ
# ========================================

# Commandes pour tester en jeu:
# /cobblemon info - Affiche votre version exacte
# /cobblemon help - Liste toutes les commandes disponibles
# /cobblemon battle help - Aide spécifique aux combats
# /cobblemon trainer help - Aide pour les dresseurs (nouveau en 1.6)

# Test de spawn Pokémon:
# /cobblemon spawn pikachu 20 ~ ~ ~

# ========================================
# NOTES D'IMPLÉMENTATION
# ========================================

# 1. Si "cobblemon battle" ne fonctionne pas, essayez "cobblemon trainer battle"
# 2. Le tag de fin de combat peut avoir changé - testez avec /data get entity @s
# 3. Certaines commandes peuvent nécessiter des permissions op
# 4. Vérifiez les logs du serveur pour les erreurs d'API

tellraw @a[tag=academy_admin] [{"text":"[Cobblemon 1.6] ","color":"blue"},{"text":"Configuration chargée !","color":"green"}]