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
 <jsp:include page="../Cabecalho e Rodape/cabecalho.jsp"/>

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
