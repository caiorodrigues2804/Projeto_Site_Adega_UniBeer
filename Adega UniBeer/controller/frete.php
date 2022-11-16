<?php

require_once '../lib/autoload.php';

        //instancio a classe correios
        $destino = $_GET['cepcliente'];
        $peso    = $_GET['pesofrete'];

	// chamando a classe Correios
        $frete = new Correios($destino, $peso);
	
	//chamo meu metodo para calcular
	$calc = $frete->Calcular();
	
	//verifica se foi calculado, se sim retorna xml , caso não, mostra erros
	if(!$calc):
	
		$error = $frete->error();
		echo $error[0];
	
	else:
	
		echo  '<span class="frete" style=" font-size: 18px;  font-weight: bold">';
            foreach ($frete->frete as $frete):
            
                             
            if($frete['erro'] != 0):
                echo '<b>Erro no calculo de frete, verifique o CEP corretamente</b>';
            
            else:
                
                  echo '<br> <input type="radio"  required id="frete_radio" name="frete_radio" value="'.$frete['valor'].'" > '.$frete['valor'].' : ' .$frete['tipo'].' - Prazo: ' .$frete['Prazo'].' dia(s)</b>';
             
            
            endif;
              
            endforeach;

            echo '</span>';
      
	  endif;
        
	
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