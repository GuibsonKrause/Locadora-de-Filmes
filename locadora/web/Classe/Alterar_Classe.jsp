<%-- 
    Document   : Alterar_Classe
    Created on : 03/04/2018, 09:32:18
    Author     : 2016122760198
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alterar/Excluir Ator</title>

        <!-- Bootstrap -->
        <link href="../css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/jquery.bxslider.css">
        <link rel="stylesheet" type="text/css" href="../css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="../css/animate.css">
        <link rel="stylesheet" href="../js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/dropdown.css" rel="stylesheet" type="text/css"/>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Add icon library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            /*Formatação do botão da tabela*/
            .btnTable {
                background-color: rgb(249,249,249);
                border: none;
                color: #333;
                padding: 2px 14px;
                font-size: 16px;
                cursor: pointer;
            }

            /* Darker background on mouse-over */
            .btnTable:hover {
                background-color: #ED502E;
            }
        </style>

    </head>

   <body>
        <jsp:include page="../Cabecalho e Rodape/cabecalho.jsp"/>
        
        <div class="container-fluid">
            <div class="row">
                <form class="form-horizontal">
                    <fieldset>

                        <br></br>
                        <!-- Form Name -->
                        <h2 style="text-align: center;">Alterar/Excluir Classe</h2>
                        <br></br>

                 

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Classe">Classe</label>
                            <div class="col-md-4">
                                <table class="table table-striped">
                                    <thead>
                                         <tr>
                                            <th>Nº</th>
                                            <th>Nome</th>
                                            <th>Valor</th>
                                            <th>Data</th>
                                            <th>Alterar</th>
                                            <th>Excluir</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Nome</td>
                                            <td>Valor</td>
                                            <td>Data</td>
                                             <td><button class="btnTable"><i class="fa fa-pencil"></i></button></td>
                                            <td><button class="btnTable"><i class="fa fa-trash"></i></button></td>
                                            
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Nome</td>
                                            <td>Valor</td>
                                            <td>Data</td>
                                              <td><button class="btnTable"><i class="fa fa-pencil"></i></button></td>
                                            <td><button class="btnTable"><i class="fa fa-trash"></i></button></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Nome</td>
                                            <td>Valor</td>
                                            <td>Data</td>
                                              <td><button class="btnTable"><i class="fa fa-pencil"></i></button></td>
                                            <td><button class="btnTable"><i class="fa fa-trash-o"></i></button></td>
                                            
                                        </tr>
                                        
                                    </tbody>
                                </table>
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
