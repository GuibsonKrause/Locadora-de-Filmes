<%-- 
    Document   : DesativarCliente
    Created on : 03/04/2018, 09:36:03
    Author     : 2016122760198
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Desativar Cliente</title>

  <!-- Bootstrap -->
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/jquery.bxslider.css">
        <link rel="stylesheet" type="text/css" href="../css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="../css/animate.css">
        <link rel="stylesheet" href="../js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/dropdown.css" rel="stylesheet" type="text/css"/>

    </head>
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
                                                <a href="../Devolucao/Devolução.jsp">Efetuar Devolução</a>
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

        <div class="container-fluid">
            <div class="row">
                <form class="form-horizontal">
                 <fieldset>

                        <br></br>
                        <!-- Form Name -->
                        <h2 style="text-align: center;">Desativar Cliente</h2>
                        <br></br>

                 

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Cliente">Cliente</label>
                            <div class="col-md-4">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Nº</th>
                                            <th>Nome</th>
                                            <th>CPF</th>
                                            <th>Telefone</th>
                                            <th>Endereço</th>
                                            <th>Selecione</th>
                                        </tr>
                                    </thead>
                                    <tbody style="text-align: center">
                                        <tr>
                                            <td>1</td>
                                            <td>Nome 1</td>
                                            <td>CPF 1</td>
                                            <td>Telefone 1</td>
                                            <td>Endereço 1</td>
                                            <td><input type="radio" name="DesaCliente" value="Selecione" </</tr>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Nome 2</td>
                                            <td>CPF 2</td>
                                            <td>Telefone 2</td>
                                            <td>Endereço 2</td>
                                              <td><input type="radio" name="DesaCliente" value="Selecione" </</tr>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Nome 3</td>
                                            <td>CPF 3</td>
                                            <td>Telefone 3</td>
                                            <td>Endereço 3</td>
                                              <td><input type="radio" name="DesaCliente" value="Selecione" </</tr>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        

                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-md-5 control-label" for=""></label>
                            <div class="col-md-5">
                                <div class="ficon">
                                    <a href="#" class="btn btn-default" role="button">Desativar</a>
                                     <a href="../Admin/Admin.html" class="btn btn-default" role="button">Cancelar</a>

                                </div>
                            </div>
                        </div>
                        
                    </fieldset>
                </form>
            </div>
            <br></br>
        </div>
      <footer>
            <div class="inner-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 f-about">
                            <a href="index.jsp"><h1><span>L</span>ocadora</h1></a>
                            <p>Melhores fimes, lançamentos você encontra</p>

                        </div>
                        <div class="col-md-4 l-posts">
                            <h3 class="widgetheading"></h3>

                        </div>
                        <div class="col-md-4 f-contact">
                            <h3 class="widgetheading">Contatos</h3>
                            <a href="#"><p><i class="fa fa-envelope"></i> locadora@loc.com</p></a>
                            <p><i class="fa fa-phone"></i>  +000 000 000</p>
                            <p><i class="fa fa-home"></i> Locadora   |  Nº 00
                                Colatina | Centro, Espiríto Santo <br>
                                Brasil</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="last-div">
                <div class="container">
                    <div class="row">
                        <div class="copyright">
                            © 2018 Locadora| <a href="http://bootstraptaste.com">Bootstraptaste</a>
                        </div>

                        <div class="clear"></div>
                    </div>
                </div>

            </div>		
        </footer>



        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->	
        <script src="js/jquery-2.1.1.min.js"></script>	
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/fancybox/jquery.fancybox.pack.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.bxslider.min.js"></script>
        <script src="js/functions.js"></script>
        <script>
            wow = new WOW(
                    {

                    })
                    .init();
        </script>

    </body>
</html>
