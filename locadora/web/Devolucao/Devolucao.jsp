<%-- 
    Document   : Devolucao
    Created on : 03/04/2018, 09:40:07
    Author     : 2016122760198
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="DAO.ConexaoHibernate"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="model.domain.Locacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Devolução</title>



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
                    <h2 style="text-align: center;">Devolução</h2>
                    <br></br>

                    <!-- Text input-->
                    <form id="form" action="../ctrCadastrarLocacao" method="POST">
                        <input class="hidden" name="operacao" value="inserirDev">

                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="item"></label>
                            <div class="col-md-4">

                                <select class="form-control"  name="locacaoItem">


                                    <%
                                        SessionFactory sf = ConexaoHibernate.getSessionFactory();
                                        Session s = sf.openSession();
                                        Criteria c;

                                        c = s.createCriteria(Locacao.class);

                                        List loca = c.list();
                                        int a;

                                        for (a = 0; a < loca.size(); a++) {
                                            if (((Locacao) loca.get(a)).getDtDevolucaoEfetiva() == null) {
                                                out.println("<option value='" + ((Locacao) loca.get(a)).getID() + "'>" + ((Locacao) loca.get(a)).getItem().getNumSerie() + "</option>");
                                            }
                                        }

                                    %>

                                    <!-- </tbody>
                                 </table -->

                                </select>

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
                                <br></br> <br></br>
                            </div>
                        </div>

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
