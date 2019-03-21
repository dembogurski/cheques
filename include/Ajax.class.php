
<?php

/**
 * 
 * RPC calls
 * Doglas A. Dembogurski Feix
 */
require_once("Y_DB.class.php");
$Global['project'] = 'distripar';

class Ajax {

    function __construct() {

        $action = $_REQUEST['action'];
        switch ($action) {

            case 'save_margins': $this->saveMargins();
                break;


            default : $this->error($action);
        }
    }

    function error($action) {
        echo 'ERROR!!! La accion ' . $action . ' ha producido un error pongase en contacto con el administrador!!!';
    }

    function saveMargins() {
        $clave = $_POST['clave'];
        $margins = $_POST['margins'];
        $db = new Y_DB();
        $db->Database =   $Global['project'];  
        $sql = "SELECT clave,valor FROM parametros WHERE clave = '$clave'";
        $db->Query($sql);
        if($db->NumRows()>0){
            $db->Query("UPDATE parametros SET valor = '$margins',descrip = 'config_cheques' WHERE clave = '$clave' ");
        }else{
            $db->Query("INSERT INTO parametros SET clave = '$clave',valor = '$valor',descrip ='config_cheques'");
        }   
        echo "Ok";
    }

}

new Ajax();
?>







