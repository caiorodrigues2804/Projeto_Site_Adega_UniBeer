<?php
require_once '../lib/autoload.php';

        //instancio a classe correios
        $destino = $_GET['cepcliente'];
        $peso    = $_GET['pesofrete'];

        // print $destino . '/' . $peso;
 

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

$val = (calcular_frete($CEPS,'04752005',2,1000,'40010'));
$val_2 = (calcular_frete($CEPS,'04752005',2,1000,'41106'));
$Valor_sedex = (($val->Valor == 0) ? 'Valores não disponível' : $val->Valor);
$Valor_pac   =  (($val_2->Valor == 0) ? 'Valores não disponível' : $val_2->Valor);


 echo '<br/><input style="font-size:18px;" type="radio" name="radios" required id="frete_radio"><label style="font-size:18px;" >&nbsp; R$&nbsp;'. $Valor_pac  . ' : PAC </label> <br/> Prazo de entrega: ' . ($val_2->PrazoEntrega) . ' dia(s)<br/>';
 echo '<br/><input type="radio" style="font-size:18px;" name="radios"  required id="frete_radio"><label style="font-size:18px;">&nbsp; R$&nbsp;' . $Valor_sedex  . ' : SEDEX</label> <br/>  Prazo de entrega: ' . ($val->PrazoEntrega) . ' dia(s)<br/>';

  //                             echo '<br> <input type="radio"  required id="frete_radio" name="frete_radio" value="'.str_replace(',','.',$frete['valor']).'" > '.$frete['valor'].' : ' .$frete['tipo'].' - Prazo: ' .$frete['Prazo'].' dia(s)</b>';

} else{
    print '<br/><p style="color: red;"> CEP está inválida </p>';
   
}
 
 
 

	// // chamando a classe Correios
  //       $frete = new Correios($destino, $peso);
	
	// //chamo meu metodo para calcular
	// $calc = $frete->Calcular();
	
	// //verifica se foi calculado, se sim retorna xml , caso n�o, mostra erros
	// if(!$calc):
	
	// 	$error = $frete->error();
	// 	echo $error[0];
	
	// else:
	
	// 	echo  '<span class="radio text-danger text-left" > ';
        
        
                      
  //                       foreach ($frete->frete as $frete):


  //                       if($frete['erro'] != 0):
                            
  //                        echo $frete['tipo'] . ' - ';
  //                        echo $frete['Codigo'] . ' - ';
  //                        echo $frete['MsgErro'];
  //                        echo '<br><b> Erro no calculo de frete </b><br>';

  //                       else:

  //                             echo '<br> <input type="radio"  required id="frete_radio" name="frete_radio" value="'.str_replace(',','.',$frete['valor']).'" > '.$frete['valor'].' : ' .$frete['tipo'].' - Prazo: ' .$frete['Prazo'].' dia(s)</b>';


  //                       endif;

  //                       endforeach;

  //           echo '</span><br>';
      
	//   endif;
        
	
        /**

40010 SEDEX Varejo
40045 SEDEX a Cobrar Varejo
40215 SEDEX 10 Varejo
40290 SEDEX Hoje Varejo
41106 PAC Varejo


 oobject(SimpleXMLElement)#1 (1) {
  ["cServico"]=>
  array(2) {
    [0]=>
    object(SimpleXMLElement)#5 (11) {
      ["Codigo"]=>
      string(5) "41106"
      ["Valor"]=>
      string(5) "17,60"
      ["PrazoEntrega"]=>
      string(1) "5"
      ["ValorSemAdicionais"]=>
      string(5) "17,60"
      ["ValorMaoPropria"]=>
      string(4) "0,00"
      ["ValorAvisoRecebimento"]=>
      string(4) "0,00"
      ["ValorValorDeclarado"]=>
      string(4) "0,00"
      ["EntregaDomiciliar"]=>
      string(1) "S"
      ["EntregaSabado"]=>
      string(1) "N"
      ["Erro"]=>
      string(1) "0"
      ["MsgErro"]=>
      object(SimpleXMLElement)#9 (0) {
      }
    }
    [1]=>
    object(SimpleXMLElement)#2 (11) {
      ["Codigo"]=>
      string(5) "40010"
      ["Valor"]=>
      string(5) "19,00"
      ["PrazoEntrega"]=>
      string(1) "1"
      ["ValorSemAdicionais"]=>
      string(5) "19,00"
      ["ValorMaoPropria"]=>
      string(4) "0,00"
      ["ValorAvisoRecebimento"]=>
      string(4) "0,00"
      ["ValorValorDeclarado"]=>
      string(4) "0,00"
      ["EntregaDomiciliar"]=>
      string(1) "S"
      ["EntregaSabado"]=>
      string(1) "S"
      ["Erro"]=>
      string(1) "0"
      ["MsgErro"]=>
      object(SimpleXMLElement)#10 (0) {
      }
    }
  }
} 
 
 *  /
 */