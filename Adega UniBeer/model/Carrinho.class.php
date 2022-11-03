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

		// calculo o subtotal do item
		$sub = ($lista['VALOR_US'] * $lista['QTD']);
		$this->total_Valor += $sub;

		// gero meu array dos itens
		$this->itens[$i] = array(
			'pro_id'    => $lista['ID'],
			'pro_nome'  => $lista['NOME'],
			'pro_valor' => $lista['VALOR'], // 1.000,99
			'pro_valor_us' => $lista['VALOR_US'], // 1000.99
			'pro_peso'  => $lista['PESO'],
			'pro_qtd'   => $lista['QTD'],
			'pro_img'   => $lista['IMG'],
			'pro_link'  => $lista['LINK'],
			'pro_subTotal'  => Sistema::MoedaBR($sub),
			'pro_subTotal_us'  => $sub
			);

	 	
			$i++;

		endforeach;

		if(count($this->itens) > 0):
				return $this->itens;
		else:
			echo 'Sem produtos no Carrinho';
		endif;

	}

	/**
	 * @return float : total do carrinho
	 * */
	function GetTotal(){
		return $this->total_Valor;
	}

}