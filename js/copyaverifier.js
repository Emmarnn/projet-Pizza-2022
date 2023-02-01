//Au démarrage de la page
// récupération de la chaine xml pour une table ou une vue spécifiée
xmlpizzas="";

numPIzza=0;

numTarif=0;



xmlpizzas=getXmlBase("v_pizzas","0","0");

//remplissage de la liste
afficheListe("listepizzas",xmlpizzas,"v_pizzas","numPizza","nomPizza");

// on récupère le n° de la pizza( clé primaire)
numPizza= $("#listepizzas").val();



// affichage d'une liste déroulante pour les tailles de pizzas

// recup chaine xml pour les  tailles
xmltailles=getXmlBase("tailles","0","0");

// création de la liste des tailles
afficheListe("listetailles",xmltailles,"tailles","numTaille","nomTaille");

// on récup les infos de la table couter filtrée sur le tarif de la pizza
numTarif=getElement(xmlpizzas,"v_pizzas","numPizza",numPizza,"numTarif");


// récupération( recherche) de l'index de l'image
indexImage= getElement(xmlpizzas,"v_pizzas","numPizza",numPizza,"indexImage");


// détermination du chemin d'accès à l'image
urlimage="images/"+indexImage+".jpg";

// afffichage de l'image correspondant à la pizza sélectionnée
$("#imgpizza").attr('src',urlimage);

// affichage des infos de la pizza sélectionnée
chaineinfos=afficheInfos(xmlpizzas,numPizza);
$("#divinfos").html(chaineinfos);

//récupération de la chaine xml pour une table ou une vue spécifiée
// on filtre les ingredients sur le nuùéro de la pizza sélectionnée
xmlingred=getXmlBase(" v_ingredpizza","numPizza",numPizza);
chaine=afficheIngredients(xmlingred);

$("#divingred").html(chaine);
