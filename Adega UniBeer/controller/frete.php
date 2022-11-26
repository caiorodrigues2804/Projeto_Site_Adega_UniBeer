<?php

 

require_once '../lib/autoload.php';

        //instancio a classe correios
        $destino = $_GET['cepcliente'];
        $peso    = $_GET['pesofrete'];
        $ValorDeclarado = $_GET['ValorDeclarado'];

        // print $destino . '/' . $peso;
        $ValorDeclarado = intval($ValorDeclarado);

        // print '<br/>Valor antes: ' . $ValorDeclarado;
        if ($ValorDeclarado < 24) {
          $ValorDeclarado = ((int)24 + (int)$ValorDeclarado);    
          // print '<br/> Entrou na condicional </br>';
        } 
        // print 'Valor depois: ' . $ValorDeclarado . '<br/>';

$CEPS =  $destino;  
$CEPSLENS = strlen($CEPS);
 

if($CEPSLENS == 8){
    // print '<p style="color: green;"> CEP está válida </p>';
    function calcular_frete($cep_origem,
    $cep_destino,
    $peso,
    $valor,
    $tipo_do_frete,
    $altura = 6,
    $largura = 20,
    $comprimento = 20){
    
    $url = "http://ws.correios.com.br/calculador/CalcPrecoPrazo.aspx?";
    $url .= "nCdEmpresa=";
    $url .= "&sDsSenha=";
    $url .= "&sCepOrigem=" . $cep_origem;
    $url .= "&sCepDestino=" . $cep_destino;
    $url .= "&nVlPeso=" . $peso;
    $url .= "&nVlLargura=" . $largura;
    $url .= "&nVlAltura=" . $altura;
    $url .= "&nCdFormato=1";
    $url .= "&nVlComprimento=" . $comprimento;
    $url .= "&sCdMaoProria=n";
    $url .= "&nVlValorDeclarado=" . $valor;
    $url .= "&sCdAvisoRecebimento=n";
    $url .= "&nCdServico=" . $tipo_do_frete;
    $url .= "&nVlDiametro=0";
    $url .= "&StrRetorno=xml";
    
    // Sedex: 40010
    // Pac: 41106
    
    $xml = simplexml_load_file($url);
    
    return $xml->cServico;  
} 

$val = (calcular_frete($CEPS,'04752005',1,$ValorDeclarado,'40010'));
$val_2 = (calcular_frete($CEPS,'04752005',1,$ValorDeclarado,'41106'));
$Valor_sedex = (($val->Valor == 0) ? 'Valores não disponível' : $val->Valor);
$Valor_pac   =  (($val_2->Valor == 0) ? 'Valores não disponível' : $val_2->Valor);

 
 echo '<br/><input class="pac_01" id="pac" style="font-size:18px;" type="radio" name="radios" required id="frete_radio"><label class="pac_01" id="pac_valor_d" style="font-size:18px;" >&nbsp; R$&nbsp;'. $Valor_pac  . ' : PAC </label><p class="pac_01" style="margin-right:40px;">Prazo de entrega: ' . ($val_2->PrazoEntrega) . ' dia(s)</p>';

 echo '<br/><input class="sedex_01" id="sedex"  type="radio" style="font-size:18px;" name="radios"  required id="frete_radio"><label class="sedex_01" id="sedex_valor_d" style="font-size:18px;">&nbsp; R$&nbsp;' . $Valor_sedex  . ' : SEDEX</label><p class="sedex_01" style="margin-right:40px;">Prazo de entrega: ' . ($val->PrazoEntrega) . ' dia(s)</p><br/>';

  //                             echo '<br> <input type="radio"  required id="frete_radio" name="frete_radio" value="'.str_replace(',','.',$frete['valor']).'" > '.$frete['valor'].' : ' .$frete['tipo'].' - Prazo: ' .$frete['Prazo'].' dia(s)</b>';
 echo "<input type='hidden' value=" . $Valor_sedex . " id='sedex_valor'>";
 echo "<input type='hidden' value=" . $Valor_pac . " id='pac_valor'>";

} else{
    print '<br/><p style="color: red;"> CEP está inválida </p>';
   
}

?>
 <script>

   let sedex_valor,pac_valor,frete_hs,dados_vl;
   sedex_valor = document.querySelector(".sedex_01");
   pac_valor = document.querySelector(".pac_01");
   dados_vl = document.querySelector('#c_s').innerText;

   let dados_vlL;
   dados_vlL = dados_vl.replace('R$','').trim();
   dados_vlL = dados_vlL.replace(',','.');
   dados_vlL = parseFloat(dados_vlL);
   // console.log(dados_vlL, ' TIPO:', typeof dados_vlL);

   //  ----- VALORES ----- //
   let sedex_val, pac_val;
   pac_val = document.querySelector('#pac_valor').value;
   sedex_val = document.querySelector('#sedex_valor').value;

   pac_val = pac_val.replace(',','.');
   sedex_val = sedex_val.replace(',','.');
   pac_val = parseFloat(pac_val);
   sedex_val = parseFloat(sedex_val);

   let resultado_A,resultado_B;

   // SEDEX
   resultado_A = (dados_vlL + sedex_val);
   resultado_B = (dados_vlL + pac_val);
   
   
   resultado_A = resultado_A + '';
   resultado_B = resultado_B + '';
   
   resultado_A = resultado_A.slice(0, 5);
   resultado_B = resultado_B.slice(0, 5);
   
   console.log('Resultado SEDEX: ',resultado_A);
   console.log('Resultado PAC: ',resultado_B);

   // DEBUGGING
   // console.log('Pac:',pac_val,' Sedex:',sedex_val);
   // console.log('Pac tipo:',typeof pac_val,' Sedex:',typeof sedex_val);

   // ------------------- //


   frete_hs = document.querySelector("#valores");
   frete_hs.innerHTML = '<b>Valor total: </b>' + dados_vl;

   // ----- CONVERSOR ----- // 

  // PAC VALOR
  let pac_val_l; 
  pac_val_l = (pac_val + '');
  pac_val_l = pac_val_l.replace('.',',');  

  // PAC RESULTADO
  let pac_resultado_B = (resultado_B + '');
  pac_resultado_B = pac_resultado_B.replace('.',',');  

  // SEDEX VALOR
  let sedex_val_l; 
  sedex_val_l = (sedex_val + '');
  sedex_val_l = sedex_val_l.replace('.',',');  

  // SEDEX RESULTADO
  let sedex_resultado_A = (resultado_A + '');
  sedex_resultado_A = sedex_resultado_A.replace('.',',');  
  

   // ------------------- //

   // ---- SELECIONADOR GERAL ---- //

  let selecionador_geral = 0;

  // ----------------------------- //

   setInterval(() => {

      // SEDEX FOI MARCADO
      if(document.getElementById('sedex').checked == true){
          frete_hs.innerHTML = '<b>Valor total: </b>' + dados_vl.slice(0,9)  + '<br/><b>Frete: </b>R$ ' + sedex_val_l + '<hr/><b> Valor final: </b>R$ ' + sedex_resultado_A.slice(0,5);  

          document.querySelector("#confirmar_pedidos").style.display = 'inline-block';

          selecionador_geral = 2 //SEDEX
          
      }

      // PAC FOI MARCADO
      if(document.getElementById('pac').checked == true){
        frete_hs.innerHTML = '<b>Valor total: </b>' + dados_vl.slice(0,9) + '<br/><b>Frete: </b>R$ ' + pac_val_l + '<hr/><b> Valor final: </b>R$ ' + pac_resultado_B.slice(0,5);  

        document.querySelector("#confirmar_pedidos").style.display = 'inline-block';

        selecionador_geral = 1 //PAC
        
      }
      
   })
    

    
    document.querySelector('#confirmar_pedidos').addEventListener('click',()  => {

      if (selecionador_geral == 1) {
     
        document.querySelector('#pedido_finalizar').action += '?preco=' + dados_vlL + '&frete=' + pac_val + '&valor_total=' + resultado_B;  
      } 

      if (selecionador_geral == 2) {
        document.querySelector('#pedido_finalizar').action += '?preco=' + dados_vlL + '&frete=' + sedex_val + '&valor_total=' + resultado_A;  
      }
      
      })

</script>