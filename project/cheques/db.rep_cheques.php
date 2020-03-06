<?php
$Obj->name = "rep_cheques";
$Obj->alias = "Reporte de Cheques";
$Obj->help = "Reporte de Cheques";
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
        F_NAME_ => "banco",
        F_ALIAS_ => "Banco:",
        F_HELP_ => "Banco",
        F_TYPE_ => "select_list",
        F_RELTABLE_ => "bcos",
        F_SHOWFIELD_ => "b_cod,b_nombre",
        F_ORD_ => "4",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "cuenta",
        F_ALIAS_ => "Cuenta:",
        F_HELP_ => "Cuenta:",
        F_TYPE_ => "dynamic_select_list",
        F_DSL_ => "banco.hasChanged()",
        F_RELTABLE_ => "bcos_ctas",
        F_SHOWFIELD_ => "cta_num,concat(cta_nombre,|{-}|,cta_moneda)",
        F_FILTER_ => "' cta_bco =  |{'+banco.get()+'}| '", 
		F_INLINE_ => "1",
        F_ORD_ => "8",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "estado",
        F_ALIAS_ => "Estado",
        F_HELP_ => "Estado",
        F_TYPE_ => "select_list",
        F_OPTIONS_ => "Emitido,Abierto,Anulado,%",
        F_NODB_ => "1",
        F_ORD_ => "10",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "desde",
        F_ALIAS_ =>"Emision Desde",
        F_HELP_ => "Emision desde",
        F_TYPE_ => "date",
        F_NODB_ => "1",
        F_ORD_ => "40", 
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "hasta",
        F_ALIAS_ => "Emision Hasta",
        F_HELP_ => "Emision hasta",
        F_TYPE_ => "date",
        F_NODB_ => "1",
		F_INLINE_ => "1",
        F_ORD_ => "50", 
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));
		
$Obj->Add(
    array(
        F_NAME_ => "pago_desde",
        F_ALIAS_ =>"Pago Desde",
        F_HELP_ => "Pago desde",
        F_TYPE_ => "date",
        F_NODB_ => "1",
        F_ORD_ => "40", 
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "pago_hasta",
        F_ALIAS_ => "Pago Hasta     ",
        F_HELP_ => "Pago hasta",
        F_TYPE_ => "date",
        F_NODB_ => "1",
		F_INLINE_ => "1",
        F_ORD_ => "50", 
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));		
		
$Obj->Add(
    array(
        F_NAME_ => "buscar",
        F_ALIAS_ => "Buscar Prov.",
        F_HELP_ => "Buscar",
        F_TYPE_ => "text",
        F_LENGTH_ => "24",
        F_NODB_ => "1",
        F_ORD_ => "88",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "prov_ruc",
        F_ALIAS_ => "",
        F_HELP_ => "Proveedor",
        F_TYPE_ => "dynamic_select_list",
        F_DSL_ => "buscar.hasChanged()",
        F_RELTABLE_ => "mnt_prov",
        F_SHOWFIELD_ => "prov_nombre,''",
        F_FILTER_ => "'prov_nombre like |{'+buscar.get()+'%}| '",
		F_OPTIONS_ => "%",
        F_LENGTH_ => "20",
		F_INLINE_ => "1",
        F_NODB_ => "1",
        F_ORD_ => "91", 
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));		
		
$Obj->Add(
    array(
        F_NAME_ => "concepto",
        F_ALIAS_ => "Concepto",
        F_HELP_ => "Concepto",
        F_TYPE_ => "text",
        F_LENGTH_ => "47",
        F_NODB_ => "1",
        F_ORD_ => "92",
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
        F_ORD_ => "300",
         
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
