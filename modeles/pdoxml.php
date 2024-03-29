<?php
class PdoXml
{
    var $connex;
	var $nombase;
	var $tbl;

	public function __construct($server,$user,$mdp,$db) // Constructeur
	{
    // en php, le -> remplace le . java
		$this->connex=new PDO("mysql:host=$server;dbname=$db", $user, $mdp);
		$this->nombase=$db;
	}

	public function Xml($table,$clef,$valeur)
	{
       $table=utf8_encode($table);
	   $req="show columns from ".$table;
	   $resultat= $this->connex->query($req);
	   $colonnes=$resultat->fetchALL(PDO::FETCH_ASSOC);

	   foreach($colonnes as $col)
	   {
	       $this->tbl[]=$col['Field'];
	   }
	   $chaine="<".$this->nombase.">";

	   $req= " select * from ".$table;
	   if($clef!="0")
	   {
	      $req.=" where ".$clef." = '".$valeur."'";
       }

		$resultat= $this->connex->query($req);

	   $resultat->setFetchMode(PDO::FETCH_OBJ);
	   while($ligne=$resultat->Fetch())
	   {
	         $chaine.="<".$table.">";
	         foreach($this->tbl as $nomcol)
			 {
				$valeur=$ligne->$nomcol;
               $valeur=str_replace("œ","oe",$valeur);

			     $chaine.="<".$nomcol.">".utf8_encode($valeur)."</".$nomcol.">";
			 }
			 $chaine.="</".$table.">";
	   }
	   $chaine.="</".$this->nombase.">";
        return ($chaine);
	}
}

?>
