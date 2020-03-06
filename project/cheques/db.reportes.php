<?php
$Obj->name = "reportes";
$Obj->alias = "Reporte Varios";
$Obj->help = "Reporte Varios";
$Obj->copy_from = "";
$Obj->Inheritance = "";
$Obj->File = "tmp";
$Obj->Filter = "";
$Obj->Sort = "";
$Obj->p_insert = "";
$Obj->p_change = "";
$Obj->p_delete = "";
$Obj->Zebra = "white,lightblue";
$Obj->Noedit = "";
$Obj->NoInsert = "";
$Obj->Limit = "";
$Obj->Add(
    array(
        F_NAME_ => "estado",
        F_ALIAS_ => "Estado",
        F_HELP_ => "Estado",
        F_TYPE_ => "select_list",
        F_OPTIONS_ => "Abierto,Emitido,Anulado",
        F_NODB_ => "1",
        F_ORD_ => "10",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "desde",
        F_ALIAS_ =>"Emision desde",
        F_HELP_ => "Emision desde",
        F_TYPE_ => "date",
        F_NODB_ => "1",
        F_ORD_ => "40", 
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "hasta",
        F_ALIAS_ => "Emision hasta",
        F_HELP_ => "Emision hasta",
        F_TYPE_ => "date",
        F_NODB_ => "1",
        F_ORD_ => "50", 
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "vp",
        F_ALIAS_ => "Vista Previa/Impresion",
        F_HELP_ => "Vista Previa/Impresion",
        F_TYPE_ => "select_list",
        F_OPTIONS_ => "Vista Previa,Imprimir",
        F_NODB_ => "1",
        F_ORD_ => "60",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "rep",
        F_ALIAS_ => "Ver Reporte de Cheques",
        F_HELP_ => "Ver Reporte de Cheques",
        F_TYPE_ => "report",
        F_REPORT_ => "rep.cheques",
        F_NODB_ => "1",
        F_ORD_ => "100",
        F_INLINE_ => "1",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

 

$Obj->Add(
    array(
        F_NAME_ => "__lock",
        F_ALIAS_ => "Bloquea el boton Insert/Accept",
        F_HELP_ => "Bloquea el boton Insert/Accept",
        F_TYPE_ => "formula",
        F_NODB_ => "1",
        F_ORD_ => "110",
        C_VIEW_ => "false",
        F_FORMULA_ => "disableAcceptButton()",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

?>
