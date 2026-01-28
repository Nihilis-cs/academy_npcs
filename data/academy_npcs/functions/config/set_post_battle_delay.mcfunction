# Configuration du délai de despawn post-combat
# Modifiez la valeur ci-dessous pour changer la durée

# Durée en ticks (20 ticks = 1 seconde)
# 600 = 30 secondes (par défaut)
# 1200 = 1 minute
# 300 = 15 secondes

scoreboard players set #post_battle_delay academy_npcs 600

tellraw @a [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Délai post-combat configuré à ","color":"green"},{"score":{"name":"#post_battle_delay","objective":"academy_npcs"},"color":"white"},{"text":" ticks.","color":"green"}]