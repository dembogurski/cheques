<!-- 
    Report Template File (cheques)

    ####################################################
    USE THIS FILE TO PERSONALIZE A VISUAL OF YOUR REPORT
    ####################################################
-->

<!-- begin: general_header noeval -->
       <link rel="stylesheet" type="text/css" href="templates/reports.css" /> 
	   <script src='include/jquery-1.11.1.js'></script>
	   <script language="javascript">
              
	     $(function(){
                $(document).keypress(function(e) {
                   var key = e.keyCode;  
                   if(key === 121) { //F10                        
                       $(".valor").each(function(){
						   var v = $(this).html() .replace(/\./g,"");
						   $(this).html(v);
					   });
                   } 
		  });
		});
		</script>
	<treset_page>
<!-- end:   general_header -->


<!-- begin: start_query0 -->
<table style="text-align: left; width: 100%;border:solid black 0.5px" border="1" cellpadding="0" cellspacing="0">
    <tbody>
    <thead>
<tr> <td colspan="50"> 
	<table style="text-align: left; width: 100%;" border="1"
	 cellpadding="0" cellspacing="0">
	  <tbody>
		<tr>
		  <td style="width: 20%;height:40px;">. </td>
		  <td style="text-align: center;width: 60%;">
			<b><big>Reporte de Cheques</big></b></td>
		  <td style="text-align: right;">
			<tpage><b>Pag: </b></tpage></td>
		</tr>
		<tr>
		  <td  style="width: 20%;">
			<small><small>ycube plus RAD [1.2.31]</small></small>
		  </td>
		  <td style="text-align: left;">
                      <table border="0" cellspacing="0" style="width: 100%;font-family: Calibri; font-size: 11;margin-left: 4px">
                          <tr><td><b>BANCO:</b></b></td><td>{banco}</td>  <td><b>Emision Desde:</b></td> <td>{desde}</td> </tr>
                          <tr><td><b>CUENTA:</b></b></td><td>{cuenta}</td><td><b>Emision Hasta:</b></td> <td>{hasta}</td></tr>
                          <tr><td><b>NOMBRE:</b></b></td><td>{nombre_cuenta}</td><td><b>Pago Desde:</b></td> <td>{pago_desde}</td></tr>
                          <tr><td><b>ORDEN DE:</b></b></td><td>{orden_de}</td><td><b>Pago Hasta:</b></td> <td>{pago_hasta}</td></tr> 
                      </table>
                   </td>
		  <td style="text-align: right;">
			<small><small>{user} - {time}</small></small>
		  </td>
		</tr>
	  </tbody>
	</table> 
</td></tr>
<!-- end:   start_query0 -->

<!-- begin: header0 -->
    <tr>
        <th>NroCheque</th>
        <th>Fecha_Emision</th>
        <th>FechaPago</th>
        <th>OrdenDe</th>
        <th>Valor</th> 
        <th>Doc</th>
         
    </tr>
</thead>
 
<!-- end:   header0 -->

<!-- begin: query0_data_row -->
         <tr>
            <td class="item">{query0_NroCheque}</td>
            <td class="itemc">{query0_Fecha_Emision}</td>
            <td class="itemc">{query0_FechaPago}</td>
            <td class="item">{query0_OrdenDe}</td>
            <td class="num  valor">{query0_Valor}</td> 
            <td class="item">{query0_Doc}</td>
             
         </tr>
<!-- end:    query0_data_row -->
<!-- begin: query0_total_row -->
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
<!-- end:    query0_total_row -->
<!-- begin: query0_subtotal_row -->
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td class="num valor" style="font-size: 12px;font-weight: bolder">{subtotal0_Valor}</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
<!-- end:    query0_subtotal_row -->
<!-- begin: end_query0 -->
    </tbody>
</table>
<!-- end:   end_query0 -->

