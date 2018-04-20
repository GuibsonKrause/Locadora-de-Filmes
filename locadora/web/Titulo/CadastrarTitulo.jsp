<%-- 
    Document   : CadastrarTitulo
    Created on : 03/04/2018, 09:53:35
    Author     : Guibson
--%>

<%@page import="model.domain.Classe"%>
<%@page import="model.domain.Diretor"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ConexaoHibernate"%>
<%@page import="DAO.ConexaoHibernate"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="model.domain.Ator"%>
<%@page import="model.domain.Ator"%>
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
                    <br><br>


                    <!-- Text input-->
                    <form id="form" action="../ctrCadastrarTitulo" method="POST">
                        <input class="hidden" name="operacao" value="inserir">


                        <!-- Text input-->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="Nome"></label>  
                            <div class="col-md-4">
                                <input id="Nome" name="Nome" type="text" placeholder="Nome" class="form-control input-md" required="">

                            </div>
                            <br><br>
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="autor"></label>
                                <div class="col-md-4">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th style="text-align: center">Nº</th>
                                                <th style="text-align: center">Nome do Ator</th>
                                                <th style="text-align: center">Selecione</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                SessionFactory sf = ConexaoHibernate.getSessionFactory();
                                                Session s = sf.openSession();
                                                Criteria c = s.createCriteria(Ator.class);

                                                List atores = c.list();
                                                int i;

                                                for (i = 0; i < atores.size(); i++) {

                                                    out.println("<tr>");

                                                    out.println("<td style='text-align: center'>" + ((Ator) atores.get(i)).getID() + "</td>");
                                                    out.println("<td style='text-align: center'>" + ((Ator) atores.get(i)).getNome() + "</td>");
                                                    out.println("<td style='text-align: center'>" + "<input type='checkbox' name='Cliente' value='Selecione'" + "</tr>");

                                                    out.println("</tr>");
                                                }
                                            %>

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <br><br>
                            <br><br>
                            <label class="col-md-4 control-label" for="diretor"></label>
                            <div class="col-md-4">
                                <select class="form-control" name="diretor">
                                    <%
                                        c = s.createCriteria(Diretor.class);
                                        List diretores = c.list();
                                        for (i = 0; i < diretores.size(); i++) {

                                            out.println("<option value=''>" + ((Diretor) diretores.get(i)).getNome() + "</option>");
                                        }
                                    %>
                                </select>
                            </div>
                            <br></br>



                            <!-- Text input-->

                            <label class="col-md-4 control-label" for="Ano"></label>  
                            <div class="col-md-4">
                                <input id="Ano" name="Ano" type="number" placeholder="Ano" class="form-control input-md" required="">
                            </div>


                            <!-- Textarea -->
                            <br><br>
                            <label class="col-md-4 control-label" for="Sinopse"></label>
                            <div class="col-md-4">                     
                                <textarea class="form-control" id="" name="Sinopse">Sinopse</textarea>
                            </div>

                            <br>
                            <br><br>
                            <label class="col-md-4 control-label" for="Classe"></label>
                            <div class="col-md-4">
                                <select class="form-control" name="Classe">
                                    <%
                                        c = s.createCriteria(Classe.class);
                                        List classes = c.list();
                                        for (i = 0; i < classes.size(); i++) {

                                            out.println("<option value=''>" + ((Classe) classes.get(i)).getNome() + "</option>");
                                        }
                                    %>
                                </select>
                            </div>
                            <br></br>



                            <label class="col-md-4 control-label" for="Categoria"></label>
                            <div class="col-md-4">
                                <select class="form-control" name="Categoria">
                                    <option value="">Ação</option>
                                    <option value="">Drama</option>
                                    <option value="">Comédia</option>
                                    <option value="">Ficção Científica</option>
                                    <option value="">Policial</option>
                                    <option value="">Romance</option>
                                    <option value="">Suspense</option>
                                    <option value="">Terror</option>
                                </select>
                            </div>
                            <br></br>


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

