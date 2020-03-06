<?php

/** Report prg file (cheques) 
 *  
 *  Dynamically created by ycube plus RAD
 *  
 *  USE THIS FILE TO PERSONALIZE A PROGRAM SIDE OF YOUR REPORT
 *  ==========================================================
 */  

// ATTENTION: CANCEL THIS BLOCK TO EDIT A FILE 
/*
$T = new Y_Template( $file_tpl ); 
// Superior Variables
$T->Set( 'sup_banco', '1');
$T->Set( 'sup_cuenta', '7084763');
$T->Set( 'sup_estado', 'Emitido');
$T->Set( 'sup_desde', '');
$T->Set( 'sup_hasta', '');
$T->Set( 'sup_pago_desde', '');
$T->Set( 'sup_pago_hasta', '');
$T->Set( 'sup_buscar', '');
$T->Set( 'sup_prov_ruc', '');
 
*/
// ------------------------------------------

// THIS IS YOUR FIRST QUERY:

$banco = $sup['banco'];
$cuenta = $sup['cuenta'];
$estado = $sup['estado'];
$emis_desde = $sup['desde']==''?'2000-01-01':$sup['desde'];
$emis_hasta = $sup['hasta']==''?'2099-01-01':$sup['hasta'];
$pago_desde = $sup['pago_desde']==''?'2000-01-01':$sup['pago_desde'];
$pago_hasta = $sup['pago_hasta']==''?'2099-01-01':$sup['pago_hasta'];
$orden_de = $sup['prov_ruc']==''?'%':$sup['prov_ruc'];

$complemento = $sup['concepto']==''?'%':'%'.$sup['concepto'].'%';

$Q0 = $DB;

$sql_banco = "SELECT b_nombre AS nombre_banco,c.cta_num ,cta_nombre as nombre_cuenta FROM bcos b, bcos_ctas c WHERE b.b_cod = c.cta_bco  AND b.b_cod = $banco  AND cta_num = '$cuenta'";



$Q0->Query( $sql_banco );
$Q0->NextRecord();
$nombre_banco = $Q0->Record['nombre_banco'];
$nombre_cuenta = $Q0->Record['nombre_cuenta'];   
 
$T->Set('banco', $nombre_banco);
$T->Set('cuenta', $cuenta);
$T->Set('nombre_cuenta', $nombre_cuenta);
$T->Set('orden_de', $orden_de);   
$T->Set('desde', flip($emis_desde));   
$T->Set('hasta', flip($emis_hasta));
$T->Set('pago_desde',flip($pago_desde));
$T->Set('pago_hasta',flip($pago_hasta));
 

$query0 = "SELECT  chq_num AS NroCheque, DATE_FORMAT( chq_fecha_emis,'%d-%m-%Y') AS Fecha_Emision , DATE_FORMAT( chq_fecha_pag,'%d-%m-%Y') AS FechaPago, chq_benef AS OrdenDe, chq_valor AS Valor, chq_tipo AS Tipo, chq_compl AS Doc,chq_estado AS Estado, chq_mot_anul AS MotAnul   "
        . "FROM bcos_chq WHERE chq_bco like '$banco' and chq_cta like '$cuenta' and chq_fecha_emis between '$emis_desde' and '$emis_hasta'"
        . "and   chq_fecha_pag between '$pago_desde' and '$pago_hasta' and chq_benef like '$orden_de' and chq_estado like '$estado' and chq_compl like '$complemento'";
 
//echo $query0;
$T->Set( 'time', daytime() );
$T->Set( 'user', $Global['username'] );

$firstRow=true;

$Q0->Query( $query0 );

// Starting a HTML
$T->Show('general_header');			// Principal Header
$T->Show('start_query0');			// Start a Table 
$T->Show('header0');				// Show Header

//Define a  variable
$endConsult = false;
//Define a Total Variables

//Define a Subtotal Variables
$subtotal0_Valor = 0;


//Define a Old Values Variables
$old['NroCheque'] = '';
$old['Fecha_Emision'] = '';
$old['FechaPago'] = '';
$old['OrdenDe'] = '';
$old['Valor'] = '';
$old['Tipo'] = '';
$old['Doc'] = '';
$old['Estado'] = '';
$old['MotAnul'] = '';

// Making a rows of consult
while( $Q0->NextRecord() ){

    // Define a elements
    $el['NroCheque'] = $Q0->Record['NroCheque'];
    $el['Fecha_Emision'] = $Q0->Record['Fecha_Emision'];
    $el['FechaPago'] = $Q0->Record['FechaPago'];
    $el['OrdenDe'] = $Q0->Record['OrdenDe'];
    $el['Valor'] = $Q0->Record['Valor'];
    $el['Tipo'] = $Q0->Record['Tipo'];
    $el['Doc'] = $Q0->Record['Doc'];
    $el['Estado'] = $Q0->Record['Estado'];
    $el['MotAnul'] = $Q0->Record['MotAnul'];

    // Preparing a template variables
    $T->Set('query0_NroCheque', $el['NroCheque']);
    $T->Set('query0_Fecha_Emision', $el['Fecha_Emision']);
    $T->Set('query0_FechaPago', $el['FechaPago']);
    $T->Set('query0_OrdenDe', $el['OrdenDe']);
    $T->Set('query0_Valor', number_format($el['Valor'],0,',','.'));
    $T->Set('query0_Tipo', $el['Tipo']);
    $T->Set('query0_Doc', $el['Doc']);
    $T->Set('query0_Estado', $el['Estado']);
    $T->Set('query0_MotAnul', $el['MotAnul']);

    // Calculating a total

    // Calculating a subtotal
    $subtotal0_Valor += 0 + $el['Valor'];

    $T->Show('query0_data_row');
    // Show Subtotal
    $T->Set('subtotal0_Valor', number_format($subtotal0_Valor,0,',','.'));
    if( $endConsult ){
        $T->Show('query0_subtotal_row');
        //Reset a Subtotal Variables
        $subtotal0_Valor = 0;
    }
    
    //Actualize Old Values Variables
    $old['NroCheque'] = $el['NroCheque'];
    $old['Fecha_Emision'] = $el['Fecha_Emision'];
    $old['FechaPago'] = $el['FechaPago'];
    $old['OrdenDe'] = $el['OrdenDe'];
    $old['Valor'] = $el['Valor'];
    $old['Tipo'] = $el['Tipo'];
    $old['Doc'] = $el['Doc'];
    $old['Estado'] = $el['Estado'];
    $old['MotAnul'] = $el['MotAnul'];
    $firstRow=false;

}

$endConsult = true;
if( $endConsult ){
    $T->Show('query0_subtotal_row');
}
// Show total
if( true ){
    $T->Show('query0_total_row');
}
$T->Show('end_query0');				// Ends a Table 


function flip($date){
    //$dateTime = new DateTime($date);
    //return $dateTime->format('d-m-Y');  
    $separator = '-';	
	$date = explode($separator,$date);
    return $date[2].$separator.$date[1].$separator.$date[0]; 
	
}

?>
