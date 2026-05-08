## [2026-05-08] — Rami score tracker app

### Résumé
Création de `index.html` : application mobile-first de comptage de scores pour le jeu de Rami.
Fichier autonome (zéro dépendance), basé sur le design de `Rami.html` fourni.

### Décisions / Priorités
- Fichier source de design : `Rami.html` (thème dark luxury, police Cormorant/Playfair, or #c9a227)
- Avatars joueurs : cercles colorés avec initiales, 4 couleurs (#e84545 / #4ade80 / #c9a227 / #7888a8)
- Seuils de barre de progression : vert < 70 pts · orange 70–99 · rouge ≥ 100
- Logique de jeu complète : joker, parole, +51, élimination à 151, distributeur aléatoire au départ
- État persisté dans localStorage (clé `rami-v2`)

### À retenir pour la prochaine session
- Le fichier final est `index.html` dans `/Users/Lenovo/Documents/2026/Herd/Rami/`
- `Rami.html` reste le fichier de référence design (ne pas modifier)
- Fonctionnalités éventuelles à ajouter : statistiques de partie, export PDF, sons
