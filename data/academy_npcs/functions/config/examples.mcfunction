# ========================================
# EXEMPLES D'ÉQUIPES PERSONNALISÉES
# ========================================
# 
# Copiez et modifiez ces exemples dans le fichier teams.mcfunction
# 

# Exemple 1: Équipe monotype Feu (Zone 2)
data modify storage academy_npcs:teams zone_2 append value {name:"Pyromaniaque Jack", pokemon:["charmander","vulpix","growlithe","ponyta"]}

# Exemple 2: Équipe monotype Eau (Zone 2)  
data modify storage academy_npcs:teams zone_2 append value {name:"Nageur Pro Marina", pokemon:["squirtle","staryu","magikarp","tentacool"]}

# Exemple 3: Équipe équilibrée avancée (Zone 3)
data modify storage academy_npcs:teams zone_3 append value {name:"Stratège Victor", pokemon:["alakazam","machamp","lapras","dragonite","gengar"]}

# Exemple 4: Équipe légendaire thématique (Zone 4)
data modify storage academy_npcs:teams zone_4 append value {name:"Ornithologue louche", pokemon:["articuno","zapdos","moltres","aerodactyl","pidgeot","fearow"]}

# Exemple 5: Équipe starter évolutions (Zone 3)
data modify storage academy_npcs:teams zone_3 append value {name:"Maître des Starters", pokemon:["charizard","blastoise","venusaur","pikachu","eevee"]}

# Exemple 6: Équipe débutant alternative (Zone 1)
data modify storage academy_npcs:teams zone_1 append value {name:"Collectionneuse Amy", pokemon:["jigglypuff","clefairy","meowth"]}

# Exemple 7: Équipe de type Combat (Zone 2)
data modify storage academy_npcs:teams zone_2 append value {name:"Maître d'Arts Martiaux", pokemon:["machoke","hitmonlee","hitmonchan","mankey"]}

# Exemple 8: Équipe mystérieuse (Zone 4)
data modify storage academy_npcs:teams zone_4 append value {name:"Sage des Anciens", pokemon:["mew","celebi","unown","arceus","dialga"]}

# ========================================
# NOMS DE POKÉMON UTILISABLES
# ========================================
# 
# Génération 1 (Kanto):
# bulbasaur, ivysaur, venusaur, charmander, charmeleon, charizard
# squirtle, wartortle, blastoise, caterpie, metapod, butterfree
# weedle, kakuna, beedrill, pidgey, pidgeotto, pidgeot
# rattata, raticate, spearow, fearow, ekans, arbok
# pikachu, raichu, sandshrew, sandslash, nidoran_f, nidorina, nidoqueen
# nidoran_m, nidorino, nidoking, clefairy, clefable, vulpix, ninetales
# jigglypuff, wigglytuff, zubat, golbat, oddish, gloom, vileplume
# paras, parasect, venonat, venomoth, diglett, dugtrio
# meowth, persian, psyduck, golduck, mankey, primeape
# growlithe, arcanine, poliwag, poliwhirl, poliwrath
# abra, kadabra, alakazam, machop, machoke, machamp
# bellsprout, weepinbell, victreebel, tentacool, tentacruel
# geodude, graveler, golem, ponyta, rapidash, slowpoke, slowbro
# magnemite, magneton, farfetchd, doduo, dodrio, seel, dewgong
# grimer, muk, shellder, cloyster, gastly, haunter, gengar
# onix, drowzee, hypno, krabby, kingler, voltorb, electrode
# exeggcute, exeggutor, cubone, marowak, hitmonlee, hitmonchan
# lickitung, koffing, weezing, rhyhorn, rhydon, chansey
# tangela, kangaskhan, horsea, seadra, goldeen, seaking
# staryu, starmie, mr_mime, scyther, jynx, electabuzz
# magmar, pinsir, tauros, magikarp, gyarados, lapras
# ditto, eevee, vaporeon, jolteon, flareon, porygon
# omanyte, omastar, kabuto, kabutops, aerodactyl
# snorlax, articuno, zapdos, moltres, dratini, dragonair, dragonite
# mewtwo, mew
#
# Note: Pour les générations 2+, consultez la documentation de Cobblemon
# pour les noms exacts à utiliser.

# ========================================
# CONSEILS DE CONCEPTION D'ÉQUIPES
# ========================================
#
# Zone 1 (0-500 blocs):
# - 2-4 Pokémon
# - Niveau 5-15 recommandé
# - Types basiques, pas d'évolutions finales
# - Exemples: Caterpie, Weedle, Pidgey, Rattata...
#
# Zone 2 (500-2000 blocs):
# - 3-5 Pokémon  
# - Niveau 15-30 recommandé
# - Évolutions intermédiaires autorisées
# - Exemples: Ivysaur, Charmeleon, Wartortle, Pidgeotto...
#
# Zone 3 (2000-5000 blocs):
# - 4-6 Pokémon
# - Niveau 30-50 recommandé
# - Évolutions finales + quelques légendaires mineurs
# - Exemples: Charizard, Blastoise, Venusaur, Alakazam...
#
# Zone 4 (5000+ blocs):
# - 5-6 Pokémon
# - Niveau 50+ recommandé
# - Légendaires et Pokémon très puissants
# - Exemples: Mewtwo, Mew, Dragonite, Articuno...