<%-- 
    Document   : Nova_Locação
    Created on : 03/04/2018, 09:50:26
    Author     : 2016122760198
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cadastrar Locação</title>



        <!-- Bootstrap -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="../css/font-awesome.min.css">
        <link rel="stylesheet" href="../css/jquery.bxslider.css">
        <link rel="stylesheet" type="text/css" href="../css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="../css/animate.css">
        <link href="../css/dropdown.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="../js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link href="../css/style.css" rel="stylesheet">	

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        </head>
        <body>
 <jsp:include page="../Cabecalho e Rodape/cabecalho.jsp"/>

            <div class="container-fluid">
                <div class="row">
                    <form class="form-horizontal">
                        <fieldset>
                            <br></br>
                            <!-- Form Name -->
                            <h2 style="text-align: center;">Nova Locação</h2>
                            <br></br>




                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Nome">Nome do Cliente</label>  
                            <div class="col-md-4">
                                <input id="" name="Nome" type="text" placeholder="Nome do Cliente" class="form-control input-md" required="">

                            </div>
                        </div>

                             <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Nome">Número de Série</label>  
                            <div class="col-md-4">
                                <input id="" name="Nome" type="txt" placeholder="Número de Série" class="form-control input-md" required="">

                            </div>
                        </div>
                        


                            <div class="form-group">
                                <label class="col-md-4 control-label" for="dinheiro">Dinheiro</label>
                                <div class="col-md-4">
                                    <div class="input-group">
                                        <span class="input-group-addon">R$</span>
                                        <input id="dinero" name="dinheiro" class="form-control" placeholder="Valor do Filme" type="text" required="">
                                    </div>
                                </div>
                            </div>

       
   
                     
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="data">Data de Devolução Prevista</label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                    <input id="data" name="Data de Devolução Presvista" class="form-control" placeholder="Data" type="date" required="">
                                </div>
                            </div>
                        </div>


                        <!-- Button (Double) -->
                        <div class="form-group">
                            <label class="col-md-5 control-label" for=""></label>
                            <div class="col-md-5">

                                <div class="ficon">
                                    <a href="#" class="btn btn-default" role="button">Cadastrar</a>
                                     <a href="../Admin/Admin.html" class="btn btn-default" role="button">Cancelar</a>

                                </div>
                                 <br></br> <br></br>
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
