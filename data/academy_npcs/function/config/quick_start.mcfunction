# 🚀 DÉMARRAGE RAPIDE - Academy NPCs avec vos mods
# Guide optimisé pour Radical Cobblemon Trainers API

tellraw @s [{"text":"","color":"white"}]
tellraw @s [{"text":"🎯 DÉMARRAGE RAPIDE - Academy NPCs","color":"gold","bold":true}]
tellraw @s [{"text":"═══════════════════════════════════","color":"gold"}]

tellraw @s [{"text":"📋 Étapes recommandées pour votre modpack:","color":"yellow","bold":true}]

tellraw @s [{"text":"","color":"white"}]
tellraw @s [{"text":"1️⃣ ","color":"aqua","bold":true},{"text":"Démarrer le système","color":"white"}]
tellraw @s [{"text":"    [DÉMARRER] ","color":"green","clickEvent":{"action":"run_command","value":"/function academy_npcs:config/start"},"hoverEvent":{"action":"show_text","contents":"Active le spawn automatique des dresseurs"}},{"text":"← Lance le spawn automatique","color":"gray"}]

tellraw @s [{"text":"","color":"white"}]
tellraw @s [{"text":"2️⃣ ","color":"aqua","bold":true},{"text":"Test rapide d'un dresseur","color":"white"}]
tellraw @s [{"text":"    [SPAWN TEST] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function academy_npcs:test/rightclick_test"},"hoverEvent":{"action":"show_text","contents":"Créé un dresseur et teste l'interaction par clic droit"}},{"text":"← Teste le clic droit","color":"gray"}]

tellraw @s [{"text":"","color":"white"}]
tellraw @s [{"text":"3️⃣ ","color":"aqua","bold":true},{"text":"Test complet Cobblemon","color":"white"}]
tellraw @s [{"text":"    [TEST COBBLEMON] ","color":"blue","clickEvent":{"action":"run_command","value":"/function academy_npcs:test/cobblemon_1_6_test"},"hoverEvent":{"action":"show_text","contents":"Vérifie la compatibilité avec Cobblemon 1.6"}},{"text":"← Vérifie les combats","color":"gray"}]

tellraw @s [{"text":"","color":"white"}]
tellraw @s [{"text":"💡 NOUVEAUTÉS avec vos mods:","color":"yellow","bold":true}]
tellraw @s [{"text":"✓ Clic droit naturel sur les dresseurs","color":"green"}]
tellraw @s [{"text":"✓ Interface native comme les PNJ vanilla","color":"green"}]
tellraw @s [{"text":"✓ Intégration automatique avec Cobblemon","color":"green"}]
tellraw @s [{"text":"✓ Support des quêtes FTB","color":"green"}]
tellraw @s [{"text":"✓ Meilleure gestion des arènes Rad Gyms","color":"green"}]

tellraw @s [{"text":"","color":"white"}]
tellraw @s [{"text":"🎮 COMMENT JOUER:","color":"yellow","bold":true}]
tellraw @s [{"text":"• Les dresseurs apparaissent automatiquement toutes les 2 min","color":"white"}]
tellraw @s [{"text":"• Plus vous vous éloignez du spawn, plus ils sont forts","color":"white"}]
tellraw @s [{"text":"• Faites CLIC DROIT sur un dresseur pour parler","color":"gold","bold":true}]
tellraw @s [{"text":"• Cliquez le bouton doré pour accepter le combat","color":"white"}]
tellraw @s [{"text":"• Après le combat, le dresseur disparaît en 30 secondes","color":"white"}]

tellraw @s [{"text":"","color":"white"}]
tellraw @s [{"text":"🔧 Besoin d'aide ?","color":"red","bold":true}]
tellraw @s [{"text":"[AIDE COBBLEMON] ","color":"blue","clickEvent":{"action":"run_command","value":"/function academy_npcs:config/cobblemon_1_6"},"hoverEvent":{"action":"show_text","contents":"Guide spécifique Cobblemon 1.6"}},{"text":"[ÉQUIPES] ","color":"green","clickEvent":{"action":"run_command","value":"/function academy_npcs:config/examples"},"hoverEvent":{"action":"show_text","contents":"Exemples d'équipes personnalisées"}},{"text":"[API GUIDE] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/function academy_npcs:config/radical_api_setup"},"hoverEvent":{"action":"show_text","contents":"Guide Radical Cobblemon Trainers API"}}]

tellraw @s [{"text":"═══════════════════════════════════","color":"gold"}]
tellraw @s [{"text":"Bon jeu ! 🎉","color":"green","bold":true}]