<?php 

/**
 * descricao Carrinho
 * 
 * @author Caio Rodrigues
 * 
 * */
 
class Carrinho{

	/**
	 * 
	 * @var float : armazena o valor total dos itens do carrinho 
	 * */

	private $total_Valor;

	/**
	 * 
	 * @var float : peso total dos itens
	 * */
	private $total_Peso;

	/**
	 * 
	 * @var array : todos os itens do carrinho
	 * */
	private $itens=array();
	
	function GetCarrinho($sessao=null){

		$i = 1; $sub = 0; $peso = 0;

		foreach($_SESSION['PRO'] as $lista):
		 
		 
		$this->itens[$i] = array(
			'pro_id'    => $lista['ID'],
			'pro_nome'  => $lista['NOME'],
			'pro_valor' => $lista['VALOR'],
			'pro_peso'  => $lista['PESO'],
			'pro_qtd'   => $lista['QTD'],
			'pro_img'   => $lista['IMG'],
			'pro_link'  => $lista['LINK'],
			'pro_subTotal'  => $sub
			);

	 
			$i++;
		endforeach;

		if(count($this->itens) > 0):
				return $this->itens;
		else:
			echo 'Sem produtos no Carrinho';
		endif;

	}


}