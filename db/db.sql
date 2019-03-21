/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.33-community : Database - distripar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `__autonum__` */

DROP TABLE IF EXISTS `__autonum__`;

CREATE TABLE `__autonum__` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `__autonum__` */

insert  into `__autonum__`(`id`,`name`,`value`) values (1,'prov_cod','1');

/*Table structure for table `ajustes` */

DROP TABLE IF EXISTS `ajustes`;

CREATE TABLE `ajustes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aj_prod` int(11) DEFAULT NULL,
  `aj_fecha` date DEFAULT NULL,
  `aj_hora` varchar(10) DEFAULT NULL,
  `aj_usuario` varchar(60) DEFAULT NULL,
  `aj_inicial` double(10,2) DEFAULT NULL,
  `aj_oper` varchar(50) DEFAULT NULL,
  `aj_ajuste` double(10,2) DEFAULT NULL,
  `aj_final` double(10,2) DEFAULT NULL,
  `aj_signo` varchar(4) DEFAULT NULL,
  `aj_motivo` varchar(150) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ajustes` */

/*Table structure for table `amortizaciones` */

DROP TABLE IF EXISTS `amortizaciones`;

CREATE TABLE `amortizaciones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_fact` int(11) DEFAULT NULL,
  `a_cuota` int(11) DEFAULT NULL,
  `a_fecha` date DEFAULT NULL,
  `a_comp` varchar(100) DEFAULT NULL,
  `a_concepto` int(11) DEFAULT NULL,
  `a_compl` varchar(60) DEFAULT NULL,
  `a_saldo_ant` double(16,2) DEFAULT NULL,
  `a_monto` double(16,2) DEFAULT NULL,
  `a_saldo` double(16,2) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `amortizaciones` */

/*Table structure for table `articulos` */

DROP TABLE IF EXISTS `articulos`;

CREATE TABLE `articulos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) DEFAULT NULL,
  `p_barcode` varchar(30) DEFAULT NULL,
  `p_sector` varchar(60) DEFAULT NULL,
  `p_grupo` varchar(60) DEFAULT NULL,
  `p_tipo` varchar(60) DEFAULT NULL,
  `p_descrip` varchar(64) DEFAULT NULL,
  `p_um` varchar(60) DEFAULT NULL,
  `p_imp` varchar(60) DEFAULT NULL,
  `p_costo_prom` double(16,2) DEFAULT NULL,
  `p_valmin` double(16,2) DEFAULT NULL,
  `p_stock` double(12,2) DEFAULT NULL,
  `p_estado` varchar(12) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `p_descrip` (`p_descrip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `articulos` */

/*Table structure for table `bcos` */

DROP TABLE IF EXISTS `bcos`;

CREATE TABLE `bcos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `b_cod` varchar(10) DEFAULT NULL,
  `b_nombre` varchar(60) DEFAULT NULL,
  `b_direccion` varchar(60) DEFAULT NULL,
  `b_tel` varchar(20) DEFAULT NULL,
  `b_contacto` varchar(60) DEFAULT NULL,
  `b_mail` varchar(40) DEFAULT NULL,
  `b_web` varchar(40) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `bcos` */

insert  into `bcos`(`id`,`b_cod`,`b_nombre`,`b_direccion`,`b_tel`,`b_contacto`,`b_mail`,`b_web`) values (1,'1','REGIONAL S.A.E.C.A.','','','','',''),(2,'2','CONTINENTAL','','','','',''),(3,'3','BBVA','','','','',''),(4,'4','ABN AMRO','','','','',''),(5,'5','AMAMBAY','','','','',''),(6,'6','FAMILIAR','','','','',''),(7,'7','HSBC','','','','',''),(8,'8','SUDAMERIS BANK','','','','',''),(9,'9','INTERBANCO','','','','',''),(10,'10','VISION BANCO','','','','',''),(11,'11','ITAU','','','','',''),(12,'12','CITIBANK','','','','',''),(13,'13','BANCO ATLAS','','','','',''),(14,'14','BANCO RIO','','','','',''),(15,'15','BANCO FAMILIAR S.A.E.C.A.','','','','',''),(16,'16','BANCO NACIONAL DE FOMENTO','','','','',''),(17,'17','BANCO ITAPUA','','','','','');

/*Table structure for table `bcos_cheq_ter` */

DROP TABLE IF EXISTS `bcos_cheq_ter`;

CREATE TABLE `bcos_cheq_ter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chq_ref` varchar(60) DEFAULT NULL,
  `chq_bco` varchar(4) DEFAULT NULL,
  `chq_cta` varchar(20) DEFAULT NULL,
  `chq_num` varchar(60) DEFAULT NULL,
  `chq_benef` varchar(60) DEFAULT NULL,
  `chq_fecha_emis` date DEFAULT NULL,
  `chq_fecha_pag` date DEFAULT NULL,
  `chq_valor` double(15,2) DEFAULT NULL,
  `chq_moneda` varchar(15) DEFAULT NULL,
  `chq_cotiz` int(11) DEFAULT NULL,
  `chq_moneda_ref` double(12,2) DEFAULT NULL,
  `chq_suc` varchar(3) DEFAULT NULL,
  `chq_estado` varchar(15) DEFAULT NULL,
  `chq_mot_anul` varchar(60) DEFAULT NULL,
  `chq_fecha_ins` date DEFAULT NULL,
  `chq_saldo` double(16,2) DEFAULT NULL,
  `chq_trans` varchar(4) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bcos_cheq_ter` */

/*Table structure for table `bcos_chq` */

DROP TABLE IF EXISTS `bcos_chq`;

CREATE TABLE `bcos_chq` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chq_cta` varchar(20) DEFAULT NULL,
  `chq_num` varchar(20) DEFAULT NULL,
  `chq_estado` varchar(15) DEFAULT NULL,
  `chq_fecha_emis` date DEFAULT NULL,
  `chq_fecha_pag` date DEFAULT NULL,
  `chq_valor` int(11) DEFAULT NULL,
  `chq_benef` varchar(60) DEFAULT NULL,
  `chq_bco` varchar(4) DEFAULT NULL,
  `chq_moneda` varchar(4) DEFAULT NULL,
  `chq_mot_anul` varchar(60) DEFAULT NULL,
  `chq_ref` varchar(60) DEFAULT NULL,
  `chq_conc` varchar(60) DEFAULT NULL,
  `chq_formato` varchar(60) DEFAULT NULL,
  `chq_mult` varchar(60) DEFAULT NULL,
  `chq_tipo` varchar(12) DEFAULT NULL,
  `concepto_princ` varchar(83) DEFAULT NULL,
  `empr` varchar(8) DEFAULT NULL,
  `depar` varchar(60) DEFAULT NULL,
  `compl` varchar(40) DEFAULT NULL,
  `montof` double(14,2) DEFAULT NULL,
  `chq_monto_utili` double(14,2) DEFAULT NULL,
  `chq_compl` varchar(1024) DEFAULT NULL,
  `chq_x_factura` varchar(60) DEFAULT NULL,
  `chq_ci` varchar(20) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25039 DEFAULT CHARSET=latin1;

/*Data for the table `bcos_chq` */

/*Table structure for table `bcos_ctas` */

DROP TABLE IF EXISTS `bcos_ctas`;

CREATE TABLE `bcos_ctas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cta_bco` varchar(10) DEFAULT NULL,
  `cta_num` varchar(20) DEFAULT NULL,
  `cta_tipo` varchar(20) DEFAULT NULL,
  `cta_moneda` varchar(10) DEFAULT NULL,
  `cta_saldo` double(20,2) DEFAULT NULL,
  `cta_temp` double(15,2) DEFAULT NULL,
  `cta_ent` varchar(60) DEFAULT NULL,
  `cta_cta_cont` varchar(20) DEFAULT NULL,
  `cta_nombre` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `bcos_ctas` */

/*Table structure for table `bcos_ctas_det` */

DROP TABLE IF EXISTS `bcos_ctas_det`;

CREATE TABLE `bcos_ctas_det` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctd_cta` varchar(20) DEFAULT NULL,
  `ctd_fecha` date DEFAULT NULL,
  `ctd_anterior` double(20,2) DEFAULT NULL,
  `ctd_con` varchar(5) DEFAULT NULL,
  `ctd_n_con` varchar(50) DEFAULT NULL,
  `ctd_compl` varchar(60) DEFAULT NULL,
  `ctd_entrada` double(15,2) DEFAULT NULL,
  `ctd_salida` double(20,2) DEFAULT NULL,
  `ctd_actual` double(20,2) DEFAULT NULL,
  `ctd_doc` varchar(20) DEFAULT NULL,
  `ctd_cmid` varchar(12) DEFAULT NULL,
  `ctd_nro_cobro` varchar(60) DEFAULT NULL,
  `ctd_saldo` double(20,2) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `ctd_doc` (`ctd_doc`),
  KEY `bcos_ctas_det_fecha_asc` (`ctd_fecha`)
) ENGINE=MyISAM AUTO_INCREMENT=163851 DEFAULT CHARSET=latin1;

/*Data for the table `bcos_ctas_det` */

/*Table structure for table `caja` */

DROP TABLE IF EXISTS `caja`;

CREATE TABLE `caja` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cj_ref` varchar(5) DEFAULT NULL,
  `cj_user` varchar(30) DEFAULT NULL,
  `cj_suc` varchar(4) DEFAULT NULL,
  `cj_fecha` date DEFAULT NULL,
  `cj_saldo_ini` double(16,2) DEFAULT NULL,
  `cj_estado` varchar(10) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `caja` */

/*Table structure for table `caja_cambios` */

DROP TABLE IF EXISTS `caja_cambios`;

CREATE TABLE `caja_cambios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cb_fecha` date DEFAULT NULL,
  `cb_moneda` varchar(5) DEFAULT NULL,
  `cb_compra` int(11) DEFAULT NULL,
  `cb_venta` int(11) DEFAULT NULL,
  `cb_ref` varchar(5) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `caja_cambios` */

/*Table structure for table `caja_con` */

DROP TABLE IF EXISTS `caja_con`;

CREATE TABLE `caja_con` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cjc_cod` varchar(3) DEFAULT NULL,
  `cjc_descri` varchar(40) DEFAULT NULL,
  `cjc_compl` varchar(2) DEFAULT NULL,
  `cjc_tipo` varchar(1) DEFAULT NULL,
  `cjc_autom` varchar(2) DEFAULT NULL,
  `cjc_gasto` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `caja_con` */

/*Table structure for table `caja_monedas` */

DROP TABLE IF EXISTS `caja_monedas`;

CREATE TABLE `caja_monedas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_cod` varchar(5) DEFAULT NULL,
  `m_descri` varchar(20) DEFAULT NULL,
  `m_ref` varchar(2) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `caja_monedas` */

insert  into `caja_monedas`(`id`,`m_cod`,`m_descri`,`m_ref`) values (1,'Gs','Guaranies','Si'),(2,'Us','Dolares Americanos','No');

/*Table structure for table `caja_mov` */

DROP TABLE IF EXISTS `caja_mov`;

CREATE TABLE `caja_mov` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cj_ref` varchar(5) DEFAULT NULL,
  `__date` date DEFAULT NULL,
  `__user` varchar(60) DEFAULT NULL,
  `__moneda` varchar(60) DEFAULT NULL,
  `__cotiz` int(11) DEFAULT NULL,
  `monto` double(14,2) DEFAULT NULL,
  `concepto` varchar(6) DEFAULT NULL,
  `compl` varchar(200) DEFAULT NULL,
  `entrada_ref` double(60,2) DEFAULT NULL,
  `salida_ref` double(60,2) DEFAULT NULL,
  `cj_ref_aux` varchar(14) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `caja_mov` */

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_code` int(11) DEFAULT NULL,
  `cat_descrip` varchar(30) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `categorias` */

/*Table structure for table `chq_formatos` */

DROP TABLE IF EXISTS `chq_formatos`;

CREATE TABLE `chq_formatos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chq_cod` int(11) DEFAULT NULL,
  `chq_descrip` varchar(400) DEFAULT NULL,
  `chq_banco` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `chq_formatos` */

insert  into `chq_formatos`(`id`,`chq_cod`,`chq_descrip`,`chq_banco`) values (1,1,'Al la Vista','*'),(2,2,'Diferido','*');

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cli_id` int(11) DEFAULT NULL,
  `cli_ci` varchar(16) DEFAULT NULL,
  `cli_tipo_doc` varchar(60) DEFAULT NULL,
  `cli_nombre` varchar(50) DEFAULT NULL,
  `cli_cat` varchar(60) DEFAULT NULL,
  `cli_limit` int(11) DEFAULT NULL,
  `cli_nro_cta` int(11) DEFAULT NULL,
  `cli_fecha_nac` date DEFAULT NULL,
  `cli_tel` varchar(13) DEFAULT NULL,
  `cli_email` varchar(50) DEFAULT NULL,
  `cli_pais` varchar(60) DEFAULT NULL,
  `cli_dep_estado` varchar(60) DEFAULT NULL,
  `cli_ciudad` varchar(60) DEFAULT NULL,
  `cli_dir` varchar(300) DEFAULT NULL,
  `cli_fecha_ins` date DEFAULT NULL,
  `cli_ventas` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `clientes` */

/*Table structure for table `convenios` */

DROP TABLE IF EXISTS `convenios`;

CREATE TABLE `convenios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conv_cod` varchar(4) DEFAULT NULL,
  `conv_nombre` varchar(50) DEFAULT NULL,
  `conv_tipo` varchar(60) DEFAULT NULL,
  `conv_porc` double(10,6) DEFAULT NULL,
  `conv_dias_acr` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `convenios` */

/*Table structure for table `cuotas` */

DROP TABLE IF EXISTS `cuotas`;

CREATE TABLE `cuotas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_fact` int(11) DEFAULT NULL,
  `c_nro_cuota` int(11) DEFAULT NULL,
  `c_monto` double(14,2) DEFAULT NULL,
  `c_moneda` varchar(4) DEFAULT NULL,
  `c_cotiz` double(8,2) DEFAULT NULL,
  `c_monto_ref` double(16,2) DEFAULT NULL,
  `c_venc` date DEFAULT NULL,
  `c_saldo` double(16,2) DEFAULT NULL,
  `c_suc` varchar(4) DEFAULT NULL,
  `c_estado` varchar(60) DEFAULT NULL,
  `c_entrega` double(16,2) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cuotas` */

/*Table structure for table `def_imp` */

DROP TABLE IF EXISTS `def_imp`;

CREATE TABLE `def_imp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imp_cod` varchar(60) DEFAULT NULL,
  `valor` varchar(8) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `def_imp` */

/*Table structure for table `empresas` */

DROP TABLE IF EXISTS `empresas`;

CREATE TABLE `empresas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_cod` varchar(2) DEFAULT NULL,
  `emp_nombre` varchar(60) DEFAULT NULL,
  `emp_tipo` varchar(60) DEFAULT NULL,
  `emp_ruc` varchar(20) DEFAULT NULL,
  `emp_ciudad` varchar(40) DEFAULT NULL,
  `emp_dir` varchar(60) DEFAULT NULL,
  `emp_tel` varchar(30) DEFAULT NULL,
  `emp_mail` varchar(30) DEFAULT NULL,
  `emp_web` varchar(40) DEFAULT NULL,
  `emp_estado` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `empresas` */

insert  into `empresas`(`id`,`emp_cod`,`emp_nombre`,`emp_tipo`,`emp_ruc`,`emp_ciudad`,`emp_dir`,`emp_tel`,`emp_mail`,`emp_web`,`emp_estado`) values (1,'01','Distribuidora Paraguay','Casa Matriz','','Encarnacion','','','','','Activo'),(2,'02','Grupo Belmac S.A.','Sucursal','','Encarnacion','','','','','Activo');

/*Table structure for table `fact_comp_det` */

DROP TABLE IF EXISTS `fact_comp_det`;

CREATE TABLE `fact_comp_det` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `p_ref` int(11) DEFAULT NULL,
  `p_cod_art` varchar(60) DEFAULT NULL,
  `p_cod` int(11) DEFAULT NULL,
  `p_cod_prov` varchar(24) DEFAULT NULL,
  `p_descri` varchar(70) DEFAULT NULL,
  `p_cant_compra` double(16,2) DEFAULT NULL,
  `p_valor` double(16,2) DEFAULT NULL,
  `p_um` varchar(60) DEFAULT NULL,
  `p_cant_um` varchar(10) DEFAULT NULL,
  `p_compra` double(16,2) DEFAULT NULL,
  `p_estado` varchar(12) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fact_comp_det` */

/*Table structure for table `factura_compra` */

DROP TABLE IF EXISTS `factura_compra`;

CREATE TABLE `factura_compra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_ref` varchar(8) DEFAULT NULL,
  `c_tipo_doc` varchar(60) DEFAULT NULL,
  `c_empr` varchar(2) DEFAULT NULL,
  `c_prov` varchar(5) DEFAULT NULL,
  `c_fecha` date DEFAULT NULL,
  `c_fecha_fac` date DEFAULT NULL,
  `c_factura` varchar(20) DEFAULT NULL,
  `c_moneda` varchar(10) DEFAULT NULL,
  `c_cotiz` int(11) DEFAULT NULL,
  `c_fn` double(12,2) DEFAULT NULL,
  `c_otros` double(12,2) DEFAULT NULL,
  `c_valor_total` double(14,2) DEFAULT NULL,
  `c_porc_rec` double(7,2) DEFAULT NULL,
  `c_estado` varchar(15) DEFAULT NULL,
  `c_tipo` varchar(10) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `factura_compra` */

/*Table structure for table `mnt_prov` */

DROP TABLE IF EXISTS `mnt_prov`;

CREATE TABLE `mnt_prov` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prov_cod` varchar(5) DEFAULT NULL,
  `prov_nombre` varchar(60) DEFAULT NULL,
  `prov_dir` varchar(60) DEFAULT NULL,
  `prov_ciudad` varchar(40) DEFAULT NULL,
  `prov_pais` varchar(40) DEFAULT NULL,
  `prov_tel` varchar(40) DEFAULT NULL,
  `prov_fax` varchar(20) DEFAULT NULL,
  `prov_mail` varchar(80) DEFAULT NULL,
  `prov_web` varchar(40) DEFAULT NULL,
  `prov_contacto` varchar(40) DEFAULT NULL,
  `prov_ruc` varchar(20) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `prov_cod` (`prov_cod`)
) ENGINE=MyISAM AUTO_INCREMENT=308 DEFAULT CHARSET=latin1;

/*Data for the table `mnt_prov` */

/*Table structure for table `p_data` */

DROP TABLE IF EXISTS `p_data`;

CREATE TABLE `p_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `F_NAME_` varchar(60) DEFAULT NULL,
  `F_ALIAS_` varchar(200) DEFAULT NULL,
  `F_HELP_` varchar(200) DEFAULT NULL,
  `F_TYPE_` varchar(60) DEFAULT NULL,
  `F_DSL_` varchar(200) DEFAULT NULL,
  `F_MULTI_` varchar(2) DEFAULT NULL,
  `F_AUTONUM_` varchar(2) DEFAULT NULL,
  `F_OPTIONS_` varchar(200) DEFAULT NULL,
  `F_LINK_` varchar(60) DEFAULT NULL,
  `F_REPORT_` varchar(60) DEFAULT NULL,
  `F_MAKE_QUERY_` varchar(2) DEFAULT NULL,
  `F_QUERY_` varchar(200) DEFAULT NULL,
  `F_QUERY_REF_` varchar(200) DEFAULT NULL,
  `F_SEND_` varchar(200) DEFAULT NULL,
  `F_RELATION_` varchar(60) DEFAULT NULL,
  `F_RELTABLE_` varchar(60) DEFAULT NULL,
  `F_SHOWFIELD_` varchar(60) DEFAULT NULL,
  `F_RELFIELD_` varchar(60) DEFAULT NULL,
  `F_LOCALFIELD_` varchar(60) DEFAULT NULL,
  `F_FILTER_` varchar(100) DEFAULT NULL,
  `F_LENGTH_` varchar(10) DEFAULT NULL,
  `F_DEC_` varchar(5) DEFAULT NULL,
  `F_BROW_` varchar(2) DEFAULT NULL,
  `F_REQUIRED_` varchar(2) DEFAULT NULL,
  `F_UNIQUE_` varchar(2) DEFAULT NULL,
  `F_NODB_` varchar(2) DEFAULT NULL,
  `F_TOTAL_` varchar(2) DEFAULT NULL,
  `F_EXTRA_` varchar(2) DEFAULT NULL,
  `V_DEFAULT_` varchar(200) DEFAULT NULL,
  `C_SHOW_` varchar(200) DEFAULT NULL,
  `C_VIEW_` varchar(200) DEFAULT NULL,
  `C_CHANGE_` varchar(200) DEFAULT NULL,
  `F_PREVAL_` varchar(200) DEFAULT NULL,
  `F_POSVAL_` varchar(200) DEFAULT NULL,
  `F_MESSAGE_` varchar(200) DEFAULT NULL,
  `F_FORMULA_` varchar(200) DEFAULT NULL,
  `G_SHOW_` varchar(200) DEFAULT NULL,
  `G_CHANGE_` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=latin1;

/*Data for the table `p_data` */

insert  into `p_data`(`id`,`F_NAME_`,`F_ALIAS_`,`F_HELP_`,`F_TYPE_`,`F_DSL_`,`F_MULTI_`,`F_AUTONUM_`,`F_OPTIONS_`,`F_LINK_`,`F_REPORT_`,`F_MAKE_QUERY_`,`F_QUERY_`,`F_QUERY_REF_`,`F_SEND_`,`F_RELATION_`,`F_RELTABLE_`,`F_SHOWFIELD_`,`F_RELFIELD_`,`F_LOCALFIELD_`,`F_FILTER_`,`F_LENGTH_`,`F_DEC_`,`F_BROW_`,`F_REQUIRED_`,`F_UNIQUE_`,`F_NODB_`,`F_TOTAL_`,`F_EXTRA_`,`V_DEFAULT_`,`C_SHOW_`,`C_VIEW_`,`C_CHANGE_`,`F_PREVAL_`,`F_POSVAL_`,`F_MESSAGE_`,`F_FORMULA_`,`G_SHOW_`,`G_CHANGE_`) values (1,'aj_prod','Producto','Codigo del Producto','text','','','','','','','','','','','','','','','','','14','0','','','','','','','','','','','','','','','64','64'),(2,'aj_fecha','Fecha','Fecha del Ajuste','date','','','','','','','','','','','','','','','','','','','1','','','','','','thisDate_','','','false','','','','','64','64'),(3,'aj_hora','Hora','Hora del Ajuste','text','','','','','','','1','\'SELECT CURRENT_TIME\'','aj_hora.firstSQL&&operation==INSERT_','','','','','','','','10','','1','','','','','','','','','false','','','','','64','64'),(4,'aj_usuario','Usuario','Usuario','text','','','','','','','','','','','','','','','','','','','1','','','','','','p_user_','','false','','','','','','64','64'),(5,'aj_inicial','Inicial','Existencia Inicial','formula','','','','','','','','','','','','','','','','','10','2','1','','','','','','','','','','','','','sup[\'p_cant\']','64','64'),(6,'aj_oper','Operacion','Operacion','select_list','','','','Aumento en Entrada','','','','','','','','','','','','','50','','1','1','','','','','','','','','','','','','64','64'),(7,'aj_ajuste','Ajuste','Ajuste Efectuado','text','','','','','','','','','','','','','','','','','10','2','1','1','','','','','','','','','','','','','64','64'),(8,'aj_final','Final','Existencia Final','formula','','','','','','','','','','','','','','','','','10','2','1','','','','','','','','','','','','','aj_oper.get().substring(0','',''),(9,'aj_signo','Signo','Signo','formula','','','','','','','','','','','','','','','','','4','','','','','','','','','','','','','','','aj_oper.get().substring(0','',''),(10,'aj_motivo','Motivo de Ajuste','Motivo de Ajuste','text','','1','','','','','','','','','','','','','','','150','','','1','','','','','','','','','','','','','64','64'),(11,'__disableChange','Inhabilita boton de Modificar','Inhabilita boton de Modificar','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableChangeButton()','64','64'),(12,'__disableDel','Inhabilita boton de borrar','Inhabilita boton de borrar','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','',' disableDeleteButton() ','64','64'),(13,'__lock_unlock','Bloquea el boton Insert/Accept ','Bloquea el boton Insert/Accept','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableAcceptButton() ','64','64'),(14,'__lock','Bloquea el boton Insert/Accept','Bloquea el boton Insert/Accept','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableAcceptButton()','2','2'),(15,'codigo','Código','Código del Producto a fraccionar','text','','','','','','','','','','','','','','','','','12','','1','','','','','','','','','','','','','','60','60'),(16,'descrip','Descripcion','Descipcion','text','','','','','','','','','','','','','','','','','100','','1','','','','','','','','','','','','','','64','64'),(17,'p_cant','Cantidad en Stock','Cantidad en Stock','formula','','','','','','','','','','','','','','','','','8','','','','','1','','','','','','','','','','db(\'p_cant\')','60','60'),(18,'suc','Sucursal','Sucursal','select_list','','','','','','','','','','','','empresas','emp_cod','','','','','','','','','','','','','','','','','','','','',''),(19,'sub_ajuste','Ajustes','Ajustes de Mercaderia','subform','','','','\'aj_prod=\'+codigo.getVal()','db.ajustes','','','','','codigo.getVal()','','','','','','','','','1','','','1','','','','codigo.get()!=\'\'&&descrip.get()!=\'__NO DATA__\'','operation!=INSERT_','','','','','','60','60'),(20,'a_fact','Factura','Factura','text','','','','','','','','','','','','','','','','','11','0','1','','','','','','','','','','','','','','2','2'),(21,'a_cuota','Nro Cuota','Nro Cuota','text','','','','','','','','','','','','','','','','','3','0','1','','','','','','','','','','','','','','2','2'),(22,'a_fecha','Fecha','Fecha','date','','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','2','2'),(23,'a_comp','Nro Doc Comprobante','Nro Doc','text','','1','','','','','','','','','','','','','','','100','','1','','','','','','','','','','','','','','2','2'),(24,'a_concepto','Concepto','Concepto','text','','','','','','','','','','','','','','','','','3','0','1','','','','','','','','','','','','','','2','2'),(25,'a_compl','Complemento','Nro Doc Complementario','text','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2','2'),(26,'a_saldo_ant','Saldo Ant','Saldo Anterior','text','','','','','','','','','','','','','','','','','16','2','1','','','','','','','','','','','','','','2','2'),(27,'a_monto','Monto','Monto','text','','','','','','','','','','','','','','','','','16','2','1','','','','','','','','','','','','','','2','2'),(28,'a_saldo','Saldo','Saldo','text','','','','','','','','','','','','','','','','','16','2','1','','','','','','','','','','','','','','2','2'),(29,'p_barcode','Cod. Barras','Cod. Barras','text','','','','','','','','','','','','','','','','','30','','1','','','','','','','','','','','','','','64','64'),(30,'p_sector','Sector','Sector','select_list','','','','','','','','','','','','sector','s_cod','','','','','','','','','','','','','','','','','','','','',''),(31,'p_grupo','Grupo','Grupo','dynamic_select_list','p_sector.hasChanged()','','','','','','','','','','','grupos_x_sector s','','','','\'s_cod=\'+p_sector.getVal()+\' and s.gc_cod = g.g_cod\'','','','','1','','','','','','','false','','','','','','64','64'),(32,'p_tipo','Sub-Grupo','Sub-Grupo','dynamic_select_list','p_grupo.hasChanged()','','','','','','','','','','','tipos_x_grupo gt','','','','\'gt.g_cod =\'+p_grupo.getVal()+\' and gt.ct_cod = t.t_cod \'','','','','1','','','','','','','false','','','','','','64','64'),(33,'p_sectorn','Sector','Sector','text','','','','','','','','','','','1','sector','s_nombre','s_cod','p_sector','','30','','','','','1','','','','','(operation==BROWSE_||operation==SHOW_)&&false','false','','','','','64','64'),(34,'p_grupon','Grupo','Grupo','text','','','','','','','','','','','1','grupo','g_nombre','g_cod','p_grupo','','30','','','','','1','','','','','(operation==BROWSE_||operation==SHOW_)&&false','false','','','','','64','64'),(35,'p_tipon','Tipo','Tipo','text','','','','','','','','','','','1','tipo','t_nombre','t_cod','p_tipo','','38','','','','','1','','','','','(operation==BROWSE_||operation==SHOW_)&&false','false','','','','','64','64'),(36,'p_descrip','Descipcion','Descipcion','text','','','','','','','','','','','','','','','','','64','','1','','','','','','','','','','','','','','64','64'),(37,'p_um','Unid. Medida','Unidad de Medida','dynamic_select_list','p_um_art.hasChanged()','','','','','','','','','','','um','u_cod','','','','','','','','','','','','','','','','','','','','',''),(38,'p_imp','Impuesto','Impuesto','select_list','','','','','','','','','','','','def_imp','imp_cod','','','','','','1','','','','','','\'IVA_10\'','','','','','','','','64','64'),(39,'p_costo_prom','Precio Costo Promedio','Precio Costo Promedio','text','','','','','','','','','','','','','','','','','16','2','1','','','','','','','','operation!=INSERT_','false','','','','','64','64'),(40,'p_valmin','Valor Minimo','Valor Minimo de Venta','text','','','','','','','1','\'SELECT \'+p_costo_prom.getVal()+\' + ((\'+p_costo_prom.getVal()+\' * valor) / 100) FROM parametros WHERE clave = |{porc_val_min}| \'','p_costo_prom.hasChanged()&&p_costo_prom.getVal()>0||(p_valmin.firstSQL&&p_costo_prom.getVal()>0)','','','','','','','','16','2','1','','','','','','','','operation!=INSERT_','false','','','','','64','64'),(41,'p_stock','Stock Global','Stock','text','','','','','','','1','\'SELECT calc_stock(\'+p_cod_art.getStr()+\')\'','operation==INSERT_&&p_cod_art.get()!=\'\'&&p_cod_art.hasChanged()','','','','','','','','12','2','','','','1','','','','','operation==INSERT_','false','','','','','64','64'),(42,'p_estado','Estado','Estado','text','','','','','','','','','','','','','','','','','12','','','','','','','','\'Activo\'','','false','false','','','','','64','64'),(43,'p_set_precios','Definir Precios','Definir Precios','report','','','','','','rep.def_lista_prec','','','','','','','','','','','','','','','','1','','','','','operation!=INSERT_','','','','','','64','64'),(44,'p_cantidades','Cantidades','Cantidades','report','','','','','','rep.stock_x_suc','','','','','','','','','','','','','','','','1','','','','','operation!=INSERT_','','','','','','64','64'),(45,'p_listas','Listas de Precios','Listas de Precios','subform','','','','\'codigo = \'+codigo.getStr()','db.lista_precios','','','','','codigo.get()','','','','','','','','','','','','1','','','','operation==CHANGE_','','','','','','','64','64'),(46,'p_cants','Cantidades','Cantidades','subform','','','','\'codigo = \'+codigo.getStr()','db.stock','','','','','codigo.get()','','','','','','','','','','','','1','','','','false','','','','','','','64','64'),(47,'p_lock','Bloquea el boton Insert/Accept','Bloquea el boton Insert/Accept','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableDeleteButton() ','64','64'),(48,'f_open_sub','Abre Subformulario','Abre Subformulario','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','document.getElementById(|{c_compras_det}|).setAttribute(|{hidden}|','68','68'),(49,'f_upper','Pone en Mayusculas','Pone en Mayusculas','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','  setValue(\'p_descrip\'','',''),(50,'f_doclick','click','Contro click','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','if( !openSubform   ){  document.getElementById(|{cap`c_compras_det`Detalle de la Compra}|).click(); openSubform=true; }else{openSubform=false;  }','68','68'),(51,'f_lockum','click','Contro click','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','if(  operation!=INSERT_  ){  document.getElementById(|{p_um}|).setAttribute(|{disabled}|','',''),(52,'name','Nombre p/Acceso','Nombre de Usuario para acceso al Sistema.','text','','','','','','','','','','','','','','','','','40','','1','','','','','','','','','','','','','','64','64'),(53,'value','Valor','Valor actual del campo','text','','','','','','','','','','','','','','','','','50','','1','','','','','','','','','','','','','','2147483647','2147483647'),(54,'b_cod','Codigo','Codigo del Banco','text','','','','','','','','','','','','','','','','','10','','1','1','','','','','','','','','','','','','64','64'),(55,'b_nombre','Nombre','Nombre del Banco','text','','','','','','','','','','','','','','','','','60','','1','1','','','','','','','','','','','','','64','64'),(56,'b_direccion','Direccion','Direccion','text','','','','','','','','','','','','','','','','','60','','','','','','','','','','','','','','','','64','64'),(57,'b_tel','Telefono','Telefono del Banco','text','','','','','','','','','','','','','','','','','20','','1','','','','','','','','','','','','','','64','64'),(58,'b_contacto','Contacto','Persona normalmente contactada','text','','','','','','','','','','','','','','','','','60','','1','','','','','','','','','','','','','','64','64'),(59,'b_mail','e-mail','e-mail del Banco','text','','','','','','','','','','','','','','','','','40','','','','','','','','','','','','','','','','64','64'),(60,'b_web','Página','Página Web del Banco','text','','','','','','','','','','','','','','','','','40','','','','','','','','','','','','','','','','64','64'),(61,'chq_ref','Referencia','Referencia','text','','','','','','','','','','','','','','','','','','','','1','','','','','','','','operation==INSERT_','','','','','64','64'),(62,'chq_nodel','Inhabilita boton de borrar','Inhabilita boton de borrar','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','true','false','','','','','disableDeleteButton()','64','64'),(63,'chq_bco','Banco','Banco','text','','','','','','','','','','','','','','','','','4','','1','','','','','','','','false','false','','','','','64','64'),(64,'chq_cta','Cuenta','Cuenta','text','','','','','','','','','','','','','','','','','20','','1','1','','','','','','','','','','','','','64','64'),(65,'chq_num','Numero','Numero del cheque','text','','','','','','','','','','','','','','','','','','','1','1','','','','','','','','','','','','','64','64'),(66,'chq_benef','Librador','Beneficiario del Cheque','text','','','','','','','','','','','','','','','','','60','','1','1','','','','','','','','','','','','','64','64'),(67,'chq_fecha_emis','Fecha Emision','Fecha Emision','date','','','','','','','','','chq_fecha_emis.firstSQL','','','','','','','','','','1','','','','','','','','chq_estado.get()!=\'\'','','','','','','64','64'),(68,'chq_fecha_pag','Fecha Limite cobro','Fecha Limite cobro del cheque','date','','','','','','','','','','','','','','','','','','','1','1','','','','','','','','','','','','','64','64'),(69,'chq_valor','Valor','Valor del cheque','text','','','','','','','','','','','','','','','','','15','2','1','1','','','','','','','','','','','','','64','64'),(70,'chq_moneda','Moneda','Moneda utilizada','text','','','','','','','','','','','','','','','','','4','','1','','','','','','','','','false','','','','','64','64'),(71,'chq_cotiz','Cotizacion del dia','Cotizacion del dia','text','','','','','','','1','\'select obtener_cambio(\'+chq_moneda.getStr()+\');\'','chq_moneda.hasChanged()||chq_cotiz.firstSQL','','','','','','','','8','0','','','','','','','','','true','false','','','','','64','64'),(72,'chq_moneda_ref','Monto (Ref) ','Monto (Moneda Referencia) ','formula','','','','','','','','','','','','','','','','','12','2','1','','','','1','','','','','chq_valor.hasChanged()||chq_cotiz.hasChanged()','','','','chq_cotiz.getVal()*chq_valor.getVal()','64','64'),(73,'chq_suc','Suc','Obtiene la localidad del usuario actual','text','','','','','','','1','\'select p.local from p_users p where name =|{\'+p_user_+\'}|\'','chq_suc.firstSQL','','','p_users','','','','','3','','','','','','','','','','true','false','','','','','64','64'),(74,'chq_estado','Estado','Estado','select_list','','','','Pendiente','','','','','','','','','','','','','15','','1','','','','','','','','','','','','','','64','64'),(75,'chq_mot_anul','Motivo de Anulación','Motivo de Anulación','text','','','','','','','','','','','','','','','','','60','','','','','','','','','','chq_estado.get()==\'Anulado\'','','','','','','64','64'),(76,'chq_fecha_ins','Fecha Registro','Fecha Registro','date','','','','','','','','','','','','','','','','','','','','','','','','','thisDate_','','false','false','','','','','64','64'),(77,'chq_saldo','Saldo','Saldo','text','','','','','','','','','','','','','','','','','16','2','1','','','','','','','','','false','','','','','64','64'),(78,'chq_trans','Codigo de Transaccion','Codigo de Transaccion','text','','','','','','','','','','','','','','','','','4','','','','','','','','','','false','','','','','','64','64'),(79,'chq_bco_nom','Banco','Banco','text','','','','','','','','','','','1','bcos','b_nombre','b_cod','chq_bco','','60','','','','','1','','','','','operation==CHANGE_||operation==SHOW_','false','','','','','64','64'),(80,'cj_ref','Nº','Numero de Referencia','text','','','','DB','','','','','','','','','','','','','5','','','','','','','','','','','','','','','','2','2'),(81,'cj_user','Usuario','Código del usuario que registra esta caja','formula','','','','DB','','','','','','','','mnt_func','','','','','30','','1','','','','','','','','','false','','','','p_user_ ','2','2'),(82,'cj_suc','Sucursal','Suc','text','','','','','','','1','\'SELECT local from p_users where name = \'+__user.getStr()','cj_suc.firstSQL&&__user.notEmpty()','','','','','','','','4','','1','','','1','','','','','','false','','','','','2','2'),(83,'cj_fecha','Fecha','Fecha del caja','date','','','','','','','','','','','','','','','','','10','','1','','','','','','thisDate_','','','operation==INSERT_','','','','','2','2'),(84,'cj_saldo_ini','Saldo Inicial','Saldo Inicial','text','','','','','','','','','','','','','','','','','16','2','1','','','','1','','','','','operation==INSERT_','','','','','2','2'),(85,'cj_saldo_final','Saldo Actual o Momentaneo (F5 Actualizar)','Saldo Final o Momentaneo','text','','','','','','','1','\'select sum(m.entrada_ref) - sum(m.salida_ref) from caja c','','','','','','','','','','','','','','','','','','','','','','','','','',''),(86,'cj_estado','Estado','Estado actual','select_list','','','','Abierta','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(87,'cj_movs','Movimientos','Movimientos de Caja','subform','','','','\'cj_ref=\'+cj_ref.getVal()','db.caja_mov','','','','','cj_ref.get()','','','','','','','','','','','','1','','','','','cj_ref.notEmpty()&&operation==CHANGE_&&cj_estado.get()==\'Abierta\' ','','','','','','2','2'),(88,'cj_check','Chequea','Chequea','text','','','','','','','1','\'SELECT COUNT(id) FROM caja WHERE cj_estado = |{Abierta}| and cj_suc = \'+cj_suc.getStr()','cj_check.firstSQL','','','','','','','','10','','','','','1','','','','operation==INSERT_ && cj_suc.notEmpty()','false','','','cj_check.getVal()<1','\'Ya existe Caja Abierta con fecha anterior','','',''),(89,'cb_fecha','Fecha','Fecha del cambio','date','','','','','','','','','','','','','','','','','10','','1','','','','','','thisDate_','','','','','','','','2','2'),(90,'cb_moneda','Moneda','Moneda utilizada','select_list','','','','','','','','','','','','caja_monedas','m_descri','','','\'m_ref!=|{Si}|\'','5','','1','','','','','','','','','','','','','','2','2'),(91,'cb_compra','Compra','Valor para Compra','text','','','','','','','1','\'SELECT cb_compra FROM caja_cambios WHERE cb_fecha<=\'+cb_fecha.getStr()+\' AND cb_moneda=\'+cb_moneda.getStr()+\' ORDER BY cb_fecha DESC\'','cb_moneda.hasChanged()||cb_fecha.hasChanged()','','','','','','','','15','0','1','','','','','','','','','','','','','','2','2'),(92,'cb_venta','Venta','Valor para Venta','text','','','','','','','1','\'SELECT cb_venta FROM caja_cambios WHERE cb_fecha<=\'+cb_fecha.getStr()+\' AND cb_moneda=\'+cb_moneda.getStr()+\' ORDER BY cb_fecha DESC\'','cb_moneda.hasChanged()||cb_fecha.hasChanged()','','','','','','','','15','0','1','','','','','','','','','','','','','','2','2'),(93,'cb_ref','Referencia','Referencia','text','','','','','','','1','\'SELECT m_cod FROM caja_monedas WHERE m_ref=|{Si}| LIMIT 1\'','el[\'cb_ref\'].firstSQL','','','','','','','','5','','1','','','','','','','','','false','','','','','2','2'),(94,'cjc_cod','Codigo','Codigo del concepto','text','','','1','DB','','','','','','','','','','','','','3','','1','','','','','','','','','','','','','','2','2'),(95,'cjc_descri','Descripción','Descripción del concepto','text','','','','','','','','','','','','','','','','','40','','1','','','','','','','','','','','','','','2','2'),(96,'cjc_compl','Complemento','Complemento','select_list','','','','No','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(97,'cjc_tipo','Tipo','Tipo de asiento','select_list','','','','E','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(98,'cjc_autom','Automático','Asiento Automático solo el sistema puede preparar','select_list','','','','No','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(99,'cjc_gasto','Considerado como Gasto','Considerado como Gasto','select_list','','','','No','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(100,'__date','Fecha','Fecha en que se realiza la operación','date','','','','20','','','','','','','','','','','','','10','','1','','','','','','thisDate_','','operation==CHANGE_','false','','','','','2','2'),(101,'__user','Usuario','Codigo del usuario','formula','','','','','','','','','','','','mnt_func','','','','','','','','','','','','','','','false','','','','','p_user_ ','2','2'),(102,'es','Entrada/Salida','Entrada/Salida','select_list','','','','S','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(103,'__moneda','Moneda','Tipo de Moneda ','select_list','','','','','','','','','','','','caja_monedas','m_cod','','','','','','','','','','','','','','','','','','','','',''),(104,'__cotiz','Cotizacion','Cotizacion del dia','text','','','','','','','1','\'select obtener_cambio(\'+__moneda.getStr()+\');\'','__moneda.hasChanged()||__cotiz.firstSQL','','','','','','','','8','0','1','','','','','','1','','','','','','','','2','2'),(105,'monto','Monto','Monto','text','','','','','','','','','','','','','','','','','14','2','1','1','','','','','','','','','','','','','2','2'),(106,'monto_m_ref','Monto Ref','Monto Ref','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','true','','','','','monto.getVal()*__cotiz.getVal()','2','2'),(107,'busc_conc','Buscar Concepto','Buscar Concepto','text','','','','','','','','','','','','','','','','','16','','','','','1','','','','','','','','','','','2','2'),(108,'concepto','Concepto','Concepto','dynamic_select_list','busc_conc.hasChanged()','','','','','','','','','','','caja_con','cjc_cod','','','','','','','','','','','','','','','','','','','','',''),(109,'compl','Complemento (Facturas Documentos)','Complemento','text','','1','','','','','','','','','','','','','','','200','','','','','','','','','','','','','','','','2','2'),(110,'entrada_ref','Entrada Ref','Entrada En mondeda de Referencia','formula','','','','DB','','','','','','','','','','','','','','2','1','','','','1','','','','false','','','','','if(es.get()==\'E\'){monto.getVal()*__cotiz.getVal()}else{0}','2','2'),(111,'salida_ref','Salida Ref','Salida En mondeda de Referencia','formula','','','','DB','','','','','','','','','','','','','','2','1','','','','1','','','','false','','','','','if(es.get()==\'S\'){monto.getVal()*__cotiz.getVal()}else{0}','2','2'),(112,'__lockmsg','( ! )','','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','',' sup[\'cj_estado\']==\'Cerrada\'','','','','','if(sup[\'cj_estado\']==\'Cerrada\'){ \'Caja Cerrada!!!\' } ','2','2'),(113,'accept','Aceptar','Aceptar','proc','','','','','','','','\'SELECT caja_ins_aciento(\'+cj_ref.getVal()+\'','','','','','','','','','','','','','','','','','','','','','','','','','',''),(114,'__msg','( ! ) Atencion','( ! ) Atencion','formula','','','','','','','','','','','','','','','','','60','','','','','1','','','','c_estado.get()==\'Cerrada\'','','','','','','\'ATENCION! Una vez cerrada la Factura no debera Reeditarla\'','64','64'),(115,'__reload','Recargar','Recargar','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','accept.get()','false','','','','','setTimeout(\'window.location.reload()\'','',''),(116,'m_cod','Codigo','Codigo de la moneda','text','','','','','','','','','','','','','','','','','5','','1','','','','','','','','','','','','','','2','2'),(117,'m_descri','Descripcion','Descripcion de la Moneda','text','','','','','','','','','','','','','','','','','20','','1','1','','','','','','','','','','','','','2','2'),(118,'m_ref','Referencia','Si es la Unidad Referencial','select_list','','','','No','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(119,'cj_ref_aux','Ref. Aux','Ref. Aux','text','','','','','','','','','','','','','','','','','14','','','','','','','','','','false','','','','','','2','2'),(120,'cat_code','Código de Categoria','Código de Categoria','text','','','','','','','','','','','','','','','','','1','0','1','1','','','','','','','','','','','','','64','64'),(121,'cat_descrip','Descripción','Descripción','text','','','','','','','','','','','','','','','','','30','','1','1','','','','','','','','','','','','','64','64'),(122,'cli_id','ID','Identificador de Cliente','text','','','1','','','','','','','','','','','','','','8','0','','','','','','','','','','','','','','','2','2'),(123,'cli_ci','Nro Cédula o R.U.C.','Nro Cédula del Cliente o R.U.C.','text','','','','','','','','','','','','','','','','','16','','1','','','','','','','','','','','','','','2','2'),(124,'cli_tipo_doc','Tipo Doc','C.I. Paraguay','select_list','','','','C.I.','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','64','64'),(125,'cli_verif','Verificacion de Cliente','Verificacion','text','','','','','','','1','\'select count(cli_ci) from clientes where cli_ci =\'+cli_ci.getStr()+\' and cli_tipo_doc=\'+cli_tipo_doc.getStr()','cli_ci.hasChanged()||cli_tipo_doc.hasChanged() ','','','','','','','','20','','','','','1','','','','','false','','','','','','2','2'),(126,'cli_msgc','Mensaje','Mensaje','formula','','','','','','','','','','','','','','','','','80','','','','','1','','','','cli_verif.getVal()>0','','','','','','if(cli_verif.getVal()>0){\'( ! ) Nro C.I. R.U.C. Ya Existe en la Base de Datos!!!\' }else{\'Ok\'}','2','2'),(127,'cli_nombre','Nombre y Apellido','Nombre y Apellido del Cliente','text','','','','','','','','','','','','','','','','','50','','1','','','','','','','','','','','','','','2','2'),(128,'cli_cat','Categoría','Categoría del Cliente','select_list','','','','%','','','','','','','','categorias','cat_code','','','','','','','','','','','','','','','','','','','','',''),(129,'cli_limit','Limite de Credito','Limite de Credito','text','','','','','','','','','','','','','','','','','14','0','','','','','','','','','','','','','','','2','2'),(130,'cli_nro_cta','Nº de Cuenta Corriente','Nº de Cuenta Corriente del cliente','text','','','','','','','','','','','','','','','','','15','0','','','','','','','','','','','','','','','2','2'),(131,'cli_fecha_nac','Fecha Nacimiento','Fecha Nacimiento','date','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2','2'),(132,'cli_tel','Telefono/s','Telefono/s','text','','','','','','','','','','','','','','','','','13','','1','','','','','','','','','','','','','','2','2'),(133,'cli_email','Email','Email','text','','','','','','','','','','','','','','','','','50','','','','','','','','','','','','','','','','2','2'),(134,'cli_pais','Pais','Pais','select_list','','','','Paraguay','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(135,'cli_dep_estado','Departamento/Estado','Departamento/Estado','text','','','','','','','','','','','','','','','','','60','','','','','','','','','','','','','','','','2','2'),(136,'cli_ciudad','Ciudad','Ciudad','text','','','','','','','','','','','','','','','','','60','','','','','','','','','','','','','','','','2','2'),(137,'cli_dir','Dirección','Dirección','text','','1','','','','','','','','','','','','','','','300','','','','','','','','','','','','','','','','2','2'),(138,'cli_fecha_ins','Fecha Alta','Fecha Alta','date','','','','','','','','','','','','','','','','','','','','','','','','','thisDate_','','false','false','','','','','2','2'),(139,'cli_ventas','Ventas','Ventas (Para mejor Indice)','text','','','','','','','','','','','','','','','','','12','0','1','','','','','','','','false','','','','','','64','64'),(140,'cli_disableDel','Inhabilita boton de borrar','Inhabilita boton de borrar','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableDeleteButton()','2','2'),(141,'cli_lock','Bloquea el boton Insert/Accept','Bloquea el boton Insert/Accept','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','cli_verif.getVal()>0','false','','','','','disableAcceptButton()','2','2'),(142,'cli_unlock','Desbloquea el boton Insert/Accept','Desbloqueael boton Insert/Accept','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','cli_verif.getVal()<1','false','','','','','enableAcceptButton()','2','2'),(143,'conv_cod','Codigo de Convenio','Codigo de Convenio','text','','','','','','','','','','','','','','','','','4','','1','','','','','','','','','','','','','','64','64'),(144,'conv_nombre','Convenio','Nombre del Convenio','text','','','','','','','','','','','','','','','','','50','','1','','','','','','','','','','','','','','64','64'),(145,'conv_tipo','Tipo','Tipo de Convenio','select_list','','','','Tarjeta de Credito','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','64','64'),(146,'conv_porc','Porsentaje','Porsentaje','text','','','','','','','','','','','','','','','','','10','6','1','','','','','','','','','','','','','','64','64'),(147,'conv_dias_acr','Dias p/acreditacion','Dias p/acreditacion','text','','','','','','','','','','','','','','','','','4','0','1','','','','','','','','','','','','','','64','64'),(148,'c_lock','Lock','Lock','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableDeleteButton()','64','64'),(149,'c_busc','Buscar Cliente','Buscar Cliente','text','','','','','','','','','','','','','','','','','20','','1','','','','','','','','','','','','','','64','64'),(150,'c_cli_cod','Cliente','Cliente','dynamic_select_list','c_busc.hasChanged()','','','%','','','','','','','','clientes','cli_id','','','','','','','','','','','','','','','','','','','','',''),(151,'c_factura','Factura','Factura de compra','text','','','','','','','','','','','','','','','','','20','','1','1','','','','','','','','operation==INSERT_','','','','','64','64'),(152,'c_estado','Estado','Estado de la compra','select_list','','','','Abierta','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(153,'c_cuotas','Cuotas','Cuotas Pendientes','subform','','','','\'c_fact=\'+c_factura.getVal()+\' and c_estado like |{\'+c_estado.get()+\'}|\'','db.cuotas_cob','','','','','c_factura.getVal()','','','','','','','','','','','','1','','','','c_factura.getVal()>0','','','','','','','64','64'),(154,'desde','Fecha desde','Fecha desde','date','','','','','','','','','','','','','','','','','','','','','','1','','','thisDate_','','','','','','','','2','2'),(155,'hasta','Fecha hasta','Fecha hasta','date','','','','','','','','','','','','','','','','','','','','','','1','','','thisDate_','','','','','','','','2','2'),(156,'tipo','Tipo de Reporte','Tipo de Reporte','select_list','','','','Historial de Credito','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(157,'estado','Estado','Estado','select_list','','','','Abierto,Emitido,Anulado','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','64','64'),(158,'vp','Vista Previa/Impresion','Vista Previa/Impresion','select_list','','','','Vista Previa','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(159,'rep','Ver Reporte de Movimientos de Caja','Ver Reporte en Forma de Vista Previa','report','','','','','','rep.mov_caja','','','','','','','','','','','','','','','','1','','','','','','','','','','','2','2'),(160,'rep_p','Reporte de Porcentajes Contado Vs Credito','Reporte de Porcentajes Contado Vs Credito','report','','','','','','rep.porc_cont_cred','','','','','','','','','','','','','','','','1','','','','tipo.get()==\'Porcentaje Contado Vs Credito\'','','','','','','','64','64'),(161,'c_fact','Factura','Factura','text','','','','','','','','','','','','','','','','','11','0','1','','','','','','','','','','','','','','64','64'),(162,'c_nro_cuota','Nro Cuota','Nro Cuota','text','','','','','','','','','','','','','','','','','3','0','1','','','','','','','','','','','','','','64','64'),(163,'c_monto','Monto','Monto','text','','','','','','','','','','','','','','','','','14','2','1','','','','','','','','','','','','','','96','96'),(164,'c_moneda','Moneda','Moneda utilizada para la compra','select_list','','','','','','','','','','','','caja_monedas','m_descri','','','','10','','1','1','','','','','','','','','','','','','64','64'),(165,'c_cotiz','Cotizacion','Cotizacion del día','text','','','','','','','1','\'select obtener_cambio(\'+c_moneda.getStr()+\');\'','c_moneda.hasChanged()','','','','','','','','8','0','','','','','','','','c_moneda.get()!=\'\'','','c_moneda.get()!=\'G$\'','','','','','64','64'),(166,'c_monto_ref','Monto Gs','Monto Gs','text','','','','','','','','','','','','','','','','','16','2','1','','','','','','','','','','','','','','64','64'),(167,'c_venc','Vencimiento','Vencimiento','date','','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','64','64'),(168,'c_saldo','Saldo','Saldo','text','','','','','','','','','','','','','','','','','16','2','1','','','','','','','','','','','','','','64','64'),(169,'c_suc','Suc','Suc','text','','','','','','','','','','','','','','','','','4','','','','','1','','','','','','false','','','','','64','64'),(170,'c_entrega','Entrega Actual','Entrega Actual','text','','','','','','','1','\'SELECT 0\'','c_entrega.firstSQL','','','','','','','','16','2','','','','','','','','','c_forma.get()!=\'\'','','','','','','64','64'),(171,'msg_ok','( ! )','Mensaje','formula','','','','','','','','','','','','','','','','','80','','','','','1','','','','','c_cobrar_cheque.get() || c_contado.get()','','','','','\'La cuota ha sido cobrada con Exito! Recargando en 5 Segundos\'','64','64'),(172,'c_lock2','Lock','Lock','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','operation==CHANGE_','false','','','','','disableAcceptButton()','64','64'),(173,'c_usuario','Usuario','Usuario','formula','','','','','','','','','','','','','','','','','20','','','','','1','','','','','','','','','','p_user_','64','64'),(174,'c_ref_caja','Nro Caja','Nro Caja','text','','','','','','','1','\'SELECT cj_ref FROM caja WHERE cj_estado = |{Abierta}| AND cj_suc = \'+c_suc.getStr()+\' ORDER BY id DESC LIMIT 1\'','c_ref_caja.firstSQL&&c_suc.get()!=\'\'','','','','','','','','6','','','','','1','','','','','false','false','','','','','64','64'),(175,'c_forma','Forma de Cobro','Forma de Cobro','select_list','','','','','','','','','','','','','','','','','','','','','','1','','','','','operation==CHANGE_','','','','','','64','64'),(176,'c_cheques','Cheque Nro:','Cheques Registrados','dynamic_select_list','c_forma.hasChanged()','','','','','','','','','','','bcos_cheq_ter','chq_num','','','\'chq_saldo > 0\'','','','','','','1','','','','c_forma.get()!=\'\'','c_forma.get()==\'Cheque\'','','','','','','64','64'),(177,'c_saldo_chq','Saldo Cheque','Saldo Cheque','text','','','','','','','1','\'SELECT chq_saldo FROM bcos_cheq_ter WHERE chq_num = \'+c_cheques.getStr()','c_cheques.hasChanged()','','','','','','','','16','2','','','','1','','','','','c_forma.get()==\'Cheque\'','','','','','','64','64'),(178,'c_reg_cheque','Registrar un Cheque','Registrar un Cheque','select_list','','','','No','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(179,'c_chq_new','Nuevo Cheque','Nuevo Cheque','subform','','','','\'id > 0\'','db.bcos_cheq_ter','','','','','c_fact.get()','','','','','','','','','','','','1','','','','c_forma.get()==\'Cheque\'&&c_reg_cheque.get()==\'Si\'','','','','','','','2','2'),(180,'c_isuf','ATENCION!','Saldo Cheque Insuficiente','formula','','','','','','','','','','','','','','','','','60','','','','','1','','','','c_forma.get()==\'Cheque\'&&c_entrega.getVal()>0&&(c_entrega.getVal() > c_saldo_chq.getVal() )','','','','','','\'Saldo de Cheque Insuficiente! Ingrese un monto menor!\'','2','2'),(181,'c_cobrar','Cobrar','Cobrar','select_list','','','','No','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(182,'c_contado','   Confirme cobrar en Efectivo   ','Cobrar en Efectivo','proc','','','','','','','','\'select cob_cuota_efectivo(\'+c_fact.getVal()+\'','','','','','','','','','','','','','','1','','','','c_forma.get()==\'Efectivo\'&&c_entrega.getVal()<=c_saldo.getVal()&&c_cobrar.get()==\'Si\'&&c_entrega.getVal()>0  && !c_contado.get()','','','','','','','64','64'),(183,'c_cobrar_cheque','   Confirme cobrar Con Cheque   ','Cobrar en Efectivo','proc','','','','','','','','\'select cob_cuota_cheque(\'+c_fact.getVal()+\'','','','','','','','','','','','','','','','','','','','','','','','','','',''),(184,'__goback','Volver','Volver','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','c_cobrar_cheque.get() || c_contado.get()','false','','','','','window.opener.location.reload(); setTimeout(\'self.close()\'','',''),(185,'style','Style 0','Style 0','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','document.getElementById(|{msg_ok}|).setAttribute(|{style}|','',''),(186,'imp_cod','Codigo Impuesto','Codigo Impuesto','text','','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','64','64'),(187,'valor','Valor','Valor','text','','','','','','','','','','','','','','','','','20','','1','1','','','','','','','','','','','','','64','64'),(188,'emp_cod','Codigo','Codigo de a empresa','text','','','','','','','','','','','','','','','','','2','','1','1','','','','','','','','','','','','','2','2'),(189,'emp_nombre','Nombre','Nombre de la Empresa','text','','','','','','','','','','','','','','','','','60','','1','1','','','','','','','','','','','','','2','2'),(190,'emp_tipo','Tipo','Tipo de Empresa','select_list','','','','Casa Matriz','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(191,'emp_ruc','RUC','RUC de la Empresa','text','','','','','','','','','','','','','','','','','20','','1','','','','','','','','','','','','','','2','2'),(192,'emp_ciudad','Ciudad','Ciudad','text','','','','','','','','','','','','','','','','','40','','1','','','','','','','','','','','','','','2','2'),(193,'emp_dir','Direccion','Direccion de la empresa','text','','','','','','','','','','','','','','','','','60','','1','','','','','','','','','','','','','','2','2'),(194,'emp_tel','Telefono','Telefono de la empresa','text','','','','','','','','','','','','','','','','','30','','1','','','','','','','','','','','','','','2','2'),(195,'emp_mail','Mail','Mail de la empresa','text','','','','','','','','','','','','','','','','','30','','1','','','','','','','','','','','','','','2','2'),(196,'emp_web','Web','Direccion Web','text','','','','','','','','','','','','','','','','','40','','1','','','','','','','','','','','','','','2','2'),(197,'emp_estado','Estado','Estado','select_list','','','','Activo','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(198,'p_ref','Nº Compra','Ref. Compra','text','','','','','','','','','','','','','','','','','8','0','','','','','','','','','false','false','','','','','64','64'),(199,'p_busc','Buscar Articulo','Buscar Articulo','text','','','','','','','','','','','','','','','','','16','','','','','1','','','','','','','','','','','64','64'),(200,'p_cod_art','Articulo','Codigo Articulo y Descripcion','dynamic_select_list','p_busc.hasChanged()','','','','','','','','','','','articulos','codigo','','','','','','','','','','','','','','','','','','','','',''),(201,'p_cod','Lote','Código del Lote','text','','','','','','','1','\'select nro_lote()\'','p_cod.firstSQL&&operation==INSERT_&&p_cod_art.get()!=\'\'','','','','','','','','16','0','','1','','','','','','','operation!=INSERT_','false','','','','','64','64'),(202,'p_cod_prov','Codigo Proveedor','Codigo del Proveedor','text','','','','','','','','','','','','','','','','','24','','','','','','','','','','false','','','','','','64','64'),(203,'p_descri','Descripcion','Descripcion','text','','','','','','','1','\'select p_descrip from articulos where codigo = \'+p_cod_art.getStr()','(p_cod_art.hasChanged()&&operation==INSERT_)||(operation==CHANGE_&&p_descri.firstSQL_)','','','','','','','','70','','1','','','','','','','','','true','','','','','64','64'),(204,'p_um_art','x','Unidad de Medida Principal','text','','','','','','','1','\'select p_um from articulos where codigo = \'+p_cod_art.getStr()','(p_cod_art.hasChanged()&&operation==INSERT_)||(operation==CHANGE_&&p_descri.firstSQL_)','','','','','','','','8','','','','','1','','','','','false','false','','','','','64','64'),(205,'p_cant_compra','Cant. Compra','Cant. Compra','text','','','','','','','','','','','','','','','','','16','2','1','','','','1','','','','','','','','','','64','64'),(206,'p_valor','Valor Compra','Valor Compra','text','','','','','','','','','','','','','','','','','16','2','1','','','','1','','','','','','','','','','64','64'),(207,'p_umult','Mult.','UM de Referencia','text','','','','','','','1','\'SELECT u_mult FROM um WHERE u_cod =\'+p_um.getStr()','p_um.hasChanged()||p_umult.firstSQL','','','','','','','','8','','','1','','1','','','','','p_um.get()!=\'\'','false','','','','','64','64'),(208,'p_cant_um','Cant.Equiv','Cantidad equivalente x UM','formula','','','','','','','','','','','','','','','','','10','','1','1','','','','','','','','','','','','p_cant_compra.getVal()*p_umult.getVal()','64','64'),(209,'p_um_art_info',' ','UM principal del Articulo','formula','','','','','','','','','','','','','','','','','5','','','','','1','','','','','','','','','','p_um_art.get()','64','64'),(210,'p_compra','Precio Compra','Precio Compra','formula','','','','','','','','','','','','','','','','','16','2','1','','','','','','','','','','','','','p_valor.getVal()  / p_cant_um.getVal() ','64','64'),(211,'p_lock_unclock','Control','Control','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','if( p_cod_art.get()!=\'\' && p_cant_um.getVal()> 0 && p_compra.getVal()> 0){ enableAcceptButton() }else{ disableAcceptButton() }','64','64'),(212,'c_ref','N°','Referencia ','text','','','1','','','','','','','','','','','','','','8','','1','','','','','','','','true','false','','','','','64','64'),(213,'c_tipo_doc','Tipo de Documento','Tipo de Documento','formula','','','','','','','','','','','','','','','','','','','','','','','','','','','false','','','','','1','64','64'),(214,'c_empr','Empresa','Empresa','select_list','','','','','','','','','','','','empresas','emp_cod','','','','','','','','','','','','','','','','','','','','',''),(215,'c_prov','Proveedor','Proveedor de los productos','select_list','','','','','','','','','','','','proveedores','prov_cod','','','','','','','','','','','','','','','','','','','','',''),(216,'c_bloq_ins','Bloquea Insertar','Bloquea Insertar','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','operation==INSERT_','false','','','','','disableAcceptButton()','64','64'),(217,'c_prov_nombre','Proveedor','Proveedor','text','','','','','','','','','','','1','proveedores','prov_nombre','prov_cod','c_prov','','40','','1','','','1','','','','','operation==BROWSE_','false','','','','','64','64'),(218,'c_fecha','Fecha actual','Fecha actual','date','','','','','','','','','','','','','','','','','10','','','1','','','','','thisDate_','','','false','','','','','64','64'),(219,'c_fecha_fac','Fecha Factura','Fecha Compra (Factura)','date','','','','','','','','','','','','','','','','','','','1','1','','','','','thisDate_','','','operation!=SHOW_','','','','','64','64'),(220,'c_fn','Flete','Flete Nacional','text','','','','','','','','','','','','','','','','','12','2','','','','','','','','','','operation==INSERT_','','','','','64','64'),(221,'c_otros','Otros Gastos','Otros gastos ','text','','','','','','','','','','','','','','','','','12','2','','','','','','','','','','operation==INSERT_','','','','','64','64'),(222,'c_valor_total','Valor Total','Valor Total','text','','','','','','','','','','','','','','','','','14','2','1','1','','','1','','','','','','','','','','64','64'),(223,'c_porc_rec','Sobre Costo','% de Recargo de Mercaderia','formula','','','','','','','','','','','','','','','','','7','2','','','','','','','','','','c_fn.hasChanged()||c_otros.hasChanged()||c_valor_total.hasChanged()','','','','(( (c_fn.getVal()+c_otros.getVal() ) / c_valor_total.getVal()  )  * 100).toFixed(2)','64','64'),(224,'c_tipo','Forma de Pago','Tipo de Factura o Forma de pago','select_list','','','','Contado','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(225,'c_aut_gen','Generar Factura','Genera una nueva Factura de compra','select_list','','','','No','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(226,'c_gen','Genera Compra','Genera Compra','text','','','','','','','1','\'SELECT gen_compra(\'+c_ref.getVal()+\'','','','','','','','','','','','','','','','','','','','','','','','','','',''),(227,'c_change','Prepara para alteración','Prepara para aleración','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','el[\'c_gen\'].get()==1','false','','','','','operation=CHANGE_','64','64'),(228,'c_st','Tienda/Store Number','Tienda/Store Number','text','','','','','','','','','','','','','','','','','24','','','','','1','','','','','false','','','','','','64','64'),(229,'c_print','Imprimir Factura','Imprimir','report','','','','','','rep.fact_compra','','','','','','','','','','','','','','','','1','','','','','(operation==CHANGE_||c_estado.get()==\'Cerrada\')&&false','','','','','','64','64'),(230,'c_compras_det','Detalle de la Compra','Detalle de la Compra','subform','','','','\'p_ref=\'+c_ref.getVal()+\'\'','db.fact_comp_det','','','','','c_ref.get()','','','','','','','','','','','','1','','','','((c_estado.get()==\'Abierta\'&&operation!=INSERT_) )&&c_valor_total.getVal()>0 ','','','','','','','64','64'),(231,'f_lock','Bloquea el boton Insert/Accept','Bloquea el boton Insert/Accept','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableAcceptButton() ; disableDeleteButton();  ','68','68'),(232,'f_tipo_doc','Tipo Documento','Tipo Documento','formula','','','','','','','','','','','','','','','','','','','','','','','','','','','false','','','','','3','64','64'),(233,'f_nro','Nº Factura','Nº Factura','text','','','','','','','1','\'select gen_venta(\'+f_cli_cod.getVal()+\'','','','','','','','','','','','','','','','','','','','','','','','','','',''),(234,'f_usuario','Usuario','Usuario','formula','','','','','','','','','','','','','','','','','20','','1','','','','','','','','operation==CHANGE_','','','','','p_user_','68','68'),(235,'f_fecha','Fecha','Fecha','date','','','','','','','','','','','','','','','','','','','1','','','','','','thisDate_','','operation==CHANGE_','false','','','','','68','68'),(236,'f_b_cli','Buscar Cliente','Buscar Cliente','text','','','','','','','','','','','','','','','','','20','','','','','1','','','','','','f_gen.get()==\'No\'','','','','','68','68'),(237,'f_cli_cod','Cliente','Cliente','dynamic_select_list','f_b_cli.hasChanged() && operation==CONSULT_','','','1','','','','','','','','clientes','cli_id','','','','','','','','','','','','','','','','','','','','',''),(238,'f_cli_nombre','Cliente','Cliente','text','','','','','','','','','','','1','clientes','cli_nombre','cli_id','f_cli_cod','','50','','1','','','1','','','','','operation!=INSERT_&&operation!=CONSULT_','false','','','','','68','68'),(239,'f_cat','Cat.','Categoria','text','','','','','','','1','\'select cli_cat from clientes where cli_id = \'+f_cli_cod.getVal()','f_cli_cod.hasChanged()','','','','','','','','3','','1','','','','','','1','','','false','','','','','68','68'),(240,'f_edit_cli','Edición','Editar Cliente / Registrar','select_list','','','','','','','','','','','','','','','','','','','','','','1','','','','operation==CONSULT_&&f_cli_cod.getVal()>0','','','','','','','68','68'),(241,'f_cli_form','Editar Cliente','Editar Cliente','subform','','','','\'cli_id =  \'+f_cli_cod.getVal()+ \' and cli_id > 1\'','db.clientes','','','','','if(operation==CONSULT_&&f_edit_cli.get()==\'Editar\'){ f_cli_cod.get() }else{ 1 }','','','','','','','','','','','','1','','','','operation==CONSULT_&&f_edit_cli.get()!=\'\'','','','','','','','68','68'),(242,'f_estado','Estado','Estado','select_list','','','','Abierta','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),(243,'f_ticket','Imprimir Ticket','Imprimir Ticket','report','','','','','','rep.ticket','','','','','','','','','','','','','','','','1','','','','operation==CHANGE_&&f_estado.get()!=\'Anulada\'&&f_estado.get()==\'Abierta\'','','','','','','','96','96'),(244,'f_caja','Ir a Caja','Establecer formas de Pago','report','','','','','','rep.caja','','','','','','','','','','','','','','','','1','','','','operation==CHANGE_&&f_estado.get()!=\'Anulada\'&&f_estado.get()==\'En_caja\'','','','','','','','96','96'),(245,'f_enviar_caja','Enviar a Caja','Enviar a Caja','proc','','','','','','','','\'update factura_venta set f_estado = |{En_caja}| where f_nro = \'+f_nro.getVal()','','','','','','','','','','','','','','1','','','','f_estado.get()==\'En_caja\'','','','','','','','68','68'),(246,'f_presupuesto','Imprimir Presupuesto','Imprimir Presupuesto','report','','','','','','rep.presupuesto','','','','','','','','','','','','','','','','1','','','','operation==CHANGE_&&f_estado.get()==\'Presupuesto\'','','','','','','','68','68'),(247,'f_motivo_anul','Motivo de Anulacion','Motivo de Anulacion','text','','1','','','','','','','','','','','','','','','1024','','','1','','','','','','','f_estado.get()==\'Anulada\'','','','','','','',''),(248,'clave','Clave','Clave','text','','','','','','','','','','','','','','','','','20','','1','1','','','','','','','','','','','','','64','64'),(249,'p_noDel','Bloquea el boton Delete','Bloquea el boton Delete','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableDeleteButton()','64','64'),(250,'prov_cod','Código','Código del Proveedor','text','','','1','DB','','','','','','','','','','','','','8','0','1','1','','','','','','','','','','','','','2','2'),(251,'prov_nombre','Nombre','Nombre del Proveedor','text','','','','','','','','','','','','','','','','','60','','1','1','','','','','','','','','','','','','2','2'),(252,'prov_ruc','RUC','RUC del Proveedor','text','','','','','','','','','','','','','','','','','20','','1','','','','','','','','','','','','','','2','2'),(253,'prov_dir','Dirección','Dirección del Proveedor','text','','','','','','','','','','','','','','','','','60','','','1','','','','','','','','','','','','','2','2'),(254,'prov_ciudad','Ciudad','Ciudad del Proveedor','text','','','','','','','','','','','','','','','','','40','','1','1','','','','','','','','','','','','','2','2'),(255,'prov_tel','Teléfono/S','Teléfono del Proveedor','text','','','','','','','','','','','','','','','','','40','','1','','','','','','','','','','','','','','2','2'),(256,'prov_fax','FAX','FAX del proveedor','text','','','','','','','','','','','','','','','','','20','','','','','','','','','','','','','','','','2','2'),(257,'prov_mail','Mail','Mail (dirección electrónica)','text','','','','','','','','','','','','','','','','','80','','','','','','','','','','','','','','','','2','2'),(258,'prov_web','Web','Dirección Web','text','','','','','','','','','','','','','','','','','40','','','','','','','','','','','','','','','','2','2'),(259,'prov_pais','Pais','Pais','select_list','','','','Paraguay','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2','2'),(260,'prov_contacto','Contacto','Personal de Contacto','text','','','','','','','','','','','','','','','','','40','','','','','','','','','','','','','','','','2','2'),(261,'arqueo_caja','Arqueo de Caja','Ver Arqueo de Caja en Forma de Vista Previa','report','','','','','','rep.arqueo_caja','','','','','','','','','','','','','','','','1','','','','','','','','','','','2','2'),(262,'u_cod','Unidad','Código de la Unidad de Medida','text','','','','','','','','','','','','','','','','','10','','1','1','','','','','','','','','','','','','2','2'),(263,'u_descri','Descripción','Descripción','text','','','','','','','','','','','','','','','','','40','','1','1','','','','','','','','','','','','','2','2'),(264,'u_ref','Referencia','Referencia a Otra Unidad de Medida','select_list','','','','','','','','','','','','um','u_descri','','','\'u_mult=1\'','5','','1','','','','','','','','','','','','','','2','2'),(265,'u_mult','Multiplicador','Multiplicador ','text','','','','','','','','','','','','','','','','','15','3','1','','','','','','','','','','','','','','2','2'),(266,'u_prior','Prioridad','Prioridad en las Listas','text','','','','','','','','','','','','','','','','','4','0','1','','','','','','','','','','','','','','2','2'),(267,'u_nodel','Disable Delete','Disable Delete','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableDeleteButton()','2','2'),(268,'nro_usuario','ID','Codigo de Funcionario','text','','','1','DB','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','64','64'),(269,'nombre','Nombre Completo','Apellido y Nombre Socio','text','','','','','','','','','','','','','','','','','80','','1','','','','','','','','','','','','','','64','64'),(270,'local','Sucursal','Sucursal Donde Trabaja','select_list','','','','','','','','','','','','empresas','emp_cod','','','','','','','','','','','','','','','','','','','','',''),(271,'ci','C.I.','C.I.','text','','','','','','','','','','','','','','','','','20','','1','','','','','','','','','','','','','','64','64'),(272,'tel','Telefonos','Telefonos','text','','','','','','','','','','','','','','','','','60','','1','','','','','','','','','','','','','','64','64'),(273,'email','Email','Email','text','','','','','','','','','','','','','','','','','80','','1','','','','','','','','','','','','','','64','64'),(274,'__nodelete','Disable delete Button','Disable delete Button','formula','','','','','','','','','','','','','','','','','','','','','','1','','','','','false','','','','','disableDeleteButton()','64','64'),(275,'cta_nombre','Nombre de Cuenta','Nombre de la Cuenta','text','','','','','','','','','','','','','','','','','60','','1','','','','','','','','','','','','','','64','64'),(276,'banco','Banco','Banco','select_list','','','','','','','','','','','','bcos','b_cod,b_nombre','','','order by b_cod + 0 asc','','','','','','','','','','','','','','','','','64','64'),(277,'cuenta','Cuenta:','Cuenta:','dynamic_select_list','banco.hasChanged()','','','','','','','','','','','bcos_ctas','cta_num,concat(cta_nombre,|{-}|,cta_moneda)','','','\' codigo =  |{\'+banco.get()+\'}| ','','','1','','','','','','','','','','','','','','64','64'),(278,'nro_chq','Nro Cheque','Nro Cheque','text','','','','','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','64','64'),(279,'nombre_prov','nombre_prov','nombre_prov','formula','','','','','','','','','','','','','','','','','60','','','','','1','','','','','false','','','','',' prov_ruc.get()','64','64'),(280,'cheques','Listado de Cheques','Listado de Cheques','subform','','','','','db.bcos_chq_mov','','','','','cuenta.get()','','','','','','','','','','','','1','','','','','','','','','','','64','64'),(281,'chq_forma','Forma:','Forma','select_list','','','','Cruzado,Al Portador','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','64','64'),(282,'chq_ord_impr','                Imprimir Cheque               ','Imprimir','report','','','','','','rep.imprimir_chq','','','','','','','','','','','','','','','','1','','','','  chq_estado.get()!=\'Abierto\' && __diffdate.getVal()>0&&__diffdate2.getVal()>0&&operation!=SHOW_ && chq_valor.getVal() != 0  && chq_benef.get()!=\'\'','','','','','','','64','64');

/*Table structure for table `p_groups` */

DROP TABLE IF EXISTS `p_groups`;

CREATE TABLE `p_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `obs` varchar(60) DEFAULT NULL,
  `trustee` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `p_groups` */

insert  into `p_groups`(`id`,`name`,`obs`,`trustee`) values (1,'Developer','Plus Developer',2147483647),(2,'Funcionarios','Funcionarios',0),(3,'Administradores','Administradores',2);

/*Table structure for table `p_log` */

DROP TABLE IF EXISTS `p_log`;

CREATE TABLE `p_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` char(4) DEFAULT NULL,
  `month` char(2) DEFAULT NULL,
  `day` char(2) DEFAULT NULL,
  `hour` char(2) DEFAULT NULL,
  `minute` char(2) DEFAULT NULL,
  `second` char(2) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `action` varchar(80) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `obs` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

/*Data for the table `p_log` */

/*Table structure for table `p_proc` */

DROP TABLE IF EXISTS `p_proc`;

CREATE TABLE `p_proc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `descr` varchar(60) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `parameters` varchar(255) DEFAULT NULL,
  `returns` varchar(255) DEFAULT NULL,
  `body` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `p_proc` */

insert  into `p_proc`(`id`,`name`,`descr`,`doc`,`type`,`parameters`,`returns`,`body`) values (1,'caja_ins_aciento','Inserta un Movimiento de Caja','','FUNCTION','ref int,fecha date, user varchar(30), _monto double(14,2),moneda varchar(4),cotiz double(8,2), e_s varchar(4), con int, compl varchar(200),aux varchar(14)','integer','BEGIN\n\nDECLARE entrada_ref DOUBLE(14,2);\nDECLARE salida_ref DOUBLE(14,2);\n\nIF ref = 0 THEN\n  SELECT cj_ref FROM caja WHERE cj_estado = \'Abierta\' order by id desc limit 1 into ref;\nEND IF;\n\nIF  e_s != \'S\'  THEN\n  SET entrada_ref = _monto * cotiz;\n  SET salida_ref = 0;\nELSE\n   SET entrada_ref = 0;\n   SET salida_ref = _monto * cotiz;\nEND IF;\n\nINSERT INTO caja_mov(  cj_ref ,__date,__user,__moneda,__cotiz,monto,concepto,compl, entrada_ref, salida_ref,cj_ref_aux)VALUES(ref,fecha,user, moneda, cotiz,_monto,con, compl, entrada_ref,salida_ref,aux);\n\n\n\nRETURN 1;\nEND'),(3,'_autonum','Autonum','','FUNCTION','variable varchar(20)','integer','BEGIN\n  DECLARE value_ INTEGER;\n  SET value_=0;\n\n  SELECT value+1 FROM __autonum__ WHERE name=variable \n    LIMIT 1 INTO value_;\n  UPDATE __autonum__ SET value=value_ WHEre name=variable;\n\n  RETURN value_;\nEND\n'),(9,'obtener_cambio','obtener_cambio','','FUNCTION','moneda VARCHAR(4)','integer','BEGIN\nDECLARE COTIZ INT;\n\n\nSELECT cb_compra FROM caja_cambios WHERE cb_moneda = moneda ORDER BY id DESC LIMIT 1 INTO COTIZ;\n\nIF  ( COTIZ  IS  NULL ) THEN\n   RETURN 1;\nELSE\n  RETURN COTIZ;\nEND IF;\n\nRETURN COTIZ;\n\nEND'),(10,'gen_compra','Generar Compra','','FUNCTION','ref int,empr varchar(6),prov int,fecha date,fecha_fac date,factura varchar(20),moneda varchar(4),cotiz double(12,2),fn double(12,2),otros double(12,2),valor_total double(12,2),porc_rec double(12,2),tipo varchar(10),tipo_doc_ integer','integer','BEGIN\n\nINSERT INTO \nfactura_compra(c_ref,c_empr,c_prov,c_fecha,c_hora,c_fecha_fac,c_factura,c_moneda,c_cotiz,c_fn,c_otros,c_valor_total,c_porc_rec,c_tipo,c_estado,c_tipo_doc)\n	VALUES(	ref,empr,prov,fecha,current_time,fecha_fac,factura,moneda,cotiz,fn,otros,valor_total,porc_rec,tipo,\'Abierta\',tipo_doc_);\n\n\nRETURN 1;\nEND'),(11,'gen_venta','Genera Venta','','FUNCTION','cli_cod INT, cat INT,usuario VARCHAR(30),tipo_doc int','INT','BEGIN\nDECLARE NRO INT;\nDECLARE SUC VARCHAR(4);\n\nSELECT local FROM p_users WHERE NAME = usuario  INTO SUC;\n\nSELECT  _autonum(\'f_nro\') INTO NRO;\n\nINSERT INTO factura_venta(f_nro,f_cli_cod,f_cat,f_estado,f_fecha,f_usuario,f_suc,f_tipo_doc)\nVALUES	(NRO ,cli_cod,cat, \'Abierta\',CURRENT_DATE,usuario,SUC,tipo_doc);\n\nRETURN NRO;\n\nEND'),(12,'obtener_cambio_venta','obtener_cambio Vemta','','FUNCTION','moneda VARCHAR(4)','integer','BEGIN\nDECLARE COTIZ INT;\n\n\nSELECT cb_venta FROM caja_cambios WHERE cb_moneda = moneda ORDER BY id DESC LIMIT 1 INTO COTIZ;\n\nIF  ( COTIZ  IS  NULL ) THEN\n   RETURN 1;\nELSE\n  RETURN COTIZ;\nEND IF;\n\nRETURN COTIZ;\n\nEND'),(13,'cerrar_venta','Cierra una Venta','','FUNCTION','factura integer, efectivo double(16,2), moneda varchar(4), cotiz double(10,2),voucher varchar(30),conv integer, monto_conv double(16,2),tipo varchar(20)','integer','BEGIN\n\nDECLARE TMP INTEGER;\nDECLARE SUC VARCHAR(6);\n\nSELECT f_suc FROM factura_venta WHERE f_nro = factura INTO SUC;\n\n\nSELECT COUNT(descontar_stock(d_codigo,d_cant_v,SUC)) FROM fact_vent_det WHERE d_fact = factura INTO TMP;\n\n \n UPDATE factura_venta SET f_estado = \'Cerrada\',f_cob_efectivo = efectivo , f_conv_cod = conv ,f_monto_conv = monto_conv, f_moneda = moneda, f_voucher = voucher,f_tipo = tipo,f_hora = current_time  WHERE f_nro = factura; \n\nRETURN 1;\nEND'),(14,'descontar_stock','Disminuye el Stock Actual','','FUNCTION','codigo_ varchar(20) , cantidad_ double(14,2) ,suc_ varchar(6)','integer','BEGIN\n\nUPDATE stock SET cantidad = cantidad - cantidad_ WHERE codigo = codigo_  AND suc = suc_ ; \n\nRETURN 1;\n\nEND'),(16,'calc_stock','Calcula el Stock de un Producto','','FUNCTION','codigo_  varchar(30)','double(16,2)','BEGIN\n\nDECLARE stock DOUBLE(16,2);\nDECLARE TMP INT;\n\n# Genera el Stock si hay sucursal Nueva  y Corrige el Stock\n SELECT COUNT(gen_stock_suc(codigo_ ,emp_cod )) FROM empresas WHERE emp_estado = \'Activo\'  INTO TMP;\n \nSELECT SUM(cantidad) FROM stock WHERE codigo = codigo_ INTO stock ;\n \n\nRETURN stock;\nEND'),(17,'cerrar_compra','Cierra una Compra','Libera los productos para la venta','FUNCTION','nro_compra integer, estado varchar(30)','integer','BEGIN\nDECLARE TMP INT;\n\nIF estado = \'Cerrada\' THEN\n    SELECT COUNT(calc_precio_promedio(p_cod_art)) FROM fact_comp_det WHERE p_ref = nro_compra INTO TMP;\nEND IF; \n\nRETURN 1;\nEND'),(19,'cob_cuota_cheque','Cobrar Cuota Con Cheque','Cobrar Cuota Con Cheque','FUNCTION','factura int,cuota int,cj_ref int,usuario varchar(30),monto double(14,2),nro_cheq varchar(30)','integer','BEGIN\n\nDECLARE COMPL_ VARCHAR(200);\nDECLARE  AUX_ VARCHAR(60);\nDECLARE TMP INTEGER;\n\nDECLARE SALDO_ANT DOUBLE(16,2);\n\nDECLARE SALDO  DOUBLE(16,2);\n\nDECLARE CONCEPTO VARCHAR(60);\n\nSELECT c_saldo FROM cuotas WHERE c_fact = factura  AND  c_nro_cuota = cuota INTO SALDO_ANT;\nSET SALDO = SALDO_ANT - monto;\n\n\nSELECT concat(\'cb_ \',cuota,\'_fact_\' ,factura) INTO AUX_;\n\nSELECT concat(\'Cobro cuota \',cuota,\' Factura Nro:\' ,factura) INTO COMPL_;\n  \nUPDATE bcos_cheq_ter	 SET chq_saldo = chq_saldo - monto WHERE chq_num = nro_cheq;\n\nIF (SALDO  <= 0) THEN\nSELECT concat(\'Pago Total Cheque Nro: \',nro_cheq)  INTO CONCEPTO;\nELSE\nSELECT concat(\'Pago Parcial Cheque Nro: \',nro_cheq)  INTO CONCEPTO;\nEND IF;\n\n INSERT INTO amortizaciones(a_fact,a_cuota,a_fecha,a_comp,a_concepto,a_compl,a_saldo_ant,a_monto,a_saldo)\n  VALUES(factura,cuota,CURRENT_DATE,\'Cobro con Cheque\',8,CONCEPTO,SALDO_ANT,monto,SALDO);\n\nUPDATE cuotas SET c_saldo = SALDO,c_entrega = c_entrega + monto WHERE c_fact = factura AND c_nro_cuota = cuota;\n\nIF (SALDO <= 0) THEN\nUPDATE cuotas SET c_saldo = 0,c_entrega = c_monto_ref,c_estado = \'Cancelada\'  WHERE c_fact = factura AND c_nro_cuota = cuota;\n\nEND IF;\n\nRETURN 1;\n\nEND'),(20,'cob_cuota_efectivo','Cobrar una cuota en Efectivo','','FUNCTION','factura int,cuota int,cj_ref int,usuario varchar(30),monto double(14,2)','integer','BEGIN\n\nDECLARE COMPL_ VARCHAR(200);\nDECLARE  AUX_ VARCHAR(60);\nDECLARE TMP INTEGER;\n\nDECLARE CONCEPTO VARCHAR(60);\n\nDECLARE SALDO_ANT DOUBLE(16,2);\n\nDECLARE SALDO  DOUBLE(16,2);\n\nSELECT c_saldo FROM cuotas WHERE c_fact = factura  AND  c_nro_cuota = cuota INTO SALDO_ANT;\nSET SALDO = SALDO_ANT - monto;\n\nSELECT concat(\'cb_ \',cuota,\'_fact_\' ,factura) INTO AUX_;\n\nSELECT concat(\'Cobro cuota \',cuota,\' Factura Nro:\' ,factura) INTO COMPL_;\n\nSELECT caja_ins_aciento(cj_ref,current_date,usuario,monto,\'G$\',1,\'E\',7,COMPL_,AUX_) INTO TMP ;\n\nIF (SALDO  <= 0) THEN\nSELECT concat(\'Pago Total Efectivo\')  INTO CONCEPTO;\nELSE\nSELECT concat(\'Pago Parcial Efectivo \')  INTO CONCEPTO;\nEND IF;\n\n INSERT INTO amortizaciones(a_fact,a_cuota,a_fecha,a_comp,a_concepto,a_compl,a_saldo_ant,a_monto,a_saldo)\n  VALUES(factura,cuota,CURRENT_DATE,\'Cobro en Efectivo\',7,CONCEPTO,SALDO_ANT,monto,SALDO);\n\nUPDATE cuotas SET c_saldo = SALDO,c_entrega = c_entrega + monto WHERE c_fact = factura AND c_nro_cuota = cuota;\n\nIF (SALDO <= 0) THEN\nUPDATE cuotas SET c_saldo = 0,c_entrega = c_monto_ref,c_estado = \'Cancelada\'  WHERE c_fact = factura AND c_nro_cuota = cuota;\n\nEND IF;\n\nRETURN 1;\n\nEND'),(22,'gen_nota_credito','Genera Nota de Credito','Genera Nota de Credito','FUNCTION','cli_cod INT, cat INT,usuario VARCHAR(30)','INT','BEGIN\nDECLARE NRO INT;\nDECLARE SUC VARCHAR(4);\n\nSELECT local FROM p_users WHERE NAME = usuario  INTO SUC;\n\nSELECT  _autonum(\'n_nro\') INTO NRO;\n\nINSERT INTO nota_credito(n_nro,n_cli_cod,n_cat,n_estado,n_fecha,n_usuario,n_suc)\nVALUES	(NRO ,cli_cod,cat, \'Abierta\',CURRENT_DATE,usuario,SUC);\n\nRETURN NRO;\n\nEND'),(23,'anular_factura','Anula una Factura y Pone en Abierta','','FUNCTION','nro integer, usuario varchar(30), obs_ varchar(100)','integer','BEGIN\n\n\nUPDATE productos p, fact_vent_det d SET p_cant = p_cant + d_cant_v  WHERE d_codigo = p_cod and d_fact = nro;\n\nUPDATE factura_venta SET f_estado = \'Abierta\' WHERE f_nro = nro;\n\nINSERT INTO p_log(YEAR, MONTH, DAY, HOUR, MINUTE, SECOND, USER, ACTION, STATUS, obs)\nVALUES ( YEAR(CURRENT_DATE), MONTH(CURRENT_DATE), DAY(CURRENT_DATE), HOUR(CURRENT_TIME), MINUTE(CURRENT_TIME), SECOND(CURRENT_TIME), usuario, \'AnularFactura\', \'Ok\', obs_);\n\nRETURN 1;\n\nEND\n'),(24,'nro_lote','Nro de Lote','Retorna el Siguiente Nro de Lote','FUNCTION','','integer','BEGIN\nDECLARE LOTE INTEGER;\nDECLARE CANT INTEGER;\n\nSELECT COUNT(*) AS cant FROM fact_comp_det WHERE p_cod LIKE CONCAT(\'%\',RIGHT(YEAR(CURRENT_DATE),2)) INTO CANT;\n\nIF(CANT < 1)THEN   \n    UPDATE __autonum__ SET VALUE = 0 WHERE NAME = \'p_cod\'; \nEND IF;\n\n\nSELECT CONCAT(_autonum(\'p_cod\'),DATE_FORMAT(CURRENT_DATE,\'%y\')) INTO LOTE;\n\nRETURN LOTE;\n\nEND'),(25,'gen_lista_precios','Genera Lista de Precios','','FUNCTION','codigo varchar(20)','integer','BEGIN\nDECLARE TMP INTEGER;\n\n     INSERT INTO lista_precios(codigo,num,precio_unit)VALUES (codigo,1,0);\n     INSERT INTO lista_precios(codigo,num,precio_unit)VALUES (codigo,2,0);\n     INSERT INTO lista_precios(codigo,num,precio_unit)VALUES (codigo,3,0);\n     INSERT INTO lista_precios(codigo,num,precio_unit)VALUES (codigo,4,0);   \n   \n    SELECT COUNT(gen_stock_suc(codigo ,emp_cod )) FROM empresas WHERE emp_estado = \'Activo\' INTO TMP;\n\nRETURN 1;\nEND\n\n'),(26,'gen_stock_suc','Genera Stock x Suc','','FUNCTION','codigo_ varchar(10),suc_ varchar(10)','integer','BEGIN\n\nDECLARE compras DOUBLE(16,2);\nDECLARE ventas DOUBLE(16,2);\nDECLARE stock_suc DOUBLE(16,2);\nDECLARE STOCK_GLOBAL DOUBLE(16,2);\n\nINSERT IGNORE INTO stock (codigo,suc,cantidad)VALUES(codigo_,suc_, 0);\n\nSELECT SUM(p_cant_um) FROM  factura_compra f, fact_comp_det d WHERE f.c_ref = d.p_ref AND d.p_cod_art =  codigo_ AND f.c_empr = suc_ INTO compras;\n\nSELECT SUM(d_cant_v) FROM  factura_venta f, fact_vent_det d\nWHERE f.f_nro = d.d_fact AND d.d_codigo =  codigo_  AND f.f_suc = suc_ INTO ventas;\n\nIF(compras is null) THEN\n  SET compras = 0;\nEND IF;\n\nIF(ventas is null) THEN\n  SET ventas = 0;\nEND IF;\n\nSET stock_suc = compras -  ventas;\n\nUPDATE stock SET cantidad = stock_suc WHERE codigo = codigo_ AND suc = suc_;\n\nSELECT SUM(cantidad) FROM stock WHERE codigo = codigo_ INTO STOCK_GLOBAL;\nUPDATE articulos SET p_stock = STOCK_GLOBAL WHERE codigo = codigo_;\n\nRETURN stock_suc;\nEND'),(27,'calc_precio_promedio','Calcula el Precio Promedio','','FUNCTION','codigo_ varchar(30)','double','BEGIN\n    DECLARE PRECIO_PROMEDIO DOUBLE(16,2);\n   SELECT AVG(p_compra) FROM factura_compra f, fact_comp_det d WHERE f.c_ref = d.p_ref AND f.c_estado = \'cerrada\' AND p_cod_art = codigo_ INTO PRECIO_PROMEDIO;\n\nIF(PRECIO_PROMEDIO IS NULL) THEN\n SET PRECIO_PROMEDIO = 0;\nEND IF;\n\nUPDATE articulos SET p_costo_prom = PRECIO_PROMEDIO WHERE codigo = codigo_;\n\nRETURN PRECIO_PROMEDIO;\n\nEND'),(28,'gen_fact_cont','Genera Facturas Contables','','FUNCTION','NRO INT, CANT INT,SUC VARCHAR(8),USER VARCHAR(30),PDV VARCHAR(6),RUC VARCHAR(30),VENC DATE,ESTAB VARCHAR(4),TIMBRADO VARCHAR(10)','INTEGER','BEGIN\n\nDECLARE i INTEGER;\nDECLARE auX INTEGER;\n\n\nSET i = 0; \n\n   WHILE  i < CANT  DO\n\n    SET aux = NRO + i;\n\n      INSERT INTO fact_cont(f_suc,f_user, f_nro, f_ref, f_pdv, f_fecha, f_ruc,                   f_estado,f_mot_anul, f_total, f_venc,f_estab,f_timbrado)VALUES(SUC,USER ,aux, \'\',PDV,\'0000-00-00\',RUC,\'Disponible\',\'\',0, VENC,ESTAB,TIMBRADO);\n\n   SET i = i + 1;  \n   END WHILE;\n\nRETURN 1;\n\nEND'),(29,'corr_stock','Corrige Stock','','FUNCTION','','INTEGER','BEGIN\n\nDECLARE TMP INTEGER;\n\nSELECT DISTINCT COUNT(gen_stock_suc(p_cod_art ,emp_cod ))   FROM fact_comp_det a, empresas e  INTO TMP;\n\nRETURN TMP;\nEND'),(30,'bcos_gen_cheques','Carga bloques de cheques','Carga bloques de cheques','FUNCTION','inicio INTEGER, numero INTEGER, banco VARCHAR(10), cuenta VARCHAR(20), moneda VARCHAR(10), serie VARCHAR(20), formato integer, tipo VARCHAR(10)','INTEGER','BEGIN\n  DECLARE contador INTEGER;\n  DECLARE temp INTEGER;\n  DECLARE final INTEGER;\n  \n  SET final = inicio + numero;\n  SET contador = inicio;\n  WHILE contador < final DO\n\n    # Verifica si ya existe\n    SET temp = 0;\n    SELECT id FROM bcos_chq WHERE chq_num = contador LIMIT 1 INTO temp;\n    IF temp = 0 THEN\n\n      # Inserta cheque\nINSERT INTO bcos_chq( chq_cta, chq_bco, chq_moneda, chq_num, chq_estado, \n                            chq_fecha_emis, chq_fecha_pag, chq_valor, chq_benef,\n                            chq_mot_anul,chq_formato, chq_tipo)\n                    VALUES( cuenta, banco, moneda, CONCAT(serie,\'-\',contador), \n                            \'Abierto\',\'\', \'\', 0, \'\', \'\',formato, tipo);\n      END IF;\n    SET contador = contador +1;\n  END WHILE;\n \n  RETURN 1;\nEND\n\n'),(31,'get_date','Obtiene la Fecha de Hoy o la que esta en el Cheque','','FUNCTION','fecha varchar(12)','varchar(12)','BEGIN\nDECLARE  fecha_  varchar(12);\n\nif (fecha = \'00-00-0000\' or fecha = \'\') then\n  SELECT DATE_FORMAT(LEFT( NOW(),10),\'%d-%m-%Y\')  into fecha_;\n    return fecha_;\nelse\n\nreturn fecha;\nend if;\nEND');

/*Table structure for table `p_ref_int` */

DROP TABLE IF EXISTS `p_ref_int`;

CREATE TABLE `p_ref_int` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `_dep_table` varchar(20) DEFAULT NULL,
  `_dep_field` varchar(15) DEFAULT NULL,
  `_ref_table` varchar(20) DEFAULT NULL,
  `_ref_field` varchar(15) DEFAULT NULL,
  `_operation` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `p_ref_int` */

/*Table structure for table `p_session` */

DROP TABLE IF EXISTS `p_session`;

CREATE TABLE `p_session` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `day` char(2) DEFAULT NULL,
  `serial` varchar(60) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `project` varchar(20) DEFAULT NULL,
  `transp1` blob,
  `transp2` blob,
  `trustee` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `serial` (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `p_session` */

insert  into `p_session`(`id`,`user`,`ip`,`day`,`serial`,`name`,`project`,`transp1`,`transp2`,`trustee`) values (12,1,'127.0.0.1','11','c96ebd5af312f60604be5496662bbc2d','Developer','distripar',NULL,NULL,2147483647),(13,3,'127.0.0.1','11','0d354bf27deacc7af0a7d6adecbfbbf5','Carlos','distripar',NULL,NULL,6);

/*Table structure for table `p_users` */

DROP TABLE IF EXISTS `p_users`;

CREATE TABLE `p_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `obs` varchar(60) DEFAULT NULL,
  `resh` int(10) unsigned DEFAULT NULL,
  `resv` int(10) unsigned DEFAULT NULL,
  `local` varchar(60) DEFAULT NULL,
  `lang` varchar(2) DEFAULT NULL,
  `trustee` bigint(20) unsigned DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `nro_usuario` varchar(60) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `ci` varchar(20) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `estado` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `p_users` */

insert  into `p_users`(`id`,`name`,`obs`,`resh`,`resv`,`local`,`lang`,`trustee`,`password`,`nro_usuario`,`nombre`,`ci`,`tel`,`email`,`estado`) values (1,'Developer','Plus Developer',1024,760,'01','es',2147483647,'1$w8Q/K5CMy2w',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Andrea','Administradora',1024,760,'01','es',4,'1$LESBmc9vDzQ',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Carlos','Gerente Generall',1024,760,'01','es',4,'1$Vsi07Nw7cp6',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `p_version` */

DROP TABLE IF EXISTS `p_version`;

CREATE TABLE `p_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbversion` varchar(10) DEFAULT NULL,
  `dbrelease` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `p_version` */

insert  into `p_version`(`id`,`dbversion`,`dbrelease`) values (1,'1.2','31');

/*Table structure for table `parametros` */

DROP TABLE IF EXISTS `parametros`;

CREATE TABLE `parametros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clave` varchar(80) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL,
  `descrip` varchar(100) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `parametros` */

insert  into `parametros`(`id`,`clave`,`valor`,`descrip`) values (1,'benef','15px 65px 5px 120px','config_cheques'),(2,'valor_letras','30px 20px 10px 120px','config_cheques'),(3,'valor_numero','5px 100px 10px 0px','config_cheques'),(4,'fecha_emis','0px 140px 0px 0px','config_cheques'),(5,'fecha_pago','0px 20px 0px 15px','config_cheques');

/*Table structure for table `proveedores` */

DROP TABLE IF EXISTS `proveedores`;

CREATE TABLE `proveedores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prov_cod` int(11) DEFAULT NULL,
  `prov_nombre` varchar(60) DEFAULT NULL,
  `prov_ruc` varchar(20) DEFAULT NULL,
  `prov_dir` varchar(60) DEFAULT NULL,
  `prov_ciudad` varchar(40) DEFAULT NULL,
  `prov_tel` varchar(40) DEFAULT NULL,
  `prov_fax` varchar(20) DEFAULT NULL,
  `prov_mail` varchar(80) DEFAULT NULL,
  `prov_web` varchar(40) DEFAULT NULL,
  `prov_pais` varchar(60) DEFAULT NULL,
  `prov_contacto` varchar(40) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `prov_cod` (`prov_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `proveedores` */

/*Table structure for table `tmp` */

DROP TABLE IF EXISTS `tmp`;

CREATE TABLE `tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(12) DEFAULT NULL,
  `descrip` varchar(80) DEFAULT NULL,
  `c_busc` varchar(20) DEFAULT NULL,
  `c_cli_cod` varchar(60) DEFAULT NULL,
  `banco` varchar(60) DEFAULT NULL,
  `cuenta` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tmp` */

/*Table structure for table `um` */

DROP TABLE IF EXISTS `um`;

CREATE TABLE `um` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `u_cod` varchar(10) DEFAULT NULL,
  `u_descri` varchar(40) DEFAULT NULL,
  `u_ref` varchar(5) DEFAULT NULL,
  `u_mult` double(15,3) DEFAULT NULL,
  `u_prior` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `u_cod` (`u_cod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `um` */

/* Function  structure for function  `anular_factura` */

/*!50003 DROP FUNCTION IF EXISTS `anular_factura` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `anular_factura`(nro integer, usuario varchar(30), obs_ varchar(100)) RETURNS int(11)
    DETERMINISTIC
BEGIN


UPDATE productos p, fact_vent_det d SET p_cant = p_cant + d_cant_v  WHERE d_codigo = p_cod and d_fact = nro;

UPDATE factura_venta SET f_estado = 'Abierta' WHERE f_nro = nro;

INSERT INTO p_log(YEAR, MONTH, DAY, HOUR, MINUTE, SECOND, USER, ACTION, STATUS, obs)
VALUES ( YEAR(CURRENT_DATE), MONTH(CURRENT_DATE), DAY(CURRENT_DATE), HOUR(CURRENT_TIME), MINUTE(CURRENT_TIME), SECOND(CURRENT_TIME), usuario, 'AnularFactura', 'Ok', obs_);

RETURN 1;

END */$$
DELIMITER ;

/* Function  structure for function  `bcos_gen_cheques` */

/*!50003 DROP FUNCTION IF EXISTS `bcos_gen_cheques` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `bcos_gen_cheques`(inicio INTEGER, numero INTEGER, banco VARCHAR(10), cuenta VARCHAR(20), moneda VARCHAR(10), serie VARCHAR(20), formato integer, tipo VARCHAR(10)) RETURNS int(11)
    DETERMINISTIC
BEGIN
  DECLARE contador INTEGER;
  DECLARE temp INTEGER;
  DECLARE final INTEGER;
  
  SET final = inicio + numero;
  SET contador = inicio;
  WHILE contador < final DO

    # Verifica si ya existe
    SET temp = 0;
    SELECT id FROM bcos_chq WHERE chq_num = contador LIMIT 1 INTO temp;
    IF temp = 0 THEN

      # Inserta cheque
INSERT INTO bcos_chq( chq_cta, chq_bco, chq_moneda, chq_num, chq_estado, 
                            chq_fecha_emis, chq_fecha_pag, chq_valor, chq_benef,
                            chq_mot_anul,chq_formato, chq_tipo)
                    VALUES( cuenta, banco, moneda, CONCAT(serie,'-',contador), 
                            'Abierto','', '', 0, '', '',formato, tipo);
      END IF;
    SET contador = contador +1;
  END WHILE;
 
  RETURN 1;
END */$$
DELIMITER ;

/* Function  structure for function  `caja_ins_aciento` */

/*!50003 DROP FUNCTION IF EXISTS `caja_ins_aciento` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `caja_ins_aciento`(ref int,fecha date, user varchar(30), _monto double(14,2),moneda varchar(4),cotiz double(8,2), e_s varchar(4), con int, compl varchar(200),aux varchar(14)) RETURNS int(11)
    DETERMINISTIC
BEGIN

DECLARE entrada_ref DOUBLE(14,2);
DECLARE salida_ref DOUBLE(14,2);

IF ref = 0 THEN
  SELECT cj_ref FROM caja WHERE cj_estado = 'Abierta' order by id desc limit 1 into ref;
END IF;

IF  e_s != 'S'  THEN
  SET entrada_ref = _monto * cotiz;
  SET salida_ref = 0;
ELSE
   SET entrada_ref = 0;
   SET salida_ref = _monto * cotiz;
END IF;

INSERT INTO caja_mov(  cj_ref ,__date,__user,__moneda,__cotiz,monto,concepto,compl, entrada_ref, salida_ref,cj_ref_aux)VALUES(ref,fecha,user, moneda, cotiz,_monto,con, compl, entrada_ref,salida_ref,aux);



RETURN 1;
END */$$
DELIMITER ;

/* Function  structure for function  `calc_precio_promedio` */

/*!50003 DROP FUNCTION IF EXISTS `calc_precio_promedio` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `calc_precio_promedio`(codigo_ varchar(30)) RETURNS double
    DETERMINISTIC
BEGIN
    DECLARE PRECIO_PROMEDIO DOUBLE(16,2);
   SELECT AVG(p_compra) FROM factura_compra f, fact_comp_det d WHERE f.c_ref = d.p_ref AND f.c_estado = 'cerrada' AND p_cod_art = codigo_ INTO PRECIO_PROMEDIO;

IF(PRECIO_PROMEDIO IS NULL) THEN
 SET PRECIO_PROMEDIO = 0;
END IF;

UPDATE articulos SET p_costo_prom = PRECIO_PROMEDIO WHERE codigo = codigo_;

RETURN PRECIO_PROMEDIO;

END */$$
DELIMITER ;

/* Function  structure for function  `calc_stock` */

/*!50003 DROP FUNCTION IF EXISTS `calc_stock` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `calc_stock`(codigo_  varchar(30)) RETURNS double(16,2)
    DETERMINISTIC
BEGIN

DECLARE stock DOUBLE(16,2);
DECLARE TMP INT;

# Genera el Stock si hay sucursal Nueva  y Corrige el Stock
 SELECT COUNT(gen_stock_suc(codigo_ ,emp_cod )) FROM empresas WHERE emp_estado = 'Activo'  INTO TMP;
 
SELECT SUM(cantidad) FROM stock WHERE codigo = codigo_ INTO stock ;
 

RETURN stock;
END */$$
DELIMITER ;

/* Function  structure for function  `cerrar_compra` */

/*!50003 DROP FUNCTION IF EXISTS `cerrar_compra` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `cerrar_compra`(nro_compra integer, estado varchar(30)) RETURNS int(11)
    DETERMINISTIC
BEGIN
DECLARE TMP INT;

IF estado = 'Cerrada' THEN
    SELECT COUNT(calc_precio_promedio(p_cod_art)) FROM fact_comp_det WHERE p_ref = nro_compra INTO TMP;
END IF; 

RETURN 1;
END */$$
DELIMITER ;

/* Function  structure for function  `cerrar_venta` */

/*!50003 DROP FUNCTION IF EXISTS `cerrar_venta` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `cerrar_venta`(factura integer, efectivo double(16,2), moneda varchar(4), cotiz double(10,2),voucher varchar(30),conv integer, monto_conv double(16,2),tipo varchar(20)) RETURNS int(11)
    DETERMINISTIC
BEGIN

DECLARE TMP INTEGER;
DECLARE SUC VARCHAR(6);

SELECT f_suc FROM factura_venta WHERE f_nro = factura INTO SUC;


SELECT COUNT(descontar_stock(d_codigo,d_cant_v,SUC)) FROM fact_vent_det WHERE d_fact = factura INTO TMP;

 
 UPDATE factura_venta SET f_estado = 'Cerrada',f_cob_efectivo = efectivo , f_conv_cod = conv ,f_monto_conv = monto_conv, f_moneda = moneda, f_voucher = voucher,f_tipo = tipo,f_hora = current_time  WHERE f_nro = factura; 

RETURN 1;
END */$$
DELIMITER ;

/* Function  structure for function  `cob_cuota_cheque` */

/*!50003 DROP FUNCTION IF EXISTS `cob_cuota_cheque` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `cob_cuota_cheque`(factura int,cuota int,cj_ref int,usuario varchar(30),monto double(14,2),nro_cheq varchar(30)) RETURNS int(11)
    DETERMINISTIC
BEGIN

DECLARE COMPL_ VARCHAR(200);
DECLARE  AUX_ VARCHAR(60);
DECLARE TMP INTEGER;

DECLARE SALDO_ANT DOUBLE(16,2);

DECLARE SALDO  DOUBLE(16,2);

DECLARE CONCEPTO VARCHAR(60);

SELECT c_saldo FROM cuotas WHERE c_fact = factura  AND  c_nro_cuota = cuota INTO SALDO_ANT;
SET SALDO = SALDO_ANT - monto;


SELECT concat('cb_ ',cuota,'_fact_' ,factura) INTO AUX_;

SELECT concat('Cobro cuota ',cuota,' Factura Nro:' ,factura) INTO COMPL_;
  
UPDATE bcos_cheq_ter	 SET chq_saldo = chq_saldo - monto WHERE chq_num = nro_cheq;

IF (SALDO  <= 0) THEN
SELECT concat('Pago Total Cheque Nro: ',nro_cheq)  INTO CONCEPTO;
ELSE
SELECT concat('Pago Parcial Cheque Nro: ',nro_cheq)  INTO CONCEPTO;
END IF;

 INSERT INTO amortizaciones(a_fact,a_cuota,a_fecha,a_comp,a_concepto,a_compl,a_saldo_ant,a_monto,a_saldo)
  VALUES(factura,cuota,CURRENT_DATE,'Cobro con Cheque',8,CONCEPTO,SALDO_ANT,monto,SALDO);

UPDATE cuotas SET c_saldo = SALDO,c_entrega = c_entrega + monto WHERE c_fact = factura AND c_nro_cuota = cuota;

IF (SALDO <= 0) THEN
UPDATE cuotas SET c_saldo = 0,c_entrega = c_monto_ref,c_estado = 'Cancelada'  WHERE c_fact = factura AND c_nro_cuota = cuota;

END IF;

RETURN 1;

END */$$
DELIMITER ;

/* Function  structure for function  `cob_cuota_efectivo` */

/*!50003 DROP FUNCTION IF EXISTS `cob_cuota_efectivo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `cob_cuota_efectivo`(factura int,cuota int,cj_ref int,usuario varchar(30),monto double(14,2)) RETURNS int(11)
    DETERMINISTIC
BEGIN

DECLARE COMPL_ VARCHAR(200);
DECLARE  AUX_ VARCHAR(60);
DECLARE TMP INTEGER;

DECLARE CONCEPTO VARCHAR(60);

DECLARE SALDO_ANT DOUBLE(16,2);

DECLARE SALDO  DOUBLE(16,2);

SELECT c_saldo FROM cuotas WHERE c_fact = factura  AND  c_nro_cuota = cuota INTO SALDO_ANT;
SET SALDO = SALDO_ANT - monto;

SELECT concat('cb_ ',cuota,'_fact_' ,factura) INTO AUX_;

SELECT concat('Cobro cuota ',cuota,' Factura Nro:' ,factura) INTO COMPL_;

SELECT caja_ins_aciento(cj_ref,current_date,usuario,monto,'G$',1,'E',7,COMPL_,AUX_) INTO TMP ;

IF (SALDO  <= 0) THEN
SELECT concat('Pago Total Efectivo')  INTO CONCEPTO;
ELSE
SELECT concat('Pago Parcial Efectivo ')  INTO CONCEPTO;
END IF;

 INSERT INTO amortizaciones(a_fact,a_cuota,a_fecha,a_comp,a_concepto,a_compl,a_saldo_ant,a_monto,a_saldo)
  VALUES(factura,cuota,CURRENT_DATE,'Cobro en Efectivo',7,CONCEPTO,SALDO_ANT,monto,SALDO);

UPDATE cuotas SET c_saldo = SALDO,c_entrega = c_entrega + monto WHERE c_fact = factura AND c_nro_cuota = cuota;

IF (SALDO <= 0) THEN
UPDATE cuotas SET c_saldo = 0,c_entrega = c_monto_ref,c_estado = 'Cancelada'  WHERE c_fact = factura AND c_nro_cuota = cuota;

END IF;

RETURN 1;

END */$$
DELIMITER ;

/* Function  structure for function  `corr_stock` */

/*!50003 DROP FUNCTION IF EXISTS `corr_stock` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `corr_stock`() RETURNS int(11)
    DETERMINISTIC
BEGIN

DECLARE TMP INTEGER;

SELECT DISTINCT COUNT(gen_stock_suc(p_cod_art ,emp_cod ))   FROM fact_comp_det a, empresas e  INTO TMP;

RETURN TMP;
END */$$
DELIMITER ;

/* Function  structure for function  `descontar_stock` */

/*!50003 DROP FUNCTION IF EXISTS `descontar_stock` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `descontar_stock`(codigo_ varchar(20) , cantidad_ double(14,2) ,suc_ varchar(6)) RETURNS int(11)
    DETERMINISTIC
BEGIN

UPDATE stock SET cantidad = cantidad - cantidad_ WHERE codigo = codigo_  AND suc = suc_ ; 

RETURN 1;

END */$$
DELIMITER ;

/* Function  structure for function  `gen_compra` */

/*!50003 DROP FUNCTION IF EXISTS `gen_compra` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `gen_compra`(ref int,empr varchar(6),prov int,fecha date,fecha_fac date,factura varchar(20),moneda varchar(4),cotiz double(12,2),fn double(12,2),otros double(12,2),valor_total double(12,2),porc_rec double(12,2),tipo varchar(10),tipo_doc_ integer) RETURNS int(11)
    DETERMINISTIC
BEGIN

INSERT INTO 
factura_compra(c_ref,c_empr,c_prov,c_fecha,c_hora,c_fecha_fac,c_factura,c_moneda,c_cotiz,c_fn,c_otros,c_valor_total,c_porc_rec,c_tipo,c_estado,c_tipo_doc)
	VALUES(	ref,empr,prov,fecha,current_time,fecha_fac,factura,moneda,cotiz,fn,otros,valor_total,porc_rec,tipo,'Abierta',tipo_doc_);


RETURN 1;
END */$$
DELIMITER ;

/* Function  structure for function  `gen_fact_cont` */

/*!50003 DROP FUNCTION IF EXISTS `gen_fact_cont` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `gen_fact_cont`(NRO INT, CANT INT,SUC VARCHAR(8),USER VARCHAR(30),PDV VARCHAR(6),RUC VARCHAR(30),VENC DATE,ESTAB VARCHAR(4),TIMBRADO VARCHAR(10)) RETURNS int(11)
    DETERMINISTIC
BEGIN

DECLARE i INTEGER;
DECLARE auX INTEGER;


SET i = 0; 

   WHILE  i < CANT  DO

    SET aux = NRO + i;

      INSERT INTO fact_cont(f_suc,f_user, f_nro, f_ref, f_pdv, f_fecha, f_ruc,                   f_estado,f_mot_anul, f_total, f_venc,f_estab,f_timbrado)VALUES(SUC,USER ,aux, '',PDV,'0000-00-00',RUC,'Disponible','',0, VENC,ESTAB,TIMBRADO);

   SET i = i + 1;  
   END WHILE;

RETURN 1;

END */$$
DELIMITER ;

/* Function  structure for function  `gen_lista_precios` */

/*!50003 DROP FUNCTION IF EXISTS `gen_lista_precios` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `gen_lista_precios`(codigo varchar(20)) RETURNS int(11)
    DETERMINISTIC
BEGIN
DECLARE TMP INTEGER;

     INSERT INTO lista_precios(codigo,num,precio_unit)VALUES (codigo,1,0);
     INSERT INTO lista_precios(codigo,num,precio_unit)VALUES (codigo,2,0);
     INSERT INTO lista_precios(codigo,num,precio_unit)VALUES (codigo,3,0);
     INSERT INTO lista_precios(codigo,num,precio_unit)VALUES (codigo,4,0);   
   
    SELECT COUNT(gen_stock_suc(codigo ,emp_cod )) FROM empresas WHERE emp_estado = 'Activo' INTO TMP;

RETURN 1;
END */$$
DELIMITER ;

/* Function  structure for function  `gen_nota_credito` */

/*!50003 DROP FUNCTION IF EXISTS `gen_nota_credito` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `gen_nota_credito`(cli_cod INT, cat INT,usuario VARCHAR(30)) RETURNS int(11)
    DETERMINISTIC
BEGIN
DECLARE NRO INT;
DECLARE SUC VARCHAR(4);

SELECT local FROM p_users WHERE NAME = usuario  INTO SUC;

SELECT  _autonum('n_nro') INTO NRO;

INSERT INTO nota_credito(n_nro,n_cli_cod,n_cat,n_estado,n_fecha,n_usuario,n_suc)
VALUES	(NRO ,cli_cod,cat, 'Abierta',CURRENT_DATE,usuario,SUC);

RETURN NRO;

END */$$
DELIMITER ;

/* Function  structure for function  `gen_stock_suc` */

/*!50003 DROP FUNCTION IF EXISTS `gen_stock_suc` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `gen_stock_suc`(codigo_ varchar(10),suc_ varchar(10)) RETURNS int(11)
    DETERMINISTIC
BEGIN

DECLARE compras DOUBLE(16,2);
DECLARE ventas DOUBLE(16,2);
DECLARE stock_suc DOUBLE(16,2);
DECLARE STOCK_GLOBAL DOUBLE(16,2);

INSERT IGNORE INTO stock (codigo,suc,cantidad)VALUES(codigo_,suc_, 0);

SELECT SUM(p_cant_um) FROM  factura_compra f, fact_comp_det d WHERE f.c_ref = d.p_ref AND d.p_cod_art =  codigo_ AND f.c_empr = suc_ INTO compras;

SELECT SUM(d_cant_v) FROM  factura_venta f, fact_vent_det d
WHERE f.f_nro = d.d_fact AND d.d_codigo =  codigo_  AND f.f_suc = suc_ INTO ventas;

IF(compras is null) THEN
  SET compras = 0;
END IF;

IF(ventas is null) THEN
  SET ventas = 0;
END IF;

SET stock_suc = compras -  ventas;

UPDATE stock SET cantidad = stock_suc WHERE codigo = codigo_ AND suc = suc_;

SELECT SUM(cantidad) FROM stock WHERE codigo = codigo_ INTO STOCK_GLOBAL;
UPDATE articulos SET p_stock = STOCK_GLOBAL WHERE codigo = codigo_;

RETURN stock_suc;
END */$$
DELIMITER ;

/* Function  structure for function  `gen_venta` */

/*!50003 DROP FUNCTION IF EXISTS `gen_venta` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `gen_venta`(cli_cod INT, cat INT,usuario VARCHAR(30),tipo_doc int) RETURNS int(11)
    DETERMINISTIC
BEGIN
DECLARE NRO INT;
DECLARE SUC VARCHAR(4);

SELECT local FROM p_users WHERE NAME = usuario  INTO SUC;

SELECT  _autonum('f_nro') INTO NRO;

INSERT INTO factura_venta(f_nro,f_cli_cod,f_cat,f_estado,f_fecha,f_usuario,f_suc,f_tipo_doc)
VALUES	(NRO ,cli_cod,cat, 'Abierta',CURRENT_DATE,usuario,SUC,tipo_doc);

RETURN NRO;

END */$$
DELIMITER ;

/* Function  structure for function  `get_date` */

/*!50003 DROP FUNCTION IF EXISTS `get_date` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `get_date`(fecha varchar(12)) RETURNS varchar(12) CHARSET latin1
    DETERMINISTIC
BEGIN
DECLARE  fecha_  varchar(12);

if (fecha = '00-00-0000' or fecha = '') then
  SELECT DATE_FORMAT(LEFT( NOW(),10),'%d-%m-%Y')  into fecha_;
    return fecha_;
else

return fecha;
end if;
END */$$
DELIMITER ;

/* Function  structure for function  `nro_lote` */

/*!50003 DROP FUNCTION IF EXISTS `nro_lote` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `nro_lote`() RETURNS int(11)
    DETERMINISTIC
BEGIN
DECLARE LOTE INTEGER;
DECLARE CANT INTEGER;

SELECT COUNT(*) AS cant FROM fact_comp_det WHERE p_cod LIKE CONCAT('%',RIGHT(YEAR(CURRENT_DATE),2)) INTO CANT;

IF(CANT < 1)THEN   
    UPDATE __autonum__ SET VALUE = 0 WHERE NAME = 'p_cod'; 
END IF;


SELECT CONCAT(_autonum('p_cod'),DATE_FORMAT(CURRENT_DATE,'%y')) INTO LOTE;

RETURN LOTE;

END */$$
DELIMITER ;

/* Function  structure for function  `obtener_cambio` */

/*!50003 DROP FUNCTION IF EXISTS `obtener_cambio` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `obtener_cambio`(moneda VARCHAR(4)) RETURNS int(11)
    DETERMINISTIC
BEGIN
DECLARE COTIZ INT;


SELECT cb_compra FROM caja_cambios WHERE cb_moneda = moneda ORDER BY id DESC LIMIT 1 INTO COTIZ;

IF  ( COTIZ  IS  NULL ) THEN
   RETURN 1;
ELSE
  RETURN COTIZ;
END IF;

RETURN COTIZ;

END */$$
DELIMITER ;

/* Function  structure for function  `obtener_cambio_venta` */

/*!50003 DROP FUNCTION IF EXISTS `obtener_cambio_venta` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `obtener_cambio_venta`(moneda VARCHAR(4)) RETURNS int(11)
    DETERMINISTIC
BEGIN
DECLARE COTIZ INT;


SELECT cb_venta FROM caja_cambios WHERE cb_moneda = moneda ORDER BY id DESC LIMIT 1 INTO COTIZ;

IF  ( COTIZ  IS  NULL ) THEN
   RETURN 1;
ELSE
  RETURN COTIZ;
END IF;

RETURN COTIZ;

END */$$
DELIMITER ;

/* Function  structure for function  `_autonum` */

/*!50003 DROP FUNCTION IF EXISTS `_autonum` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`plus`@`localhost` FUNCTION `_autonum`(variable varchar(20)) RETURNS int(11)
    DETERMINISTIC
BEGIN
  DECLARE value_ INTEGER;
  SET value_=0;

  SELECT value+1 FROM __autonum__ WHERE name=variable 
    LIMIT 1 INTO value_;
  UPDATE __autonum__ SET value=value_ WHEre name=variable;

  RETURN value_;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
