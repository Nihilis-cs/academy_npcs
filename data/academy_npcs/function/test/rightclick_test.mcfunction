# Test du système de clic droit avec Radical Cobblemon Trainers API
# Vérifications spécifiques pour l'interaction naturelle

tellraw @s [{"text":"=== Test Clic Droit - Radical API ===","color":"dark_purple","bold":true}]

# Test 1: Vérifier que le système de clic droit est actif
execute if entity @e[type=marker,tag=rightclick_active] run tellraw @s [{"text":"✓ Système de clic droit: ","color":"green"},{"text":"ACTIF","color":"green","bold":true}]
execute unless entity @e[type=marker,tag=rightclick_active] run tellraw @s [{"text":"⚠ Système de clic droit: ","color":"yellow"},{"text":"INACTIF","color":"red","bold":true}]

# Test 2: Spawn d'un dresseur de test optimisé
tellraw @s [{"text":"1. Création d'un dresseur de test...","color":"yellow"}]
function academy_npcs:trainer/spawn_manual

# Test 3: Vérifications des trades (pour l'interaction)
execute as @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1] if data entity @s Offers.Recipes[0] run tellraw @s [{"text":"✓ Trade d'interaction: ","color":"green"},{"text":"CONFIGURÉ","color":"green","bold":true}]
execute as @e[type=villager,tag=pokemon_trainer,distance=..10,limit=1] unless data entity @s Offers.Recipes[0] run tellraw @s [{"text":"✗ Trade d'interaction: ","color":"red"},{"text":"MANQUANT","color":"red","bold":true}]

# Test 4: Instructions pour tester
tellraw @s [{"text":"2. Instructions de test:","color":"yellow"}]
tellraw @s [{"text":"   📌 Regardez le dresseur qui vient d'apparaître","color":"white"}]
tellraw @s [{"text":"   👆 Faites CLIC DROIT sur lui","color":"gold","bold":true}]
tellraw @s [{"text":"   💬 Le dialogue devrait s'ouvrir automatiquement","color":"white"}]
tellraw @s [{"text":"   ⚔️ Cliquez sur le bouton doré pour le combat","color":"white"}]

# Test 5: Diagnostic des mods
tellraw @s [{"text":"3. Vérifications des mods:","color":"yellow"}]
tellraw @s [{"text":"   • Si ça ne marche pas, vos mods pourraient","color":"white"}]
tellraw @s [{"text":"     intercepter l'interaction avant notre système","color":"white"}]
tellraw @s [{"text":"   • Essayez les systèmes alternatifs:","color":"white"}]

# Boutons de test direct
tellraw @s [{"text":"","color":"white"}]
tellraw @s [{"text":"🛠️ Tests manuels:","color":"aqua"}]
tellraw @s [{"text":"[DIALOGUE DIRECT] ","color":"green","clickEvent":{"action":"run_command","value":"/function academy_npcs:trainer/start_dialogue"},"hoverEvent":{"action":"show_text","contents":"Force le dialogue sans interaction"}},{"text":"[COMBAT DIRECT] ","color":"red","clickEvent":{"action":"run_command","value":"/function academy_npcs:trainer/start_battle"},"hoverEvent":{"action":"show_text","contents":"Force le combat sans dialogue"}},{"text":"[RESET] ","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players reset @s interact_time"},"hoverEvent":{"action":"show_text","contents":"Reset des cooldowns"}}]

tellraw @s [{"text":"=====================================","color":"dark_purple"}]

# Activer le système de clic droit s'il ne l'est pas déjà
schedule function academy_npcs:trainer/manage_interactions 10t replace
tellraw @s [{"text":"🔧 Système de clic droit activé pour les tests","color":"green"}]