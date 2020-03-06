<?php



/** project/distripar/reports/rep.imprimir_chq.php    ( db_form )
 * 
 * @author 	ycube RAD Plus ( automatically Generated ) 
 * 
 */ 

$Obj->name = "imprimir_chq";
$Obj->alias = "Impresion Cheque";
$Obj->ndoc = "Impresion Cheque";
$Obj->help = "Impresion Cheque";
$Obj->query = "'SELECT id, chq_cta, chq_num, chq_estado, DATE_FORMAT(chq_fecha_emis,|{%d-%m-%Y}|) AS chq_fecha_emis,DATE_FORMAT(chq_fecha_pag,|{%d-%m-%Y}|) AS chq_fecha_pag, chq_valor, chq_benef, chq_bco, chq_moneda, chq_mot_anul, chq_ref, chq_conc, chq_formato, chq_mult, chq_tipo, concepto_princ, empr, depar, compl, montof, chq_monto_utili, chq_compl, chq_x_factura, chq_ci  FROM  bcos_chq  WHERE chq_cta = '+el['chq_cta']+' AND chq_num  = '+el['chq_num']+' '";
$Obj->del_prg = "";
$Obj->del_tpl = "";
$Obj->tot = "";
$Obj->pre_sub = "";
$Obj->cond_sub = "";
$Obj->subtotal = "";
$Obj->dec_sub = "";
$Obj->cond_tot = "";
$Obj->total = "";
$Obj->dec_tot = "";
$Obj->query_end = "";


?>
