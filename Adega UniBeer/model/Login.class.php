<?php 

/**
 *descrição Login
 * 
 * @author Caio Rodrigues
 * */

class Login extends Conexao{

	private $user;
    private $senha;

    function __construct(){
        parent::__construct();
    }

    /**
     * 
     * @param string $user
     * @param string $senha
     * 
     * */

    function GetLogin($user,$senha){

        $this->setUser($user);
        $this->setSenha($senha);
       

        $params = array(
            ':email'=>$this->getUser(),
            ':senha'=>$this->getSenha()
        );
        $emails = $params[':email'];
        $senhas = $params[':senha'];
 
        $query = "SELECT * FROM `{$this->prefix}clientes` WHERE `cli_email` = '$emails' AND `cli_pass` = '$senhas'";
        // print $this->ExecuteSQL($query);

        $this->ExecuteSQL($query,$params);

        // caso o login seja efetivado com exito
        if($this->TotalDados() > 0):

            $lista = $this->ListarDados();

            $_SESSION['CLI']['cli_id']         = $lista['cli_id'];
            $_SESSION['CLI']['cli_nome']       = $lista['cli_nome'];
            $_SESSION['CLI']['cli_sobrenome']  = $lista['cli_sobrenome'];
            $_SESSION['CLI']['cli_endereco']   = $lista['cli_endereco'];
            $_SESSION['CLI']['cli_numero']     = $lista['cli_numero'];
            $_SESSION['CLI']['cli_bairro']     = $lista['cli_bairro'];
            $_SESSION['CLI']['cli_cidade']     = $lista['cli_cidade'];
            $_SESSION['CLI']['cli_uf']         = $lista['cli_uf'];
            $_SESSION['CLI']['cli_cpf']        = $lista['cli_cpf'];
            $_SESSION['CLI']['cli_cep']        = $lista['cli_cep'];
            $_SESSION['CLI']['cli_rg']         = $lista['cli_rg'];
            $_SESSION['CLI']['cli_ddd']        = $lista['cli_ddd'];
            $_SESSION['CLI']['cli_fone']       = $lista['cli_fone'];
            $_SESSION['CLI']['cli_email']      = $lista['cli_email'];
            $_SESSION['CLI']['cli_celular']    = $lista['cli_celular'];
            $_SESSION['CLI']['cli_data_nasc']  = $lista['cli_data_nasc'];
            $_SESSION['CLI']['cli_data_cad']   = $lista['cli_data_cad'];
            $_SESSION['CLI']['cli_pass']       = $lista['cli_pass'];
            $_SESSION['CLI']['cli_celular']    = $lista['cli_celular'];


        // echo 'logado com sucesso';

        // caso o login seja incorreto
        else:

        // echo 'O login não foi efetivado';

        endif;

    }

    /**
     * Faz logoff do usuário e volta para home
     * */
    static function Logoff(){

        unset($_SESSION['CLI']);
        Rotas::Redirecionar(1, Rotas::get_SiteHOME());

    }

    /**
     * @return Bolean se está logado ou não
     * */

    static function Logado(){
        
        if(isset($_SESSION['CLI']['cli_email']) && isset($_SESSION['CLI']['cli_id'])):

            return TRUE;
        else:
            return FALSE;            

        endif;  
    }

    /**
     * Mostra aviso para fazer Login e o botão
     * */

    static function AcessoNegado(){

        echo '<div class="alert alert-danger"><a href="' . Rotas::pag_ClienteLogin() . '" class="btn btn-danger">Login</a> Acesso negado. Faça o login </div>';

    }


    /**
     * @param $user
     * */

    private function setUser($user){
        $this->user = $user;
    }

    /**
     * @param senha $senha
     * */

    private function setSenha($senha){
        $this->senha = $senha;
    }

    /**
     * @return string user
     * */
    function getUser(){
        return $this->user;
    }

    /**
     * @return string senha
     * */
    function getSenha(){
        return $this->senha;
    }

}
