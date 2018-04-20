<%-- 
    Document   : CadastrarCliente
    Created on : 03/04/2018, 09:37:18
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
        <title>Cadastrar Cliente</title>
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
                    <h2 style="text-align: center;">Cadastrar Cliente</h2>
                    <br></br>


                    <form id="form" action="../ctrCadastrarCliente" method="POST">
                        <input class="hidden" name="operacao" value="inserirCliente">

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Nome"></label>  
                            <div class="col-md-4">
                                <input id="" name="nome" type="text" placeholder="Nome" class="form-control input-md" required="">

                            </div>


                            <!-- Text input-->
                            <br><br>
                            <label class="col-md-4 control-label" for="cpf"></label>  
                            <div class="col-md-4">
                                <input id="cpf" name="cpf" placeholder="CPF" class="form-control input-md" required="" type="text">

                            </div>


                            <!-- Text input-->
                            <br><br>
                            <label class="col-md-4 control-label" for="Celular"></label>  
                            <div class="col-md-4">
                                <input id="Celular" name="celular" placeholder="Celular" class="form-control input-md" required="" type="text">

                            </div>


                            <!-- Text input-->
                            <br><br>
                            <label class="col-md-4 control-label" for="endereco"></label>  
                            <div class="col-md-4">
                                <input id="endereco" name="endereco" placeholder="Endereço do Imóvel" class="form-control input-md" required="" type="text">

                            </div>




                            <!-- Multiple Radios (inline) -->
                            <br><br>
                            <label class="col-md-4 control-label" for="sexo"></label>
                            <label class="col-md-1 control-label" for="sexo">Sexo</label>
                            
                                <label class="radio-inline" for="sexo-0">
                                    <input name="sexo" id="sexo-0" value="1" checked="checked" type="radio">
                                    Masculino
                                </label> 
                                <label class="radio-inline" for="sexo-1">
                                    <input name="sexo" id="sexo-1" value="2" type="radio">
                                    Feminino
                                </label>
                            
                            <br><br>

                            <label class="col-md-4 control-label" for="data"></label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                    <input id="data" name="dataDeNascimento" class="form-control" placeholder="Data" type="date" required="">
                                </div>
                            </div>



                            <!-- Button (Double) -->
                            <br><br>
                            <label class="col-md-5 control-label" for=""></label>
                            <div class="col-md-5">

                                <div class="ficon">
                                    <button type="submit" class="btn btn-default"  >Cadastrar</button>
                                    <button href="../Admin/Admin.html" class="btn btn-default" >Cancelar</button>

                                </div>
                                <br></br> <br></br>
                            </div>
                        </div>
                    </form>
                </fieldset>


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
