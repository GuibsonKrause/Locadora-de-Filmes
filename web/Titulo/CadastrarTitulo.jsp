<%-- 
    Document   : CadastrarTitulo
    Created on : 03/04/2018, 09:53:35
    Author     : 2016122760198
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastrar Título</title>

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
        <jsp:include page="../Cabecalho e Rodape/cabecalho.jsp"/> 

        <div class="container-fluid">
            <div class="row">

                <fieldset>

                    <br></br>
                    <!-- Form Name -->
                    <h2 style="text-align: center;">Cadastrar Título</h2>
                    <br></br>
                    <form id="form" action="../ctrCadastrarTitulo" method="post">
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Nome">Nome</label>  
                            <div class="col-md-4">
                                <input id="Nome" name="Nome" type="text" placeholder="Nome" class="form-control input-md" required="">

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="autor">Atores</label>
                            <div class="col-md-4">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Nº</th>
                                            <th>Nome do Ator</th>
                                            <th style="text-align: center">Selecione</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Ator 1</td>
                                            <td style="text-align: center"><input type="checkbox" name="Cliente" value="Selecione" </</tr>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Ator 2</td>
                                            <td style="text-align: center"><input type="checkbox" name="Cliente" value="Selecione" </</tr>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Ator 3</td>
                                            <td style="text-align: center"><input type="checkbox" name="Cliente" value="Selecione" </</tr>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4 control-label" for="diretor">Diretor</label>
                            <div class="col-md-4">
                                <select class="form-control" name="diretor">
                                    <option value="">Selecione um Diretor</option>
                                </select>
                            </div>
                            <br></br>
                        </div>


                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Ano">Ano</label>  
                            <div class="col-md-4">
                                <input id="Ano" name="Ano" type="number" placeholder="Ano" class="form-control input-md" required="">
                            </div>
                        </div>

                        <!-- Textarea -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Sinopse">Sinopse</label>
                            <div class="col-md-4">                     
                                <textarea class="form-control" id="" name="Sinopse">Sinopse</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Classe">Classe</label>
                            <div class="col-md-4">
                                <select class="form-control" name="Classe">
                                    <option value="">Selecione uma Classe</option>
                                </select>
                            </div>
                            <br></br>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Categoria">Categoria</label>
                            <div class="col-md-4">
                                <select class="form-control" name="Categoria">
                                    <option value="">Selecione uma Categoria</option>
                                </select>
                            </div>
                            <br></br>
                        </div>

                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-md-5 control-label" for=""></label>
                            <div class="col-md-5">
                                <br>
                                <button type="submit" class="btn btn-default"  >Cadastrar</button>
                                <button href="../Admin/Admin.html" class="btn btn-default" >Cancelar</button>

                                <br>
                                <br>
                            </div>
                        </div>
                    </form>
                </fieldset>

            </div>
        </div>
        <br></br>
    </div>
    <jsp:include page="../Cabecalho e Rodape/rodape.jsp"/>


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
<%-- 
    Document   : CadastrarTitulo
    Created on : 03/04/2018, 09:53:35
    Author     : 2016122760198
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastrar Título</title>

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
                        <h2 style="text-align: center;">Cadastrar Título</h2>
                        <br></br>

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Nome">Nome</label>  
                            <div class="col-md-4">
                                <input id="Nome" name="Nome" type="text" placeholder="Nome" class="form-control input-md" required="">

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="autor">Atores</label>
                            <div class="col-md-4">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Nº</th>
                                            <th>Nome do Ator</th>
                                            <th style="text-align: center">Selecione</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Ator 1</td>
                                            <td style="text-align: center"><input type="checkbox" name="Cliente" value="Selecione" </</tr>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Ator 2</td>
                                            <td style="text-align: center"><input type="checkbox" name="Cliente" value="Selecione" </</tr>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Ator 3</td>
                                            <td style="text-align: center"><input type="checkbox" name="Cliente" value="Selecione" </</tr>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4 control-label" for="diretor">Diretor</label>
                            <div class="col-md-4">
                                <select class="form-control" name="diretor">
                                    <option value="">Selecione um Diretor</option>
                                </select>
                            </div>
                            <br></br>
                        </div>


                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Ano">Ano</label>  
                            <div class="col-md-4">
                                <input id="Ano" name="Ano" type="number" placeholder="Ano" class="form-control input-md" required="">
                            </div>
                        </div>

                        <!-- Textarea -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Sinopse">Sinopse</label>
                            <div class="col-md-4">                     
                                <textarea class="form-control" id="" name="Sinopse">Sinopse</textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Classe">Classe</label>
                            <div class="col-md-4">
                                <select class="form-control" name="Classe">
                                    <option value="">Selecione uma Classe</option>
                                </select>
                            </div>
                            <br></br>
                        </div>


                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Categoria">Categoria</label>
                            <div class="col-md-4">
                                <select class="form-control" name="Categoria">
                                    <option value="">Selecione uma Categoria</option>
                                </select>
                            </div>
                            <br></br>
                        </div>

                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-md-5 control-label" for=""></label>
                            <div class="col-md-5">
                                <div class="ficon">
                                    <a href="#" class="btn btn-default" role="button">Cadastrar</a>
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
