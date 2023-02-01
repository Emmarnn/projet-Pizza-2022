<?php
class produit
{
private $id;
private $nom;
private $taille;
private $prix;

public function produit ($id,$nom,$prix,$taille)	       //Constructeur
 {
  $this->id= $id;
  $this->nom=$nom;
  $this->prix=$prix;
  $this->taille =$taille;
 }
 
 public function GetId()	// retourne la valeur de l'attribut
 {
  return $this->id;
 }
 
 public function GetNom()
 {
  return $this->nom;
 }
 
 public function GetPrix()
 {
  return $this->prix;
 }
 
 public function GetTaille()
 {
	return $this->taille;
 }
 
 public function SetTaille($taille)	//affecte la nouvelle valeur � l'attribut $qt
 {
  	$this->taille=$taille;
 }
 
 }
////////////////////////////////////////////////////////////////////////
class panier
{
 private $LesProduits;
 
 public function panier()
 {
	 $this->LesProduits= array();
 }
 
 public function GetProduit($index)   //retourne un �l�ment du panier
 {
  $produit = $this->LesProduits[$index];
  return $produit;
 }
 
 public function NbChoix()
 {
     return count($this->LesProduits);	//nombre d'�l�ments
 }
 
 public function ExisteId($id)	//indique si le produit existe ou non dans le panier
  {
     $trouve=false;
    if($this->NbChoix()>0)		
    {
     $i=0;
     while($i<$this->NbChoix() and $trouve==false)
       {
	   $prod = $this->GetProduit($i);	
	   if($prod->GetId()==$id)
	       $trouve=true;	  
	       else $i++;	  
       }
    }
    return $trouve;
 }
  
  public function AjouterProduit($id,$nom,$prix,$taille)
  {
  // dans cet exemple on a fix� � 10 le maximum de choix dans le panier
   	 if($this->NbChoix()<10 && $this->ExisteId($id)==false)	 // on n'ajoute pas deux fois un produit existant
   	 {
           $produit = new produit($id,$nom,$prix,$taille);		 
           $this->LesProduits[]=$produit;	
          }
  }
  
  public function SupprimerProduit($index)
  {
   	 unset($this->LesProduits[$index]); // supprime l'�l�ment � la position $index
	 $this->LesProduits= array_values($this->LesProduits); // restitue le tableau r�index� ( sans trous)
  }
  
  public function ModifierTaille($index, $taille)
  {
   	 $this->LesProduits[$index]->SetTaille($taille);	
  }


public function MontantGlobal()
  {
  $total=0;
    for($i=0;$i<$this->NbChoix();$i++)
       {
	  $prod = $this->GetProduit($i);
	  $total+=$prod->getPrix();	  
       }
       return $total;
  }
}

?>
