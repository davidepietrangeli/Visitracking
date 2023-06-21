<?php
/**
 * Configuration file
 */

//Amministratore dell'applicazione
$cfg['administrator'] = "salvatoredacri15@gmail.com";

//Path assoluti delle directory dell'applicazione
$DIR = str_replace("\\","/",dirname(__FILE__));
$cfg['home'] = $DIR;
$cfg['lib'] = $DIR . "/lib";
$cfg['images'] = $DIR . "/img";
$cfg['theme'] = $DIR . "/theme/mytheme";
unset($DIR);

//Path relativi alla DOCUMENT_ROOT delle directory dell'applicazione
$server =  "http://localhost";
$ROOT = $_SERVER['DOCUMENT_ROOT'];
$cfg['webhome'] =   $server .   substr($cfg['home'], strlen($ROOT));
$cfg['weblib'] =    $server .   substr($cfg['lib'], strlen($ROOT));
$cfg['webimages'] = $server .   substr($cfg['images'], strlen($ROOT));
$cfg['webtheme'] =   $server .   substr($cfg['theme'], strlen($ROOT));
unset($ROOT);

//Parametri del database
$cfg['dbname'] = "mydb";
$cfg['dbhost'] = "127.0.0.1:3306";
$cfg['dbuser'] = "root";
$cfg['dbpwd'] = "nonteladico";



//Altri settaggi e opzioni
$cfg['debug'] = false;
$cfg['lang'] = 'it';


?>
