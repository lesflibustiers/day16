# Day 16 - Passage de SQL à ActiveRecord

Mise en place de différentes bdd avec Rails. Utilisation d'ActiveRecord, des models et des seeds.

## Les projets

Les 5 projets sont : Tech blog, MOOCacademy, The Hacking Pinterest, The Hacking News et The Hacking Class.

### Bases de données

* blog
** users : id, first_name, last_name, user_name, email_adress, password
** articles : id, title, user_id (cle etrangere), body, description
** categories : id, name
Le seed fonctionne et genere des users random et des articles random (non associés).

user.id => articles.user_id

* MOOCacademy
** cours : id, title, description
** lessons : id, cours_id (Cle etrangere), title, body
Le seed n'est pas mit en place, on ajoute les utilisateurs a la mains.

cours.id => lessons.cours_id

* The Hacking Pinterest
** users : id, name, email, password
** pins : id, user_id (cle etrangere), title, image
** comments : id, user_id (cle etrangere), pin_id (cle etrangere), content

user.id => pins.user_id
user.id => comment.user_id
pin.id => comment.pin_id
Le seed fonctionne et genere des users random, des pins random associés aux users et des commentaires random associés aux pins.

* The Hacking News
** users : id, name 
** liens : id, name, user_id (cle etrangere)
** comments : id, user_id (cle etrangere), lien_id (cle etrangere), comment_id (cle etrangere), content

user.id => link.user_id
user.id => comment.user_id
link.id => comment.link_id
comment.id => comment.comment_id
Le seed fonctionne et genere des users random, des liens random associés aux users et des commentaires random associés aux liens puis des commentaires random associés aux commentaires.

* The Hacking Class
** students : id, name, cour_id (cle etrangere)
** cours : id, name

cours.id => student.cour_id
Le seed fonctionne et genere des cours random et des students random associés aux cours.

### Les commandes

Les commandes suivantes pour utiliser la base de donnée sont :

Pour observer le contenu d'une table :

```
User.all
```
Pour ajouter une valeur lié :

```
my_cours = Cours.find(2)
my_lesson = my_cours.lessons.create(title:'Pythagore', body:'Il faut apprendre Pythagore')
```
L'exemple ci-dessus (tiré de MOOCacademy) permet de rajouter la leçon Pythagore dans le cours à l'index 2 (qui est le cours de math).

### Les seeds :

```
rails db:seed
```

Genere des valeurs liées entres elles.
