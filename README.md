# Rami Score Tracker
Application mobile de comptage de scores pour le jeu de Rami.
- 2 à 4 joueurs
- Gestion des jokers, paroles, redistributions
- Élimination automatique à 151 points

## Live
https://alisami73.github.io/rami-score

## Stack
HTML5 + CSS3 + JavaScript vanilla + Supabase

## Supabase
L'application utilise le projet Supabase `rgorwgxvfyugizxnzadc.supabase.co`.

Pour activer la sauvegarde des parties :
1. Ouvrir l'éditeur SQL dans Supabase
2. Exécuter le contenu de `supabase/schema.sql`

La table `public.parties` permettra d'enregistrer les parties terminées et d'afficher l'historique sauvegardé dans l'application.
