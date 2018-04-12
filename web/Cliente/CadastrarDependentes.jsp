<%-- 
    Document   : CadastrarDependentes
    Created on : 03/04/2018, 09:37:59
    Author     : 2016122760198
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Cadastrar Depedentes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
                    <h2 style="text-align: center;">Cadastrar Depedentes</h2>
                    <br></br>
                    <form id="form" action="../ctrCadastrarDependente" method="post">
                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="nome">Nome</label>  
                            <div class="col-md-4">
                                <input id="" name="" type="text" placeholder="Nome" class="form-control input-md" required="">

                            </div>
                        </div>

                        <!-- Multiple Radios (inline) -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="sexo">Sexo</label>
                            <div class="col-md-4"> 
                                <label class="radio-inline" for="sexo-0">
                                    <input name="sexo" id="sexo-0" value="1" checked="checked" type="radio">
                                    Masculino
                                </label> 
                                <label class="radio-inline" for="sexo-1">
                                    <input name="sexo" id="sexo-1" value="2" type="radio">
                                    Feminino
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="data">Data De Nascimento</label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                    <input id="data" name="Data de Nascimento" class="form-control" placeholder="Data" type="date" required="">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="socio">Socio</label>
                            <div class="col-md-4">
                                <select class="form-control" name="socio">
                                    <option value="">Selecione um Socio</option>
                                    <option value="socio">Socio 1</option>
                                    <option value="socio">Socio 2</option>
                                    <option value="socio">Socio 3</option>
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

                        <br></br>
                    </form>
                </fieldset>

            </div>
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
