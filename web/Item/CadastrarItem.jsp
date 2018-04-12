<%-- 
    Document   : CadastrarItem
    Created on : 03/04/2018, 09:48:50
    Author     : 2016122760198
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastrar Item</title>

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
                    <h2 style="text-align: center;">Cadastrar Item</h2>
                    <br></br>
                    <form id="form" action="../ctrCadastrarItem" method="post">

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="numero">Número</label>
                            <div class="col-md-4">
                                <div class="input-group">

                                    <input id="numero" name="numero" class="form-control" placeholder="Número" type="number" required="">
                                </div>
                            </div>
                        </div>
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Titulo">Título</label>  
                            <div class="col-md-4">
                                <input id="Nome" name="Titulo" type="text" placeholder="Título" class="form-control input-md" required="">

                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="data">Data</label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                    <input id="data" name="data" class="form-control" placeholder="Data" type="date" required="">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="tipo">Tipo</label>
                            <div class="col-md-4">
                                <select class="form-control" name="tipo">
                                    <option value="">Selecione um Tipo</option>
                                    <option value="DVD">DVD</option>
                                    <option value="BlueRay">BlueRay</option>
                                    <option value="Fita">Fita</option>
                                </select>
                            </div>
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
