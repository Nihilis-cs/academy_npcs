# Vérifications détaillées à la position finale

# Bloc du dessous
execute if block ~ ~-1 ~ #academy_npcs:solid_blocks run tellraw @a[distance=..50] [{"text":"✓ Sol solide","color":"green"}]
execute unless block ~ ~-1 ~ #academy_npcs:solid_blocks run tellraw @a[distance=..50] [{"text":"✗ Sol non-solide","color":"red"}]

# Eau/Lave
execute if block ~ ~ ~ water run tellraw @a[distance=..50] [{"text":"✗ Eau détectée (niveau 0)","color":"red"}]
execute if block ~ ~ ~ lava run tellraw @a[distance=..50] [{"text":"✗ Lave détectée (niveau 0)","color":"red"}]
execute if block ~ ~1 ~ water run tellraw @a[distance=..50] [{"text":"✗ Eau détectée (niveau 1)","color":"red"}]
execute if block ~ ~1 ~ lava run tellraw @a[distance=..50] [{"text":"✗ Lave détectée (niveau 1)","color":"red"}]

execute unless block ~ ~ ~ water unless block ~ ~ ~ lava unless block ~ ~1 ~ water unless block ~ ~1 ~ lava run tellraw @a[distance=..50] [{"text":"✓ Pas d'eau/lave","color":"green"}]

# Arbres
execute if block ~ ~2 ~ #minecraft:leaves run tellraw @a[distance=..50] [{"text":"✗ Feuilles détectées (+2)","color":"red"}]
execute if block ~ ~3 ~ #minecraft:leaves run tellraw @a[distance=..50] [{"text":"✗ Feuilles détectées (+3)","color":"red"}]
execute unless block ~ ~2 ~ #minecraft:leaves unless block ~ ~3 ~ #minecraft:leaves run tellraw @a[distance=..50] [{"text":"✓ Pas dans un arbre","color":"green"}]

# Autres dresseurs
execute store result score #nearby_trainers academy_npcs if entity @e[type=villager,tag=pokemon_trainer,distance=..15]
execute if score #nearby_trainers academy_npcs matches 1.. run tellraw @a[distance=..50] [{"text":"✗ Dresseur trop proche: ","color":"red"},{"score":{"name":"#nearby_trainers","objective":"academy_npcs"},"color":"white"}]
execute if score #nearby_trainers academy_npcs matches 0 run tellraw @a[distance=..50] [{"text":"✓ Pas de dresseur à proximité","color":"green"}]

# Espace autour
scoreboard players set #space_count academy_npcs 0
execute if block ~1 ~ ~ #academy_npcs:spawnable_air run scoreboard players add #space_count academy_npcs 1
execute if block ~-1 ~ ~ #academy_npcs:spawnable_air run scoreboard players add #space_count academy_npcs 1
execute if block ~ ~ ~1 #academy_npcs:spawnable_air run scoreboard players add #space_count academy_npcs 1
execute if block ~ ~ ~-1 #academy_npcs:spawnable_air run scoreboard players add #space_count academy_npcs 1

execute if score #space_count academy_npcs matches 2.. run tellraw @a[distance=..50] [{"text":"✓ Espace suffisant: ","color":"green"},{"score":{"name":"#space_count","objective":"academy_npcs"},"color":"white"},{"text":"/4 côtés libres","color":"white"}]
execute if score #space_count academy_npcs matches ..1 run tellraw @a[distance=..50] [{"text":"✗ Espace insuffisant: ","color":"red"},{"score":{"name":"#space_count","objective":"academy_npcs"},"color":"white"},{"text":"/4 côtés libres (minimum 2)","color":"white"}]
