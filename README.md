# Day 16 - Passage de SQL à ActiveRecord

Mise en place de différentes bdd avec Rails. Utilisation d'ActiveRecord, des models et des seeds.

## Les projets

Les 5 projets sont : Tech blog, MOOCacademy, The Hacking Pinterest, The Hacking News et The Hacking Class.

### Bases de données

* blog
** users : id, first_name, last_name, user_name, email_adress, password
** articles : id, title, user_id (cle etrangere), body, description
** categories : id, name

user.id => articles.user_id

* MOOCacademy
** cours : id, title, description
** lessons : id, cours_id (Cle etrangere), title, body

cours.id => lessons.cours_id

* The Hacking Pinterest
** users : id, name, email, password
** pins : id, user_id (cle etrangere), title, image
** comments : id, user_id (cle etrangere), pin_id (cle etrangere), content

user.id => pins.user_id
user.id => comment.user_id
pin.id => comment.pin_id

* The Hacking News
** users : id, name 
** liens : id, name, user_id (cle etrangere)
** comments : id, user_id (cle etrangere), lien_id (cle etrangere), comment_id (cle etrangere), content

user.id => link.user_id
user.id => comment.user_id
link.id => comment.link_id
comment.id => comment.comment_id

* The Hacking Class
** students : id, name, cours_id (cle etrangere)
** cours : id, theme

cours.id => student.cours_id

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

Le seed fonctionne pour le projet hackingPinterest et hackingNews.

```
rails db:seed
```
