<?php
$Obj->name = "filtro_cheques";
$Obj->alias = "Filtro Cheques";
$Obj->help = "Filtro Cheques";
$Obj->copy_from = "";
$Obj->Inheritance = "";
$Obj->File = "tmp";
$Obj->Filter = "";
$Obj->Sort = "";
$Obj->p_insert = "1";
$Obj->p_change = "1";
$Obj->p_delete = "";
$Obj->Zebra = "white,lightblue";
$Obj->Noedit = "1";
$Obj->NoInsert = "1";
$Obj->Limit = "";
$Obj->Add(
    array(
        F_NAME_ => "__lock_unlock",
        F_ALIAS_ => "Bloquea el boton Insert/Accept ",
        F_HELP_ => "Bloquea el boton Insert/Accept",
        F_TYPE_ => "formula",
        F_NODB_ => "1",
        F_ORD_ => "6",
        C_VIEW_ => "false",
        F_FORMULA_ => "disableAcceptButton() ",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "banco",
        F_ALIAS_ => "Banco:",
        F_HELP_ => "Banco",
        F_TYPE_ => "select_list",
        F_RELTABLE_ => "bcos",
        F_SHOWFIELD_ => "b_cod,b_nombre",
        F_FILTER_ => "' b_estado = |{Activo}| '",
        F_ORD_ => "10",
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
        F_BROW_ => "1",
        F_ORD_ => "20",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "nro_chq",
        F_ALIAS_ => "Nro Cheque",
        F_HELP_ => "Nro Cheque",
        F_TYPE_ => "text",
        F_NODB_ => "1",
        F_ORD_ => "40",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "estado",
        F_ALIAS_ => "Estado",
        F_HELP_ => "Estado",
        F_TYPE_ => "select_list",
        F_OPTIONS_ => "Abierto,Emitido,Anulado",
        F_NODB_ => "1",
        F_ORD_ => "60",
        F_INLINE_ => "1",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "tipo",
        F_ALIAS_ => "Tipo",
        F_HELP_ => "Tipo",
        F_TYPE_ => "select_list",
        F_OPTIONS_ => "Al Dia,Diferido",
        F_NODB_ => "1",
        F_ORD_ => "63",
        F_INLINE_ => "1",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "cant",
        F_ALIAS_ => "Cant.",
        F_HELP_ => "Cant.",
        F_TYPE_ => "text",
        F_MAKE_QUERY_ => "1",
        F_QUERY_ => "'SELECT COUNT(*) FROM bcos_chq WHERE chq_estado = '+estado.getStr()+' AND chq_cta =  '+cuenta.getStr()+' AND chq_tipo =  '+tipo.getStr()+' '",
        F_QUERY_REF_ => "estado.hasChanged() || cuenta.hasChanged()  || tipo.hasChanged() ",
        F_LENGTH_ => "6",
        F_BROW_ => "1",
        F_NODB_ => "1",
        F_ORD_ => "66",
        F_INLINE_ => "1",
        C_CHANGE_ => "false",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

$Obj->Add(
    array(
        F_NAME_ => "cheques",
        F_ALIAS_ => "Listado de Cheques",
        F_HELP_ => "Listado de Cheques",
        F_TYPE_ => "subform",
        F_OPTIONS_ => "'chq_cta='+cuenta.getStr()+' and chq_estado = '+estado.getStr()+' and chq_tipo like '+tipo.getStr()+'  and chq_num like concat(|{%}|,|{'+nro_chq.get() +'}|) '",
        F_LINK_ => "db.bcos_chq_mov",
        F_SEND_ => "cuenta.get()",
        F_NODB_ => "1",
        F_ORD_ => "70",
        G_SHOW_ => "2",
        G_CHANGE_ => "2"));

?>
