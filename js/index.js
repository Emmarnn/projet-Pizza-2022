//Au démarrage de la page
//déclaration et initialisation de variables globales
xmlpizzas="";
numPIzza=0;
numTarif=0;
indexGenre=0;
xmlingred="";
xmltailles="";

// déclaration/initialisation des tableaux

numeros=new Array();
//noms= new Array();
tailles= new Array();
lesprix= new Array();
lignes=new Array();


//on cache la division 'divingred'

xmlpizzas=initialisation(xmlpizzas);
affichage(xmlpizzas,lesprix);


//   procédures évènementielles -----------------
// changement de sélection dans la liste des pizzas

$("#listepizzas").change
(
       function()
       {
        
        affichage(xmlpizzas);
       }
);

// click sur les boutons radio ( genres)
$("#0,#1,#2,#3").click
(
        function()
        {
            clef="0";
            valeur="0";
            // on récupère l'id du genre
            var indexGenre= $(this).attr('id');
            
            // on détermine la clé et la valeur de filtrage sur le genre
            if(indexGenre!="0")
            {
                clef="numGenre";
                valeur=indexGenre;
            }
             // on réinitialise la chaine xml pour les pizzas
            xmlpizzas=getXmlBase("v_pizzas",clef,valeur);

            // on vide la liste des pizzas
            $("#listepizzas").html("");

            afficheListe("listepizzas",xmlpizzas,"v_pizzas","numPizza","nomPizza");
            $("#listetailles").html("");
            initialisation(xmlpizzas);
            affichage(xmlpizzas);
        }
);

// évènement changement dans la liste listetailles

$("#listetailles").change
(
        function()
        {
             numTaille=$("#listetailles").val();
             numTarif=getElement(xmlpizzas,"v_pizzas","numPizza",numPizza,"numTarif");

    // on récupère le prix avec la fonction calcul
     prix = calcul(numTarif);

     // on affiche le prix dans la zone correspondante
     $("#prix").html(prix);

     personnes=getElement(xmltailles,"tailles","numTaille",numTaille,"nbPersonnes")
    
     // on affiche le nb de personnes dans le span correspondant
     $("#nbpers").html(personnes);

   }
);



// click sur le bouton ajout
$("#ajout").click
(
        function()
        {
            var num=$("#listepizzas").val();
           //var nom =getElement(xmlpizzas,"v_pizzas","numPizza",num,"nomPizza");
           var taille =$("#listetailles").val();
           var prix=$("#prix").html();
           prix=parseFloat(prix);
           var nomtaille=getElement(xmltailles,"tailles","numTaille",taille,"nomTaille");
           var nom=getElement(xmlpizzas,"v_pizzas","numPizza",num,"nomPizza");
            //  on affecte les valeurs respectivement à chacun des tableaux déclarés
           numeros.push(num);
           tailles.push(taille);
           lesprix.push(prix);
           
           // on construit la chaine d'affichage
           chaine="<div>";
           chaine+=nom+" "+nomtaille+" "+prix+"€";
           chaine+="</div>";
           nbElements=numeros.length;
           index=nbElements-1;
           
           // on construit la chaine de caractèes qui affihe un bouton pour modifier la taille
           bouton="<button id='m"+index+"' class=' modif text-right btn btn-sm btn-success'>Modifier</button>";
           chaine+=bouton;
       
             // on construit la chaine de caractèes qui affihe un bouton pour  supprimer un élément
           bouton="<button id='s"+index+"' class=' suppr text-right btn btn-sm btn-danger'>Supprimer</button>";
           chaine+=" "+bouton;
           chaine+="<br /><br />";
            lignes.push(chaine);
            affichePanier(lignes);

            //on récupère le montant global des prix
            total=montantGlobal(lesprix);

            //ion affiche le montant global dans la zone correspondante
            $("#total").html(total);
        }
);

// evènement clik sur les boutons "modifier" en récupérant la classe associéé 

$(".modif").live("click",

        function()
        {
           id=$(this).attr('id');
           
           //on récupère l'index du tableau des pizzas
           lg=id.length;
           index=id.substr(1,lg-1);
           taille=$("#listetailles").val();
           num=numeros[index];
           var nomtaille=getElement(xmltailles,"tailles","numTaille",taille,"nomTaille");
           var nom=getElement(xmlpizzas,"v_pizzas","numPizza",num,"nomPizza");
                      //  on affecte les valeurs respectivement à chacun des tableaux déclarés
             // on construit la chaine d'affichage
             chaine="<div>";
           chaine+=nom+" "+nomtaille+" "+prix+"€";
           chaine+="</div>";
          
               // on construit la chaine de caractèes qui affihe un bouton pour modifier la taille
           bouton="<button id='m"+index+"' class=' modif text-right btn btn-sm btn-success'>Modifier</button>";
           chaine+=bouton;

             // on construit la chaine de caractèes qui affihe un bouton pour  supprimer un élément
           bouton="<button id='s"+index+"' class=' suppr text-right btn btn-sm btn-danger'>Supprimer</button>";
           
           chaine+=" "+bouton;
           chaine+="<br /><br />";
            lignes[index]=chaine;
            li=lignes[index];
           
           // affichage dans la division "divpanier"
         affichePanier(lignes);

        }
);

// click sur un bouton pour Supprimer
$(".suppr").live("click",
        function()
        {
            // on récupère l'id
            id=$(this).attr('id');
           
            //on récupère l'index du tableau des pizzas
            lg=id.length;
            index=id.substr(1,lg-1);
            
            // on supprime les élément des tableau correspondant à l'index de la sélection
            numeros.splice(index,1);
            tailles.splice(index,1);
            lesprix.splice(index,1);
            lignes.splice(index,1);

           // mise à jour de l'index des boutons de suppression
           
           
           for(var i=0;i<numeros.length;i++)
           {
               idmodif="m"+i;
               idsuppr="s"+i;

           } 


            affichePanier(lignes);

        }

);
$("#btntog").click
(
    function()
    {
        $("#divingred").toggle("fold",1000);
    }
)

//----------------------------------------------------
// fonctions/procédures

function initialisation(xmlpizzas)
{
    xmlpizzas=getXmlBase("v_pizzas","0","0");
    //remplissage de la liste
    afficheListe("listepizzas",xmlpizzas,"v_pizzas","numPizza","nomPizza");
    xmltailles=getXmlBase("tailles","0","0");
    // création de la liste des tailles
     afficheListe("listetailles",xmltailles,"tailles","numTaille","nomTaille");
     numTaille=$("#listetailles").val();
    personnes=getElement(xmltailles,"tailles","numTaille",numTaille,"nbPersonnes")
    
    // on affiche le nb de personnes dans le span correspondant
    $("#nbpers").html(personnes);

    // on récupère le n° de la pizza( clé primaire)
    numPizza= $("#listepizzas").val();

    total=montantGlobal(lesprix);

    return xmlpizzas;
}  
    
  function affichage(xmlpizzas,lesprix)
  {  
    numPizza= $("#listepizzas").val();
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
    
    chaine=afficheIngredients(xmlingred);
    $("#divingred").html(chaine);
    
    // on récupère le tarif de la pizza sélectionnée
    numTarif=getElement(xmlpizzas,"v_pizzas","numPizza",numPizza,"numTarif");

    // on récupère le prix avec la fonction calcul
     prix = calcul(numTarif);

     // on affiche le prix dans la zone correspondante
     $("#prix").html(prix);
     

     // on récupère le montant global des prix
     total=montantGlobal(lesprix);

     // on affiche le montant global dans la zone correspondante
     $("#total").html(total);
   
  }

function afficheInfos(xmlpizzas,numPizza)
{
     // on récupère la valeur de la valeur "vegetarienne"
     var veget=getElement(xmlpizzas,"v_pizzas","numPizza",numPizza,"vegetarienne");
     var nouvelle =getElement(xmlpizzas,"v_pizzas","numPizza",numPizza,"new");
     
     // test et modification du contenu des variables
     if(veget=="0")
         {
            veget="Non";
         }
         else
         {
             veget="Oui"
         }

         if(nouvelle=="0")
         {
            nouvelle="Non";
         }
         else
         {
             nouvelle="Oui"
         }
         
         // construction de la chaine de caractères
         var chaine = "";
         chaine+="Végétarienne : "+veget;
         chaine+="<br />";

         chaine+="Nouveau : "+nouvelle;
         chaine+="<br />";
 
         return chaine;     
}

// fonction qui retourne une chaine après qu'on ait parsé  la chaine xml
function afficheIngredients()
{
    // parcours des éléments de la chaine xml
    chaine="";
    xmlingred=getXmlBase("v_ingredpizza","numPizza",numPizza);
 
    $(xmlingred).find("v_ingredpizza").each
    (
        function()
        {
            nom = $(this).find("nomIngredient").text();
             chaine+=nom;
            chaine+="<br />";

        }
    );
   return chaine;
}
function calcul(numTarif)
{
     // on récup le n° de la taille dans la liste des tailles
     numTaille=$("#listetailles").val();
     // on récup les couts des pizzas en filtrant sur le code tarif
     xmlcout=getXmlBase("couter","numTarif",numTarif);
     prix= getElement(xmlcout,"couter","numTaille",numTaille,"prix");
     return prix;
     
}

function montantGlobal(lesprix)
{
    total=0;
    for(var i=0;i<lesprix.length;i++)
    {
        total+=lesprix[i];
    }
    return total;
}

function affichePanier(lignes)
{
    $("#divpanier").html("");
    for(var i=0;i<lignes.length;i++)
    {
          chaine=lignes[i];    
        $("#divpanier").append(chaine);

    }   
}