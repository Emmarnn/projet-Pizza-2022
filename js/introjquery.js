// sélectionner un objet unique (qui n'existe qu'en un seul exemplaire)
$(document)
$(window)
$(location) //gestion des redirections

// Sélection d'un type d'objets
$(":div") //sélection de toutes les balises

// Sélection d'une classe
$(".maclasse")

// Sélection d'un objet unique
$("id_objet")

// Sélection de plusieurs objets, avec une virgule
$("#id1,id2")

// Exemple pour la largeur d'un objet
$("#img").width(150) //procédure
lg=$("#img").width() //fonction

// Objets de formulaire
$("#nom").val("Bonjour")

nom=$("nom").val()

texte=$("#div1").html()

$("#div1").html("Bonjour")