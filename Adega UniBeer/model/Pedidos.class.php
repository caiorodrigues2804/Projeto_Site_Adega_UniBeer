<?php 

/**
 * 
 * descrição Pedidos
 * @author Caio Rodrigues
 * */

class Pedidos extends Conexao{

	function __construct(){
		parent::__construct();
	}

	function PedidoGravar($cliente,$cod,$ref,$freteValor=null,$freteTipo=null){
 

	$params = array(
			':data' => Sistema::DataAtualUS(), 
			':hora' => Sistema::HoraAtual(),
			':cliente'=> (int)$cliente,	
			':cod' => $cod,
			':ref' => $ref,
			':frete_valor'=> $freteValor,
			':frete_tipo' => $freteTipo
	);

	$datas = $params[':data'];
	$horas = $params[':hora'];
	$clientes = $params[':cliente'];
	$cods = $params[':cod'];
	$refs = $params[':ref'];
	$frete_valors = $params[':frete_valor'];
	$frete_tipo = $freteTipo;
 
    $query = "INSERT INTO `{$this->prefix}pedidos` (`ped_data`, `ped_hora`, `ped_cliente`, `ped_cod`,`ped_ref`,`ped_frete_valor`,`ped_frete_tipo`) VALUES ('$datas', '$horas', '$clientes', '$cods','$refs','$frete_valors','$frete_tipo')";

	 // grava o pedido
	$this->ExecuteSQL($query,$params);
	// grava os itens deste pedido
	$this->ItensGravar($cod);

 	$retorno = TRUE;

 	return $retorno;


 
	}

	/**
	 * 
	 * gravar os itens do pedido
	 * #param string $codepedido
	 * */

	function ItensGravar($codpedido){
 	$carrinho = new Carrinho();
 	
	// print ' Funcionando';
	// print (($query == '') ? ' Vazio' : ' Com itens');
	$query ="";
	foreach ($carrinho->GetCarrinho() as $item):

		
		
		$params = array(
			':produto' => $item['pro_id'],
			':valor' => $item['pro_valor_us'],
			':qtd' => (int)$item['pro_qtd'],
			':cod' => $codpedido
		);


	$produtos = $params[':produto'];
	$valores = $params[':valor'];
	$qtd = $params[':qtd'];
	$cods = $params[':cod'];

	
	// print '<br/>' . $cods . ' '. $qtd .' R$ '. $valores .' Qtd(s) ' . $qtd;
 
    $query = "INSERT INTO `{$this->prefix}pedidos_itens` (`item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES ('$produtos', '$valores', '$qtd', '$cods')";
    print '<br/>'. $query . '<br/><br/>';

	$this->ExecuteSQL($query,$params);


	endforeach;
	}

	/***
	 * 
	 * Limpar sessão do pedido e itens do carrinho 
	 * */

	function LimparSessoes(){

		unset($_SESSION['PRO']);
		unset($_SESSION['pedido']);

	}

}