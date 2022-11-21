<!DOCTYPE html>

<html>
    <head>
        <title>{$SITE_NOME}</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="{$GET_TEMA}/tema/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="{$GET_TEMA}/tema/js/jquery-2.2.1.min.js" type="text/javascript"></script>
        <script src="{$GET_TEMA}/tema/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- meu aquivo pessoal de CSS-->
        <link href="{$GET_TEMA}/tema/css/tema.css" rel="stylesheet" type="text/css"/>
        <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
        <!-- ALERTA: Respond.js não funciona se você visualizar uma página file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    
    </head>
          <body style="background: #fff;">
        
        <!-- começa  o container geral -->
        <div class="container-fluid">
            
            <!-- começa a div topo -->
            <div class="row" id="topo">
                 
                
                <div class="container">
                    <center>
                        <div class="col-md-6">
                  <a href="index.php"><img id="logotipo" src="https://adegaunibeer.caiorodriguesportfolios.com.br/unibeerlogo.png" width="450px" style="margin-left:70%;" alt="unibeer"></a>

                 <a href="index.php"><img id="logotipo2" src="https://adegaunibeer.caiorodriguesportfolios.com.br/unibeerlogo.png" width="450px" style="display:none;" alt="unibeer"></a>

                    </div>
                    </center>
                   <script>
                    // let h_s; 
                    // h_s = document.createElement('h2'); 
                    // document.getElementsByTagName('body')[0].appendChild(h_s)


                       setInterval(() => {
                           // h_s.innerHTML =  screen.width + '<br/> width: ' + innerWidth + ' height: ' + innerHeight;
                           if (screen.width >= 1280) {
                            document.querySelector('#logotipo').style.marginLeft = 65 + '%';
                             document.querySelector('#logotipo').style.width = 490 + 'px';

                           } else{
                           

                            document.querySelector('#logotipo2').style.marginLeft = (-20) + 'px';
                            document.querySelector('#logotipo2').style.width = 300 + 'px';
                           }

                           if(innerWidth <= 990){
                            document.querySelector('#logotipo').style.display = 'none';
                            document.querySelector('#logotipo2').style.display = 'inline-block';
                           } else {
                              document.querySelector('#logotipo').style.display = 'inline-block';
                            document.querySelector('#logotipo2').style.display = 'none';
                           }

                       })
                   </script>
                    <div class="col-md-6 text-right" style="color:#000;">
                                         
                    {if $LOGADO == true}
                     Olá: {$USER} <a href="{$PAG_LOGOFF}" class="btn btn-cssc"><i class="glyphicon glyphicon-log-out"></i> Sair da conta </a>
                    {/if}       
                                            
                    </div>
                </div>    
            
            </div><!-- fim da div topo -->
 
            <!-- começa a barra MENU-->
            <div class="row" id="barra-menu">
                
                <!--começa navBAR-->
                <nav style="background:#202377;"  class="navbar navbar-inverse">
                    
                    <!-- container navBAr-->
                    <div class="container">
                        <!-- header da navbar-->
                        <div class="navbar-header">
                           <!-- botao que mostra e esconde a navbar--> 
                           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                               <span class="sr-only">Toggle navigation</span>
                               <span class="icon-bar"></span>
                               <span class="icon-bar"></span>
                               <span class="icon-bar"></span>
                           </button>
                        
                        </div><!--fim header navbar-->  
                                     
               
                        <div style="background:#202377;" class="collapse navbar-collapse" id="navbar">
                            <ul class="nav navbar-nav">
  <li><a href="{$GET_SITE_HOME}"><i class="glyphicon glyphicon-home"></i> Home </a> </li>
  <li><a href="{$PAG_PRODUTOS}"><i class="glyphicon glyphicon-barcode"></i> Produtos </a> </li>
               
  <li><a href="{$PAG_CLIENTE_CONTA}"><i class="glyphicon glyphicon-user"></i> Minha Conta </a> </li>
  <li><a href="{$PAG_CARRINHO}"><i class="glyphicon glyphicon-shopping-cart"></i> Carrinho </a> </li>
  <li><a href="{$PAG_CONTATO}" ><i class="glyphicon glyphicon-envelope"></i> Contato </a> </li>
   <li><a href="{$PAG_LOCALIZACAO}"><i class="glyphicon glyphicon-map-marker"></i> Localização </a> </li>                         
                              
                                
                            </ul>

                            

                            <form class="navbar-form navbar-right" role="search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Digite para buscar" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Buscar</button>
                            </form>
                            
                         </div><!-- fim navbar collapse-->   


                    </div> <!--fim container navBar-->
                    
                </nav><!-- fim da navBar-->   
                                               
                
            </div> <!-- fim barra menu--> 
       
            <!-- começa DIV conteudo-->
            <div class="row" id="conteudo">
            
            <div class="container"> 
              
                <!-- coluna da esquerda -->
                <div  class="col-md-2" id="lateral">
                    
                <div class="list-group">
                    <span class="list-group-item active"> Categorias</span>

                    <a href="{$PAG_PRODUTOS}?c=todos" class="list-group-item">
                        <span class="glyphicon glyphicon-menu-right"></span>Todos</a> 

                    {foreach from=$CATEGORIAS item=C}



                    <a href="{$C.cate_link}?w={$C.cate_nome}" class="list-group-item">
                        <span class="glyphicon glyphicon-menu-right"></span> {$C.cate_nome}</a> 

                    {/foreach}
                    
                </div><!--fim da list group-->              
                              
                </div> <!-- finm coluna esquerda -->  
                
                <!-- coluna direita CONTEÚDO CENTRAL -->
                <div class="col-md-10">
                    
                    
                    <ul class="breadcrumb">
                        <li><a href="#"><i class="glyphicon glyphicon-home"></i> Home </a></li>
                        <li><a href="#"> Produtos </a></li>
                        <li><a href="#"> Info </a></li>
                        <li>Hoje é {$DATA}</li>
                    </ul>   
                    <!-- fim do menu breadcrumb-->             
 
                    {php}
                    Rotas::get_Pagina();
                   // var_dump(Rotas::$pag);
                    {/php}



                  
                    
                </div>  <!--fim coluna direita-->  
            
            </div>   
                
  
                
                
                
            </div><!-- fim DIV conteudo-->
             <hr/>
            <style>
                h3 img{
                    width: 40px;
                }
            </style>
        <h5>🔞 Venda proibida para menores de 18 anos. Aprecie com moderação. Se beber não dirija!</h5>
       <h3>Pagamento: 
       <img src="https://superadega.vteximg.com.br/arquivos/pag_master.png?v=637043387616270000">
       <img src="https://superadega.vteximg.com.br/arquivos/pag_visaelectron.png?v=637838107811670000">
       <img src="https://superadega.vteximg.com.br/arquivos/pag_dinners.png?v=637043387596030000">
       <img src="https://superadega.vteximg.com.br/arquivos/pag_amex.png?v=637043387576330000">
       <img src="https://superadega.vteximg.com.br/arquivos/pag_elo.png?v=637043387605570000">
       <img src="https://superadega.vteximg.com.br/arquivos/pag_debito.png?v01">
       <img src="https://superadega.vteximg.com.br/arquivos/pag_pix.png?v=637581688791300000">
       <img style="width: 100px;" src="https://superadega.vteximg.com.br/arquivos/pag_2cartoes.png?v=637838326242970000">
       </h3>
              <br><br>
            <!-- começa div rodape -->
            <div class="row" id="rodape">
                <center>

                    <div style="width: 70%;margin: 15px;">
                Seja bem-vindo a maior loja on-line de bebidas de qualidade. Adega UniBeer Ltda-02 | CNPJ: 42.587.316/0001-59 | Inscrição Estadual:  606.934.862.680 Endereço: Rua Amador Bueno, 392 - Santo Amaro | 04752-005 | São Paulo - SP | SAC: adegaunibeer@contato.com.br 
                <br/>
                {$SITE_NOME}
                    </div>
             
                </center>
            
            </div><!-- fim div rodape-->
            
            
            
           </div> <!-- fim do container geral -->
        
    </div>
        
        
    </body>
</html>
