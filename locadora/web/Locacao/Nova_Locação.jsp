<%-- 
    Document   : Nova_Locação
    Created on : 03/04/2018, 09:50:26
    Author     : 2016122760198
--%>

<%@page import="model.domain.Socio"%>
<%@page import="model.domain.Cliente"%>
<%@page import="model.domain.Dependente"%>
<%@page import="model.aplication.AplCadastrarCliente"%>
<%@page import="model.domain.Item"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Session"%>
<%@page import="DAO.ConexaoHibernate"%>
<%@page import="DAO.ConexaoHibernate"%>
<%@page import="org.hibernate.SessionFactory"%>
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

                <fieldset>
                    <br></br>
                    <!-- Form Name -->
                    <h2 style="text-align: center;">Nova Locação</h2>
                    <br></br>

                    <form id="form" action="../ctrCadastrarLocacao" method="POST">
                        <input class="hidden" name="operacao" value="inserirLoc">


                        <!-- Text input-->
                        <br><br>
                        <label class="col-md-4 control-label" for="cliente"></label>
                        <div class="col-md-4">
                            <select class="form-control" name="cliente">
                                <br><br>
                                <%
                                    SessionFactory sf = ConexaoHibernate.getSessionFactory();
                                    Session s = sf.openSession();
                                    Criteria c;

                                    c = s.createCriteria(Cliente.class);

                                    List clie = c.list();

                                    Iterator i = clie.iterator();

                                    while (i.hasNext()) {

                                        Cliente cli = (Cliente) i.next();

                                        out.println("<option value='" + cli.getNum_inscricao() + "'>" + cli.getNome() + "</opttion>");

                                    }

                                %>


                            </select>
                        </div>
                        <br><br>  
                        <!-- Text input-->

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="item"></label>
                            <div class="col-md-4">

                                <select class="form-control"  name="item">


                                    <%                                        
                                        c = s.createCriteria(Item.class);

                                        List item = c.list();
                                        int a;

                                        for (a = 0; a < item.size(); a++) {

                                            out.println("<option value='" + ((Item) item.get(a)).getID() + "'>" + ((Item) item.get(a)).getNumSerie() + "</option>");

                                        }

                                    %>

                                    <!-- </tbody>
                                 </table -->

                                </select>

                            </div>
                        </div>



                        <br><br>

                        <label class="col-md-4 control-label" for="dinheiro"></label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <span class="input-group-addon">R$</span>
                                <input type="number" step="0.1" class="form-control" placeholder="Valor" name="valor">
                            </div>

                        </div>


                        <br><br>


                        <label class="col-md-4 control-label" for="data"></label>
                        <div class="col-md-4">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                                <input id="data" name="dataPrevista" class="form-control" placeholder="Data" type="date" required="">
                            </div>
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
                                <br></br> 
                            </div>
                        </div>

                    </form>
                </fieldset>
            </div>
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
