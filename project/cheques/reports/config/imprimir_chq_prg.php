<?php

/** Report prg file (imprimir_chq) 
 *  
 *  Dynamically created by ycube plus RAD
 *  
 *  USE THIS FILE TO PERSONALIZE A PROGRAM SIDE OF YOUR REPORT
 *  ==========================================================
 */  
 
//header("Content-type: text/javascript; charset=iso-8859-1");	
header("Content-type: text/javascript; charset=iso-utf-8");	

// THIS IS YOUR FIRST QUERY:

$cuenta = $sup['chq_cta'];
$banco = $sup['chq_bco'];
$chq_num = $sup['chq_num'];
$estado = $sup['chq_estado'];
$benef = $sup['chq_benef'];
$valor = $sup['chq_valor'];
$chq_moneda = $sup['chq_moneda'];

$chq_forma = $sup['chq_forma'];

$chq_fecha_emis = $sup['chq_fecha_emis'];
$chq_compl = $sup['chq_compl'];
$chq_fecha_pag = $sup['chq_fecha_pag'];
$Q0 = $DB;

 

$update = "UPDATE bcos_chq SET chq_estado = '$estado',chq_fecha_emis = '$chq_fecha_emis',chq_fecha_pag = '$chq_fecha_pag', chq_benef = '$benef',
           chq_valor = $valor, chq_compl = '$chq_compl'  WHERE chq_bco = $banco AND chq_cta = '$cuenta' AND chq_num  = '$chq_num'  ";
		   
$Q0->Query( $update );	

$config_sql = "SELECT clave,valor FROM parametros WHERE descrip = 'config_cheques'";
$Q0->Query( $config_sql );	
while( $Q0->NextRecord() ){
   $clave =  $Q0->Record['clave'];
   $margen =  $Q0->Record['valor'];
   $T->Set( "conf_$clave", $margen );
}
$T->Set( "forma", $chq_forma );  

$query0 = "SELECT id, chq_cta, chq_num, chq_estado, DATE_FORMAT(chq_fecha_emis,'%d-%m-%y') AS chq_fecha_emis,DATE_FORMAT(chq_fecha_pag,'%d-%m-%y') AS chq_fecha_pag, chq_valor, chq_benef, chq_bco, chq_moneda, chq_mot_anul, chq_ref, chq_conc, chq_formato, chq_mult, chq_tipo, concepto_princ, empr, depar, compl, montof, chq_monto_utili, chq_compl, chq_x_factura, chq_ci  FROM  bcos_chq  WHERE chq_bco = $banco AND chq_cta = '$cuenta' AND chq_num  = '$chq_num'; ";

$monto_en_letras = extense($valor);

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
$rayas = ".-----";
if($benef == ""){
	$rayas = "&nbsp;";
}
$T->Set( 'rayas', $rayas );

//Define a Old Values Variables
$old['id'] = '';
$old['chq_cta'] = '';
$old['chq_num'] = '';
$old['chq_estado'] = '';
$old['chq_fecha_emis'] = '';
$old['chq_fecha_pag'] = '';
$old['chq_valor'] = '';
$old['chq_benef'] = '';
$old['chq_bco'] = '';
$old['chq_moneda'] = '';
$old['chq_mot_anul'] = '';
$old['chq_ref'] = '';
$old['chq_conc'] = '';
$old['chq_formato'] = '';
$old['chq_mult'] = '';
$old['chq_tipo'] = '';
$old['concepto_princ'] = '';
$old['empr'] = '';
$old['depar'] = '';
$old['compl'] = '';
$old['montof'] = '';
$old['chq_monto_utili'] = '';
$old['chq_compl'] = '';
$old['chq_x_factura'] = '';
$old['chq_ci'] = '';

// Making a rows of consult
while( $Q0->NextRecord() ){

    // Define a elements
    $el['id'] = $Q0->Record['id'];
    $el['chq_cta'] = $Q0->Record['chq_cta'];
    $el['chq_num'] = $Q0->Record['chq_num'];
    $el['chq_estado'] = $Q0->Record['chq_estado'];
    $el['chq_fecha_emis'] = $Q0->Record['chq_fecha_emis'];
    $el['chq_fecha_pag'] = $Q0->Record['chq_fecha_pag'];
    $el['chq_valor'] = $Q0->Record['chq_valor'];
    $el['chq_benef'] = $Q0->Record['chq_benef'];
    $el['chq_bco'] = $Q0->Record['chq_bco'];
    $el['chq_moneda'] = $Q0->Record['chq_moneda'];
    $el['chq_mot_anul'] = $Q0->Record['chq_mot_anul'];
    $el['chq_ref'] = $Q0->Record['chq_ref'];
    $el['chq_conc'] = $Q0->Record['chq_conc'];
    $el['chq_formato'] = $Q0->Record['chq_formato'];
    $el['chq_mult'] = $Q0->Record['chq_mult'];
    $el['chq_tipo'] = $Q0->Record['chq_tipo'];
    $el['concepto_princ'] = $Q0->Record['concepto_princ'];
    $el['empr'] = $Q0->Record['empr'];
    $el['depar'] = $Q0->Record['depar'];
    $el['compl'] = $Q0->Record['compl'];
    $el['montof'] = $Q0->Record['montof'];
    $el['chq_monto_utili'] = $Q0->Record['chq_monto_utili'];
    $el['chq_compl'] = $Q0->Record['chq_compl'];
    $el['chq_x_factura'] = $Q0->Record['chq_x_factura'];
    $el['chq_ci'] = $Q0->Record['chq_ci'];
    
    $tipo = $el['chq_tipo'];
    $moneda = $el['chq_moneda'];
    
    $dec = 2;
    $espacio_moneda = "";
    if($moneda == "Gs"){
        $dec = 0;
    } else{
      $espacio_moneda = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
    }
    
    $arr_emis = explode("-",$el['chq_fecha_emis']);    
    $arr_pago = explode("-",$el['chq_fecha_pag']);
	
	$sp0 = "";
	for($i = 0;$i < 10;$i++){
	    $sp0 .="&nbsp;";	
	}
	$sp1 = "";
	for($i = 0;$i < 14;$i++){
	    $sp1 .="&nbsp;";	
	}	 
    
    $fecha_emision = $arr_emis[0]."$sp0".$arr_emis[1]."$sp1".$arr_emis[2];
    $fecha_pago =    $arr_pago[0]."$sp0".$arr_pago[1]."$sp1".$arr_pago[2];
    
    if($tipo == 'Diferido'){
        $T->Set('query0_chq_fecha_pag', $fecha_pago);
    } else {
        $T->Set('query0_chq_fecha_pag', "$sp0 $sp1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
    }
    

    // Preparing a template variables
    $T->Set('query0_id', $el['id']);
    $T->Set('query0_chq_cta', $el['chq_cta']);
    $T->Set('query0_chq_num', $el['chq_num']);
    $T->Set('query0_chq_estado', $el['chq_estado']);
    $T->Set('query0_chq_fecha_emis', $fecha_emision);
    
    $T->Set('query0_chq_valor', number_format($valor,$dec, ',', '.'));  
    $T->Set('query0_chq_benef', $el['chq_benef']);
    $T->Set('query0_chq_bco', $el['chq_bco']);
    $T->Set('query0_chq_moneda', $el['chq_moneda']);
    $T->Set('query0_chq_mot_anul', $el['chq_mot_anul']);
    $T->Set('query0_chq_ref', $el['chq_ref']);
    $T->Set('query0_chq_conc', $el['chq_conc']);
    $T->Set('query0_chq_formato', $el['chq_formato']);
    $T->Set('query0_chq_mult', $el['chq_mult']);
    $T->Set('query0_chq_tipo', $el['chq_tipo']);
    $T->Set('query0_concepto_princ', $el['concepto_princ']);
    $T->Set('query0_empr', $el['empr']);
    $T->Set('query0_depar', $el['depar']);
    $T->Set('query0_compl', $el['compl']);
    $T->Set('query0_montof', $el['montof']);
    $T->Set('query0_chq_monto_utili', $el['chq_monto_utili']);
    $T->Set('query0_chq_compl', $el['chq_compl']);
    $T->Set('query0_chq_x_factura', $el['chq_x_factura']);
    $T->Set('query0_chq_ci', $el['chq_ci']);
    
    $T->Set('espacio_moneda',$espacio_moneda);
    $T->Set('letras', $monto_en_letras);

    // Calculating a total

    // Calculating a subtotal

    $T->Show('query0_data_row');
    // Show Subtotal
    if( true ){
        $T->Show('query0_subtotal_row');
        //Reset a Subtotal Variables
    }
    
    //Actualize Old Values Variables
    $old['id'] = $el['id'];
    $old['chq_cta'] = $el['chq_cta'];
    $old['chq_num'] = $el['chq_num'];
    $old['chq_estado'] = $el['chq_estado'];
    $old['chq_fecha_emis'] = $el['chq_fecha_emis'];
    $old['chq_fecha_pag'] = $el['chq_fecha_pag'];
    $old['chq_valor'] = $el['chq_valor'];
    $old['chq_benef'] = $el['chq_benef'];
    $old['chq_bco'] = $el['chq_bco'];
    $old['chq_moneda'] = $el['chq_moneda'];
    $old['chq_mot_anul'] = $el['chq_mot_anul'];
    $old['chq_ref'] = $el['chq_ref'];
    $old['chq_conc'] = $el['chq_conc'];
    $old['chq_formato'] = $el['chq_formato'];
    $old['chq_mult'] = $el['chq_mult'];
    $old['chq_tipo'] = $el['chq_tipo'];
    $old['concepto_princ'] = $el['concepto_princ'];
    $old['empr'] = $el['empr'];
    $old['depar'] = $el['depar'];
    $old['compl'] = $el['compl'];
    $old['montof'] = $el['montof'];
    $old['chq_monto_utili'] = $el['chq_monto_utili'];
    $old['chq_compl'] = $el['chq_compl'];
    $old['chq_x_factura'] = $el['chq_x_factura'];
    $old['chq_ci'] = $el['chq_ci'];
    $firstRow=false;

}

$endConsult = true;
if( true ){
    $T->Show('query0_subtotal_row');
}
// Show total
if( true ){
    $T->Show('query0_total_row');
}
$T->Show('end_query0');				// Ends a Table 

?>
