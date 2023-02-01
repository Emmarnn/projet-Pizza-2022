<?php
require("classe_panier.php");
$panier=new panier();
$_SESSION['panier']=$panier;
session_start();

?>