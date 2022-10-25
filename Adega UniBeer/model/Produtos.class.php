<?php 

/**
 * 
 * descricao Produtos
 * 
 * @author Caio Rodrigues
 * */

class Produtos extends Conexao{
	
	function __construct(){
		parent::__construct();
	}

	/**
	 * Busca todos os produtos sem filtrar
	 * */

	function GetProdutos(){

		$query = "SELECT * FROM {$this->prefix}produtos p INNER JOIN {$this->prefix}categorias c ON p.pro_categoria = c.cate_id";	
		$this->ExecuteSQL($query);

		$this->GetLista();

	}

	 /**
	  * 
	  * @param INT id do produto
	  * */

	function GetProdutosID($id){

		$query = "SELECT * FROM {$this->prefix}produtos p INNER JOIN {$this->prefix}categorias c ON p.pro_categoria = c.cate_id";	
		$query .= " AND pro_id = {$id}";

		$this->ExecuteSQL($query);

		$this->GetLista();

	}

	 /**
	  * 
	  * @param INT id da categoria
	  * */

	function GetProdutosCate($id){

		$query = "SELECT * FROM {$this->prefix}produtos p INNER JOIN {$this->prefix}categorias c ON p.pro_categoria = c.cate_id";	
		$query .= " AND pro_categoria = {$id}";

		$this->ExecuteSQL($query);

		$this->GetLista();

	}



	/**
	 * retorna o array com os itens da tabela
	 * */

	 private function GetLista(){
        
        $i = 1;
        while ($lista = $this->ListarDados()):
            
        $this->itens[$i] = array(
         'pro_id'    => $lista['pro_id'] ,  
         'pro_nome'  => $lista['pro_nome'] ,  
         'pro_desc'  => $lista['pro_desc'] ,  
         'pro_peso'  => $lista['pro_peso'] ,  
         'pro_valor'  => $lista['pro_valor'],  
         'pro_altura' => $lista['pro_altura'] ,  
         'pro_largura' => $lista['pro_largura'] ,  
         'pro_comprimento' => $lista['pro_comprimento'] ,  
         'pro_img_atual'     => $lista['pro_img'] ,  
         'pro_img'     => Rotas::ImageLink($lista['pro_img']) ,  
         'pro_slug' => $lista['pro_slug'],
         'pro_ref' => $lista['pro_ref'],
         'pro_descricao_extra' => $lista['pro_descricao_extra'],
         'cate_nome' => $lista['cate_nome'] , 
         'cate_id'   => $lista['cate_id'] ,  
                    
            
        );
        
        
            $i++;
        
        endwhile;
        }


}