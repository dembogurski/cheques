<?php
/** data.menu__.base.php	Principal    ( data_form )
 * 
 * @author 	ycube RAD Plus ( automatically Generated ) 
 * 
 */ 

$Obj->alias = "Rad Plus";
$Obj->doc = "Principal";
$Obj->help = "Principal menu";
$Obj->Add(
    array(
        F_NAME_ => "archivo",
        F_ALIAS_ => "Archivo",
        F_HELP_ => "Archivo",
        F_TYPE_ => "header",
        R_TABLE_ => "",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "parametros",
        F_ALIAS_ => "Parametros",
        F_HELP_ => "Lista de Parametros Globales",
        F_TYPE_ => "menu",
        R_TABLE_ => "archivo",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "db.parametros",
        F_FILTER_ => "",
        G_SHOW_ => "1"));

$Obj->Add(
    array(
        F_NAME_ => "usuarios",
        F_ALIAS_ => "Funcionarios",
        F_HELP_ => "Lista de Funcionarios (Usuarios del Sistema)",
        F_TYPE_ => "menu",
        R_TABLE_ => "archivo",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "db.usuarios",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "empresas",
        F_ALIAS_ => "Empresas",
        F_HELP_ => "Lista de Empresas y o Sucursales",
        F_TYPE_ => "menu",
        R_TABLE_ => "archivo",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "db.empresas",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "monedas",
        F_ALIAS_ => "Monedas",
        F_HELP_ => "Definicion de Monedas",
        F_TYPE_ => "menu",
        R_TABLE_ => "archivo",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "db.caja_monedas",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "bcos",
        F_ALIAS_ => "Bancos",
        F_HELP_ => "Bancos",
        F_TYPE_ => "header",
        R_TABLE_ => "",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "bancos",
        F_ALIAS_ => "Bancos",
        F_HELP_ => "Bancos",
        F_TYPE_ => "menu",
        R_TABLE_ => "bcos",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "db.bcos",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "prov",
        F_ALIAS_ => "Proveedores",
        F_HELP_ => "Proveedores",
        F_TYPE_ => "header",
        R_TABLE_ => "",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "proveedores",
        F_ALIAS_ => "Proveedores",
        F_HELP_ => "Proveedores",
        F_TYPE_ => "menu",
        R_TABLE_ => "prov",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "db.proveedores",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "reportes",
        F_ALIAS_ => "Reportes",
        F_HELP_ => "Reportes Varios",
        F_TYPE_ => "header",
        R_TABLE_ => "",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "rep_cheques",
        F_ALIAS_ => "Reporte de Cheques",
        F_HELP_ => "Reporte de Cheques",
        F_TYPE_ => "menu",
        R_TABLE_ => "reportes",
        F_OPER_ => "20_ Consult",
        F_LINK_ => "db.rep_cheques",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "autonumericos",
        F_ALIAS_ => "Numeraciones",
        F_HELP_ => "Numeracion de Documentos",
        F_TYPE_ => "menu",
        R_TABLE_ => "archivo",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "db.autonum__",
        F_FILTER_ => "",
        G_SHOW_ => "1"));

$Obj->Add(
    array(
        F_NAME_ => "cuentas",
        F_ALIAS_ => "Cuentas",
        F_HELP_ => "Cuentas",
        F_TYPE_ => "menu",
        R_TABLE_ => "bcos",
        F_OPER_ => "1_ Browse",
        F_LINK_ => "db.bcos_ctas",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "impresion_chq",
        F_ALIAS_ => "Impresion Cheques",
        F_HELP_ => "Impresion Cheques",
        F_TYPE_ => "menu",
        R_TABLE_ => "bcos",
        F_OPER_ => "20_ Consult",
        F_LINK_ => "db.filtro_cheques",
        F_FILTER_ => "",
        G_SHOW_ => "2"));

?>
