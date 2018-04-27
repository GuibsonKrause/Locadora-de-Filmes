<%-- 
    Document   : cabecalho
    Created on : 10/04/2018, 11:00:13
    Author     : bianc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <!--
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap 
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/jquery.bxslider.css">
        <link rel="stylesheet" type="text/css" href="../css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="../css/animate.css">
        <link rel="stylesheet" href="../js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/dropdown.css" rel="stylesheet" type="text/css"/>
-->
    
    <body>
        <header>
            <nav div class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="container">

                    <ul class="info">
                        <li><p><i class="fa fa-phone"></i>00000000</p></li>
                        <li><a href="#"><i class="fa fa-envelope"></i>locadora@Loc.com</a></li>
                    </ul>
                </div>
            </nav>

            <nav class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="navigation">
                    <div class="container">					
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="navbar-brand">
                                <a href="../Admin/Admin.html"><h1><span>L</span>ocadora</h1></a>
                            </div>
                        </div>

                        <div class="navbar-collapse collapse">							
                            <div class="menu">
                                <ul class="nav nav-tabs" role="tablist">

                                    <li class="dropdown" ><a class="nav-link dropdown-toggle" href="../Admin/Admin.html" id="navbardrop" data-toggle="dropdown" >Controle de Locações</a>

                                        <div class="dropdown-content">
                                            <a href="../Locacao/Nova_Locação.jsp">Efetuar Locação</a>
                                            <a href="../Devolucao/Devolucao.jsp">Efetuar Devolucão</a>
                                        </div>
                                      

                                    </li>
                                    <li class="dropdown" ><a class="nav-link dropdown-toggle" href="../Admin/Admin.html" id="navbardrop" data-toggle="dropdown" >Cadastrar</a>

                                        <div class="dropdown-content">
                                            <a href="../Ator/CadastrarAtor.jsp">Cadastrar Ator</a>
                                            <a href="../Classe/CadastrarClasse.jsp">Cadastrar Classe</a>
                                            <a href="../Item/CadastrarItem.jsp">Cadastrar Item</a>
                                            <a href="../Titulo/CadastrarTitulo.jsp">Cadastrar Título</a>
                                            <a href="../Diretor/CadastrarDiretor.jsp">Cadastrar Diretor</a>
                                        </div>

                                    </li>
                                    <li class="dropdown" ><a class="nav-link dropdown-toggle" href="../Admin/Admin.html" id="navbardrop" data-toggle="dropdown" >Modificar</a>

                                        <div class="dropdown-content">
                                            <a href="../Ator/Alterar_Ator.jsp">Ator</a>
                                            <a href="../Classe/Alterar_Classe.jsp">Classe</a>
                                            <a href="../Item/Alterar_Item.jsp">Item</a>
                                            <a href="../Titulo/Alterar_Titulo.jsp">Título</a>
                                            <a href="../Locacao/AlterarLocaçao.jsp">Locação</a>
                                            <a href="../Diretor/Alterar_Diretor.jsp">Diretor</a>
                                        </div>

                                    </li>
                                    <li class="dropdown" ><a class="nav-link dropdown-toggle" href="../Admin/Admin.html" id="navbardrop" data-toggle="dropdown" >Cliente</a>

                                        <div class="dropdown-content">
                                            <a href="../Cliente/CadastrarCliente.jsp">Cadastrar Cliente</a>
                                            <a href="../Cliente/AlterarCliente.jsp">Alterar/Excluir Cliente</a>
                                            <a href="../Cliente/AtivarCliente.jsp">Ativar Cliente</a>
                                            <a href="../Cliente/DesativarCliente.jsp">Desativar Cliente</a>
                                            <a href="../Cliente/CadastrarDependentes.jsp">Cadastrar Dependentes</a>
                                        </div>

                                    </li>
                                    <ul class="nav navbar-nav pull-right">
                                        <li class=""><a href="../Admin/login.html"><span class="glyphicon glyphicon-off"></span>Sair</a></li>
                                    </ul>
                                </ul>
                            </div>
                        </div>						
                    </div>
                </div>	
            </nav>		
        </header>
    </body>
