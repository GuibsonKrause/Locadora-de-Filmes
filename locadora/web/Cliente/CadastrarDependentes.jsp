<%-- 
     Document   : CadastrarDependentes
     Created on : 03/04/2018, 09:37:59
     Author     : 2016122760198
 --%>
 
 <%@page import="model.domain.Socio"%>
<%@page import="model.domain.Titulo"%>
 <%@page import="java.util.List"%>
 <%@page import="org.hibernate.Criteria"%>
 <%@page import="org.hibernate.Session"%>
<%@page import="java.util.Iterator"%>
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
 
                     <br></br>
                     <!-- Form Name -->
                     <h2 style="text-align: center;">Cadastrar Depedentes</h2>
                     <br></br>
 
                     <form id="form" action="../ctrCadastrarCliente" method="POST">
                         <input class="hidden" name="operacao" value="inserirDependente">
 
                         <!-- Text input-->
                         <div class="form-group">
                             <label class="col-md-4 control-label" for="nome"></label>  
                             <div class="col-md-4">

                                <input id="" name="nome" type="text" placeholder="Nome" class="form-control input-md" required="">
 
                             </div>
 
 
                             <!-- Multiple Radios (inline) -->
                             <br><br>
                             <label class="col-md-4 control-label" for="sexo"></label>
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
 
 
                             <br><br>
                             <label class="col-md-4 control-label" for="socio"></label>
                             <div class="col-md-4">
                                 <select class="form-control" name="socios">
 
                                     <%
                                         SessionFactory sf = ConexaoHibernate.getSessionFactory();
                                         Session s = sf.openSession();
                                         Criteria c;
 
                                         c = s.createCriteria(Socio.class);

                                         List socios = c.list();

 

                                        Iterator i = socios.iterator();

                                        while (i.hasNext()) {
                                            
                                           
                                            Socio so = (Socio) i.next();

                                            out.println("<option value='" + so.getNum_inscricao() + "'>" + so.getNome() + "</opttion>");

                                         }


                                     %>
 
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