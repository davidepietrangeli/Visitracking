<?php
require_once("config.php");
require_once("./lib/database.php");

//definizione di classe
class paziente {
  //attributi della classe

   /*QUESTA FUNZIONE VIENE UTILIZZATA PER CREARE UN NUOVO Utente*/
  public $idpaziente;
  public $nome;
  public $cognome;
  public $email;
  public $datadinascita;
  public $sesso;
  public $nazionalita;
  public $n_cellulare;
  public $cod_fiscale;
  //costruttore della classe
  function __construct()
 {
 }

public function setnewpaziente(){
  $myconnection = openconnection();
  $sql = "INSERT INTO paziente ( nome,
    cognome,
    email,
    datadinascita,
    sesso,
    nazionalita,
    n_cellulare,
    cod_fiscale)
    VALUES    ('".$this->nome."',
      '".$this->cognome."',
      '".$this->email."',
      '".$this->datadinascita."',
      '".$this->sesso."',
      '".$this->nazionalita."',
      '".$this->n_cellulare."',
      '".$this->cod_fiscale."'
      )";

if ($myconnection->query($sql) == TRUE) {
   closeconnection($myconnection);
   return true;
   }
   closeconnection($myconnection);
   return false;
}



  public function GestLastPatientID(){
    $myconnection = openconnection();
    $sql = "SELECT LAST_INSERT_ID() as 'id' FROM paziente ";
    $result = $myconnection->query($sql);

    if ($result->num_rows <= 0) {

        return false;
    }

    closeconnection($myconnection);

    return $result[0]["id"];


  }


}
?>
