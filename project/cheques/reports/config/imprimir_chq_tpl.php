<!-- 
    Report Template File (imprimir_chq)

    ####################################################
    USE THIS FILE TO PERSONALIZE A VISUAL OF YOUR REPORT
    ####################################################
-->

<!-- begin: general_header noeval -->
     <script src='include/jquery-1.11.1.js'></script>
      
     <link rel="stylesheet" type="text/css" href="templates/reports.css" /> 
	 
	 <style type="text/css">
	    .movible{
	       border:solid gray 0px;
               font-family: Calibri;
               font-size: 20px
	    } 
	    .der{
	      text-align:right;
	    }
	    .izq{
	 	   text-align:left;
	    } 
		.arrow{ 
			cursor:pointer
		} 
		.add{
			height: 16px;
			cursor:pointer;
			margin-left: 20px
		} 
		.config_popup{
			margin: 20px auto;
			display: none;
		}
		.selected{
			/*background-color: orange*/
		}
		 
 
		.punto { 
		  color: black;
		  height: 0px;
		  width:0px;
		  background-color: black;
		  position:absolute;
		}

 		
	 </style>
	 
	 <script language="javascript">
             var config = false;
             var selectedID = false;
             var margin = "";
             var valor_margen = 0;
	     $(function(){
                $(document).keypress(function(e) {
                   var key = e.keyCode;  
                   if(key === 121) { //F10                        
                     config = !config;
                     if(config){ 
                        $(".config_popup").fadeIn();                       
                    }else{
                        $(".config_popup").fadeOut();
                        $(".selected").removeClass("selected");
                        $(".movible").css("background","white");
                    }
                   }
                });
                $(".movible").click(function(){
                    if(config){ 
                        $(".selected").removeClass("selected");
                        $(".movible").css("background","white");
                        selectedID = $(this).attr("id");
                        console.log("click "+selectedID);
                        $("#"+selectedID).addClass("selected");
                        $("#"+selectedID).css("background","orange");
                    }
                });  
		if($("#forma").val() == "Cruzado"){
                   drawLine(1) ; 
                   drawLine(2) ;  				 
		}
            });
            
            function setMargin(marg  ){ 
               margin = marg ;
               valor_margen = parseInt( $("#"+selectedID).css("margin-"+marg).replace("px","")); 
            }             
            function set(add_sub){
                if(add_sub == "+"){
                    valor_margen += 5; 
                }else{
                    valor_margen -= 5;
                }
                $("#"+selectedID).css("margin-"+margin,valor_margen+"px");
                saveInDB();
            }
            function saveInDB(){
                var mtop = $("#"+selectedID).css("margin-top");
                var mright = $("#"+selectedID).css("margin-right");
                var mbottom = $("#"+selectedID).css("margin-bottom");
                var mleft = $("#"+selectedID).css("margin-left");
                
                var all_margin = mtop+" "+mright+" "+mbottom+" "+mleft;
                 $.ajax({
                    type: "POST",
                    url: "include/Ajax.class.php",
                    data: { "action": "save_margins","clave":selectedID,"margins":all_margin},
                    async:true,
                    dataType: "html",
                    beforeSend: function(objeto){  
                        //$("#work_area").html("<img id='loading' src='img/loading.gif'>");
                    },
                    complete: function(objeto, exito){
                        if(exito=="success"){ 
                            //$("#work_area").html(objeto.responseText  );  
                             
                        }
                    }
                });  
            }
			
 

function drawLine(linea) {
	var left = 0;
	if(linea > 1){
		left = -16;
	} 		
	var y = 50;
    for(var i = -30; i < 140;i++){	
        var l = i+left;	
        $("#cruzar").append("<span class='punto' id='p"+i+"' >.</span>");
		$("#p"+i).css("margin-top",y+"px");
		$("#p"+i).css("margin-left",l+"px");
	    y--;
    }
}
			
	 </script>
	 
<!-- end:   general_header -->


<!-- begin: start_query0 -->
  
<!-- end:   start_query0 -->

<!-- begin: header0 -->
 
 
 
<!-- end:   header0 -->

<!-- begin: query0_data_row -->
<table border="0" style="width:100%" cellpadding="0" cellspacing="0">
<tr>
 <td style="width:30px" id="cruzar">
    
 <td>
<td> 
<div class="der" style="border:solid gray 0px"><div class="movible" style="border:solid gray 1px;width:114px;text-align: left;margin:{conf_valor_numero}" data-conf="right" id="valor_numero">{query0_chq_valor}.---</div></div> 
<div class="der">
    <span class="movible" style="margin:{conf_fecha_emis}" data-conf="right" id="fecha_emis"> {query0_chq_fecha_emis} </span>  
    <span class="movible" style="margin:{conf_fecha_pago}" data-conf="right" id="fecha_pago"> {query0_chq_fecha_pag} </span>
</div>        
        <div class="izq"><div  class="movible"  style="font-size:16px;margin:{conf_benef}" data-conf="left" id="benef"> {query0_chq_benef}{rayas} </div></div>       
        <div class="izq"><span class="movible" style="line-height: 18pt;font-size:14px;margin:{conf_valor_letras}" data-conf="left" id="valor_letras">{espacio_moneda} {letras}.-----</span>   </div> 
		</td>
</tr>
</table>
<input type="hidden" id="forma" value="{forma}">		
<!-- end:    query0_data_row -->
<!-- begin: query0_total_row -->
         
<!-- end:    query0_total_row -->
<!-- begin: query0_subtotal_row -->
        
<!-- end:    query0_subtotal_row -->
<!-- begin: end_query0 -->
 
    <table border="0" class="config_popup">
        <tr>
            <td></td><td><img class="arrow_up arrow" src="images/arrow-up.png" onclick=setMargin("top") ></td><td></td>  <td><img class="add" src="images/add.png" onclick=set("+") ></td>          
        </tr>
        <tr>
            <td><img class="arrow_left arrow" src="images/arrow-left.png" onclick=setMargin("left") ></td><td></td><td><img class="arrow_right arrow" src="images/arrow-right.png" onclick=setMargin("right") ></td>            
        </tr>
        <tr>
            <td></td><td><img class="arrow_down arrow" src="images/arrow-down.png" onclick=setMargin("bottom") ></td><td></td> <td><img class="add" src="images/sub.png" onclick=set("-") ></td>           
        </tr>
    </table> 
   
<script>
  //self.print();  
</script>
<!-- end:   end_query0 -->

