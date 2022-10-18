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

		$query = "SELECT * FROM produtos p INNER JOIN categorias c ON p.pro_categoria = c.cate_id";	
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
          'cate_nome' => $lista['cate_nome'] , 
         'cate_id'   => $lista['cate_id'] ,  
                    
            
        );
        
        
            $i++;
        
        endwhile;
        }


}