<%-- 
    Document   : CadastrarItem
    Created on : 03/04/2018, 09:48:50
    Author     : 2016122760198
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.domain.Titulo"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="DAO.ConexaoHibernate"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.SessionFactory"%>
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

                    <form id="form" action="../ctrCadastrarItem" method="POST">
                        <input class="hidden" name="operacao" value="inserir">

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="numero"></label>
                            <div class="col-md-4">
                                <div class="input-group">

                                    <input id="numero" name="numero" class="form-control" placeholder="Número" type="number" required="">
                                </div>
                            </div>
                            <br><br>
                            <!-- Text input-->

                            <label class="col-md-4 control-label" for="Titulo"></label>  
                            <div class="col-md-4">
                                <select id="titulo" class="form-control" name="titulos">
                                    <%
                                        SessionFactory sf = ConexaoHibernate.getSessionFactory();
                                        Session s = sf.openSession();
                                        Criteria c;
                                        c = s.createCriteria(Titulo.class);


                                        List titulos = c.list();

                                        Iterator in = titulos.iterator();
                                      
                                        while (in.hasNext()) {
                                            
                                            Titulo d = (Titulo) in.next();
                                            out.println("<option value='" + d.getID() + "'>" + d.getNome() + "</opttion>");

                                        }

                                    %>
                                </select>

                            </div>


                            <br><br>
                            <label class="col-md-4 control-label" for="data"></label>
                            <div class="col-md-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                    <input id="data" name="data" class="form-control" placeholder="Data" type="date" required="">
                                </div>
                            </div>


                            <br><br>
                            <label class="col-md-4 control-label" for="tipo"></label>
                            <div class="col-md-4">
                                <select class="form-control" name="tipo">
                                    <option value="">Selecione um Tipo</option>
                                    <option value="DVD">DVD</option>
                                    <option value="BlueRay">BlueRay</option>
                                    <option value="Fita">Fita</option>
                                </select>
                            </div>

                            <br><br>
                            <!-- Button (Double) -->
                            <div class="form-group">
                                <label class="col-md-5 control-label" for=""></label>
                                <div class="col-md-5">
                                    <div class="ficon">
                                        <button type="submit" class="btn btn-default"  >Cadastrar</button>
                                        <button href="../Admin/Admin.html" class="btn btn-default" >Cancelar</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </fieldset>
                </form>
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
