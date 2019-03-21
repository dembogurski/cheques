<?php
$Obj->name = "bcos_chq_mov";
$Obj->alias = "Movimiento de Cheques";
$Obj->help = "Movimentación de Cheques";
$Obj->copy_from = "";
$Obj->Inheritance = "";
$Obj->File = "bcos_chq";
$Obj->Filter = "";
$Obj->Sort = "chq_bco,chq_cta,chq_num";
$Obj->p_insert = "";
$Obj->p_change = "";
$Obj->p_delete = "";
$Obj->Zebra = "white,lightblue";
$Obj->Noedit = "";
$Obj->NoInsert = "";
$Obj->Limit = "50";
$Obj->Add(
    array(
        F_NAME_ => "chq_cta",
        F_ALIAS_ => "Cuenta",
        F_HELP_ => "Cuenta",
        F_TYPE_ => "text",
        F_LENGTH_ => "20",
        F_BROW_ => "1",
        F_REQUIRED_ => "1",
        F_ORD_ => "10",
        C_CHANGE_ => "false",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_bco",
        F_ALIAS_ => "Banco",
        F_HELP_ => "Banco",
        F_TYPE_ => "text",
        F_LENGTH_ => "4",
        F_ORD_ => "20",
        F_INLINE_ => "1",
        C_VIEW_ => "false",
        C_CHANGE_ => "false",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_moneda",
        F_ALIAS_ => "Moneda",
        F_HELP_ => "Moneda utilizada",
        F_TYPE_ => "text",
        F_LENGTH_ => "4",
        F_BROW_ => "1",
        F_ORD_ => "30",
        F_INLINE_ => "1",
        C_CHANGE_ => "false",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_hoy",
        F_ALIAS_ => "Fecha actual",
        F_HELP_ => "Fecha actual",
        F_TYPE_ => "text",
        F_MAKE_QUERY_ => "1",
        F_QUERY_ => "'SELECT DATE_FORMAT(LEFT( NOW(),10),|{%Y%m%d}|)'",
        F_QUERY_REF_ => "chq_hoy.firstSQL",
        F_NODB_ => "1",
        F_ORD_ => "34",
        C_VIEW_ => "false",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_num",
        F_ALIAS_ => "Numero",
        F_HELP_ => "Numero del cheque",
        F_TYPE_ => "text",
        F_LENGTH_ => "20",
        F_BROW_ => "1",
        F_REQUIRED_ => "1",
        F_ORD_ => "40",
        C_CHANGE_ => "false",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_estado",
        F_ALIAS_ => "Estado",
        F_HELP_ => "Estado",
        F_TYPE_ => "select_list",
        F_OPTIONS_ => "Emitido,Abierto,Anulado",
        F_LENGTH_ => "15",
        F_BROW_ => "1",
        F_ORD_ => "50",
        F_INLINE_ => "1",
        C_SHOW_ => "operation!=INSERT_",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_fecha_emis",
        F_ALIAS_ => "Fecha Emision",
        F_HELP_ => "Fecha Emision",
        F_TYPE_ => "date",
        F_MAKE_QUERY_ => "1",
        F_QUERY_ => "'SELECT get_date(|{'+chq_fecha_emis.getDate()+'}|)'",
        F_QUERY_REF_ => "chq_fecha_emis.firstSQL&& chq_estado.get()=='Emitido'&&chq_estado.hasChanged()",
        F_BROW_ => "1",
        F_ORD_ => "60",
        C_VIEW_ => "chq_estado.get()!='Abierto'",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "__diffdate",
        F_ALIAS_ => "Diff Fechas",
        F_HELP_ => "Diff Fechas",
        F_TYPE_ => "formula",
        F_LENGTH_ => "4",
        F_NODB_ => "1",
        F_ORD_ => "65",
        F_INLINE_ => "1",
        C_SHOW_ => "chq_estado.get()!='Abierto'",
        C_VIEW_ => "false",
        F_FORMULA_ => "diffDate( chq_fecha_emis.getDate() ,'2009-03-31') ",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_fecha_pag",
        F_ALIAS_ => "Fecha Pago",
        F_HELP_ => "Fecha de pago del cheque",
        F_TYPE_ => "date",
        F_MAKE_QUERY_ => "1",
        F_QUERY_ => "'SELECT get_date(|{'+chq_fecha_pag.getDate()+'}|)'",
        F_QUERY_REF_ => "chq_fecha_pag.firstSQL&& chq_estado.get()=='Emitido'&&chq_estado.hasChanged()",
        F_BROW_ => "1",
        F_ORD_ => "70",
        F_INLINE_ => "1",
        C_VIEW_ => "chq_estado.get()!='Abierto'",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "__diffdate2",
        F_ALIAS_ => "Diff Fechas",
        F_HELP_ => "Diff Fechas",
        F_TYPE_ => "formula",
        F_LENGTH_ => "4",
        F_NODB_ => "1",
        F_ORD_ => "75",
        F_INLINE_ => "1",
        C_SHOW_ => "chq_estado.get()!='Abierto'",
        C_VIEW_ => "false",
        F_FORMULA_ => "diffDate( chq_fecha_pag.getDate() ,'2009-03-31') ",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_valor",
        F_ALIAS_ => "Valor",
        F_HELP_ => "Valor del cheque",
        F_TYPE_ => "text",
        F_LENGTH_ => "15",
        F_DEC_ => "0",
        F_BROW_ => "1",
        F_ORD_ => "80",
        C_VIEW_ => "chq_estado.get()!=''",
        C_CHANGE_ => "chq_estado.get()=='Emitido'&&operation==CHANGE_",
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
        F_NAME_ => "new_prov",
        F_ALIAS_ => "Registrar",
        F_HELP_ => "Registrar",
        F_TYPE_ => "select_list",
        F_OPTIONS_ => "No,Si",
        F_NODB_ => "1",
        F_ORD_ => "89",
        F_INLINE_ => "1",
        C_VIEW_ => "prov_ruc.get()==''",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "prov_form",
        F_ALIAS_ => "Registrar Proveedor",
        F_HELP_ => "Registrar Proveedor",
        F_TYPE_ => "subform",
        F_LINK_ => "db.proveedores",
		F_OPTIONS_ => "'prov_cod > 0'",
        F_SEND_ => "buscar.get()",
        F_NODB_ => "1",
        F_ORD_ => "90",
        C_SHOW_ => "new_prov.get()=='Si' && prov_ruc.get()==''",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "prov_ruc",
        F_ALIAS_ => "Seleccione",
        F_HELP_ => "Proveedor",
        F_TYPE_ => "dynamic_select_list",
        F_DSL_ => "buscar.hasChanged()",
        F_RELTABLE_ => "mnt_prov",
        F_SHOWFIELD_ => "prov_nombre,''",
        F_FILTER_ => "'prov_nombre like |{'+buscar.get()+'%}| '",
        F_LENGTH_ => "20",
        F_NODB_ => "1",
        F_ORD_ => "91",
        C_CHANGE_ => "chq_estado.get()=='Emitido'&&operation==CHANGE_",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "nombre_prov",
        F_ALIAS_ => "nombre_prov",
        F_HELP_ => "nombre_prov",
        F_TYPE_ => "formula",
        F_LENGTH_ => "60",
        F_NODB_ => "1",
        F_ORD_ => "92",
        C_VIEW_ => "false",
        F_FORMULA_ => " prov_ruc.get()",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_benef",
        F_ALIAS_ => "Orden de ",
        F_HELP_ => "Beneficiario",
        F_TYPE_ => "text",
        F_MAKE_QUERY_ => "1",
        F_QUERY_ => "'select '+nombre_prov.getStr()",
        F_QUERY_REF_ => "nombre_prov.hasChanged()",
        F_LENGTH_ => "60",
        F_ORD_ => "98",
        C_CHANGE_ => "true",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_mens",
        F_ALIAS_ => "Mensaje de error",
        F_HELP_ => "Mensaje de error",
        F_TYPE_ => "text",
        F_NODB_ => "1",
        F_ORD_ => "100",
        C_SHOW_ => "operation==INSERT_",
        C_VIEW_ => "false",
        F_POSVAL_ => "false",
        F_MESSAGE_ => "'No se puede insertar cheques por esta opción!'",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "__disableAccept",
        F_ALIAS_ => "Inhabilita Accept",
        F_HELP_ => "Inhabilita Accept",
        F_TYPE_ => "formula",
        F_NODB_ => "1",
        F_ORD_ => "170",
        C_SHOW_ => "__diffdate.getVal()<1||__diffdate2.getVal()<1||operation==CHANGE_",
        C_VIEW_ => "false",
        F_FORMULA_ => "disableAcceptButton()",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "__enableAccept",
        F_ALIAS_ => "Enable Accept button",
        F_HELP_ => "Enable Accept button",
        F_TYPE_ => "formula",
        F_NODB_ => "1",
        F_ORD_ => "180",
        C_SHOW_ => "__diffdate.getVal()>0&&__diffdate2.getVal()>0&&operation!=SHOW_ && chq_valor.getVal() != 0",
        C_VIEW_ => "false",
        F_FORMULA_ => "enableAcceptButton()",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_compl",
        F_ALIAS_ => "Documentos",
        F_HELP_ => "Complemento Informacion complementaria",
        F_TYPE_ => "text",
        F_MULTI_ => "1",
        F_LENGTH_ => "1024",
        F_ORD_ => "190",
        C_VIEW_ => "chq_estado.get()!='Abierto'",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_forma",
        F_ALIAS_ => "Forma:",
        F_HELP_ => "Forma",
        F_TYPE_ => "select_list",
        F_OPTIONS_ => "Cruzado,Al Portador",
        F_NODB_ => "1",
        F_ORD_ => "200",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_ord_impr",
        F_ALIAS_ => "                Imprimir Cheque               ",
        F_HELP_ => "Imprimir",
        F_TYPE_ => "report",
        F_REPORT_ => "rep.imprimir_chq",
        F_NODB_ => "1",
        F_ORD_ => "210",
        F_INLINE_ => "1",
        C_SHOW_ => "  chq_estado.get()!='Abierto' && __diffdate.getVal()>0&&__diffdate2.getVal()>0&&operation!=SHOW_ && chq_valor.getVal() != 0 ",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "chq_mot_anul",
        F_ALIAS_ => "Motivo Anulación",
        F_HELP_ => "Motivo de Anulación",
        F_TYPE_ => "text",
        F_LENGTH_ => "60",
        F_BROW_ => "1",
        F_ORD_ => "216",
        C_VIEW_ => "chq_estado.get()=='Anulado'",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "__disableDel",
        F_ALIAS_ => "Inhabilita boton de borrar",
        F_HELP_ => "Inhabilita boton de borrar",
        F_TYPE_ => "formula",
        F_NODB_ => "1",
        F_ORD_ => "220",
        C_VIEW_ => "false",
        F_FORMULA_ => " disableDeleteButton() ",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

?>
