<?php
/** project/distripar/reports/rep.cheques.php    ( db_form )
 * 
 * @author 	ycube RAD Plus ( automatically Generated ) 
 * 
 */ 

$Obj->name = "cheques";
$Obj->alias = "Reporte de Cheques";
$Obj->ndoc = "Reporte de Cheques";
$Obj->help = "Reporte de Cheques";
$Obj->query = "'SELECT  chq_num AS NroCheque, DATE_FORMAT( chq_fecha_emis,|{%d-%m-%Y}|) AS Fecha_Emision , DATE_FORMAT( chq_fecha_pag,|{%d-%m-%Y}|) AS FechaPago, chq_benef AS OrdenDe, chq_valor AS Valor, chq_tipo AS Tipo, chq_compl AS Doc,chq_estado AS Estado, chq_mot_anul AS MotAnul   FROM bcos_chq WHERE chq_bco =  '+el['banco']+' '";
$Obj->del_prg = "";
$Obj->del_tpl = "";
$Obj->tot = "1";
$Obj->pre_sub = "";
$Obj->cond_sub = "endConsult";
$Obj->subtotal = "Valor";
$Obj->dec_sub = "0";
$Obj->cond_tot = "";
$Obj->total = "";
$Obj->dec_tot = "";
$Obj->query_end = "";
?>
