<?php
require_once("config.php");
require_once("./lib/database.php");
require_once("./lib/paziente.php");


    $tmppaziente = new paziente();

    $tmppaziente->nome          =     $_REQUEST["nome"];
    $tmppaziente->cognome       =     $_REQUEST["cognome"];
    $tmppaziente->email         =     $_REQUEST["email"];
    $tmppaziente->datadinascita   =     $_REQUEST["datadinascita"];
    $tmppaziente->sesso       =     $_REQUEST["sesso"];
    $tmppaziente->nazionalita =     $_REQUEST["nazionalita"];
    $tmppaziente->n_cellulare =     $_REQUEST["n_cellulare"];
    $tmppaziente->cod_fiscale   =     $_REQUEST["cod_fiscale"];
    $idvisitaselezionata = $_REQUEST["visita"];


 ?>

 <?php include('header.php');
 include('navbar.php');?>

 <div class="postreg">
   <?php
   if($tmppaziente->setnewpaziente()){
     echo "La registrazione di un nuovo paziente ha avuto esito positivo";

      //prelevo l'ultimo id del $idpaziente
      $idlastpatient = $tmppaziente->GestLastPatientID();

      //effettuare una prenotazione di questo paziente per l'id visita indicato nel menù a tendina
      $sql ="INSERT INTO visita ( tipo )
        VALUES    ('".$this->tipo."',
          )";
          $result = $myconnection->query($sql);
          return $idvisitaselezionata;
     }


   else{
     echo "La registrazione Ha avuto esito positivo";
   }
     ?>
 </div>
 <?php include('footer.php');?>
