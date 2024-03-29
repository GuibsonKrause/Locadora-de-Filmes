<%-- 
    Document   : index
    Created on : 03/04/2018, 09:56:01
    Author     : 2016122760198
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Locadora</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/jquery.bxslider.css">
        <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="css/animate.css">
        <link href="css/dropdown.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link href="css/style.css" rel="stylesheet">	


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <header>
            <nav div class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="container">

                    <ul class="info">
                        <li><p><i class="fa fa-phone"></i>00000000</p></li>
                        <li><a href="#"><i class="fa fa-envelope"></i>locadora@Loc.com</a></li>
                    </ul>
                </div>
            </nav>

            <nav class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="navigation">
                    <div class="container">					
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="navbar-brand">
                                <a href="#"><h1><span>L</span>ocadora</h1></a>
                            </div>
                        </div>

                        <div class="navbar-collapse collapse">							
                            <div class="menu">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation"><a href="#" class="active">Início</a></li>

                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="Admin/login.html"><span class="glyphicon glyphicon-lock"></span> Administrador</a></li>
                                    </ul>
                                </ul>
                            </div>
                        </div>						
                    </div>
                </div>	
            </nav>		
        </header>



        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                    <li data-target="#myCarousel" data-slide-to="6"></li>
                    <li data-target="#myCarousel" data-slide-to="7"></li>
                    <li data-target="#myCarousel" data-slide-to="8"></li>
                    <li data-target="#myCarousel" data-slide-to="9"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="img/slider/10.jpg" alt="10" style="width:100%;">
                    </div>

                    <div class="item">
                        <img src="img/slider/5.jpg" alt="5" style="width:100%;">
                    </div>

                    <div class="item">
                        <img src="img/slider/8.jpg" alt="8" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="img/slider/11.jpg" alt="11" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="img/slider/12.jpg" alt="12" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="img/slider/13.jpg" alt="13" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="img/slider/14.jpg" alt="14" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="img/slider/16.png" alt="16" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="img/slider/17.jpg" alt="17" style="width:100%;">
                    </div>
                    <div class="item">
                        <img src="img/slider/18.jpg" alt="18" style="width:100%;">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>




        <!--
        <div class="slider">
            <div class="img-responsive">
                <ul class="bxslider">				
                    <li><img src="img/slider/10.jpg" alt=""/></li>								
                    <li><img src="img/slider/5.jpg" alt=""/></li>	
                    <li><img src="img/slider/8.jpg" alt=""/></li>			
                    <li><img src="img/slider/11.jpg" alt=""/></li>
                    <li><img src="img/slider/12.jpg" alt=""/></li>
                    <li><img src="img/slider/13.jpg" alt=""/></li>
                    <li><img src="img/slider/14.jpg" alt=""/></li>
                    <li><img src="img/slider/16.png" alt=""/></li>
                    <li><img src="img/slider/17.jpg" alt=""/></li>
                    <li><img src="img/slider/18.jpg" alt=""/></li>
                </ul>
            </div>	
        </div>
        -->

        <!-- Text input-->
        <div class="form-group">
            <div class="container">
                <br></br>                            
                <!--<label class="col-md-5 control-label" for="Nome"></label>  -->
                <div class="col-md-5">
                    <div class="ficon">
                        <input id="" name="" type="text" placeholder="Pesquisar" >

                        <button type="submit"><i class="fa fa-search"></i></button>

                    </div>
                    <br>
                    <input type="radio" name="Pesq" value="Nome" />
                    Nome do Filme      
                    <input type="radio" name="Pesq" value="Categoria" />
                    Categoria   
                    <input type="radio" name="Pesq" value="Ator" />
                    Ator   
                </div>


            </div>
        </div>



        <div class="box">
            <div class="container">
                <div class="row">			
                    <div class="col-md-4">
                        <div class="thumbnail">
                            <div class="img-thumbnail">
                                <!--<img src="img/team/5.jpg" alt="" >-->
                                <div class="caption">
                                    <h3>Simplesmente Acontece</h3>
                                    <p>Alex e Rosie são amigos inseparáveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiências. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, 
                                        seus caminhos agora são outros. Mas nos tempos de hoje é impossível não se conectar. E, em se tratando de amor, o difícil é fazer as escolhas certas.</p>
                                    <a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Ler Mais</a>
                                      
                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Simplesmente Acontece</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Alex e Rosie são amigos inseparáveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiências. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, 
                                        seus caminhos agora são outros. Mas nos tempos de hoje é impossível não se conectar. E, em se tratando de amor, o difícil é fazer as escolhas certas.</p>
                                                    </div>
                                                    <div class="modal-body">
                                                        Atores: Ator 1, Ator 2, Ator 3.
                                                    </div>
                                                    <div class="modal-body">
                                                        Ano: 2013.
                                                    </div>
                                                    <div class="modal-body">
                                                        Diretor: Diretor 1.
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        
                                        

                                    </div>
                                </div>
                              
                            </div>
                        </div>
                  
          
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div class="img-thumbnail">
                            <!--         <img src="img/team/3.jpg" alt="" >	-->	
                            <div class="caption">
                                <h3>X-Men</h3>
                                <p>Eles são filhos do átomo superior, o próximo elo na corrente da evolução. Cada um nasceu com uma mutação genética rara, que na puberdade se manifestou em poderes extraordinários. Em um mundo cheio de ódio e preconceito, eles são temidos por aqueles que não podem 
                                    aceitar suas diferenças. Liderados por Xavier, os X-Men lutam para proteger um mundo que os teme. </p>
                              <a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Ler Mais</a>
                                      
                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Simplesmente Acontece</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Alex e Rosie são amigos inseparáveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiências. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, 
                                        seus caminhos agora são outros. Mas nos tempos de hoje é impossível não se conectar. E, em se tratando de amor, o difícil é fazer as escolhas certas.</p>
                                                    </div>
                                                    <div class="modal-body">
                                                        Atores: Ator 1, Ator 2, Ator 3.
                                                    </div>
                                                    <div class="modal-body">
                                                        Ano: 2013.
                                                    </div>
                                                    <div class="modal-body">
                                                        Diretor: Diretor 1.
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div class="img-thumbnail">
                            <!--      <img src="img/team/15.jpg" alt="" >	-->		
                            <div class="caption">
                                <h3>Machine</h3>
                                <p><p>Um jovem programador de computadores, ganha um concurso na empresa onde trabalha para passar uma semana na casa de Nathan Bateman (Oscar Isaac), o brilhante e recluso presidente da companhia. Após sua chegada, Caleb percebe que foi o escolhido para 
                                    participar de um teste com a última criação de Nathan: Ava, uma robô com inteligência artificial.</p> </p>
                               <a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Ler Mais</a>

                           
                                           <!-- Modal -->
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Ler Mais</a>
                                                        <h4 class="modal-title">Simplesmente Acontece</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Alex e Rosie são amigos inseparáveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiências. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, 
                                        seus caminhos agora são outros. Mas nos tempos de hoje é impossível não se conectar. E, em se tratando de amor, o difícil é fazer as escolhas certas.</p>
                                                    </div>
                                                    <div class="modal-body">
                                                        Atores: Ator 1, Ator 2, Ator 3.
                                                    </div>
                                                    <div class="modal-body">
                                                        Ano: 2013.
                                                    </div>
                                                    <div class="modal-body">
                                                        Diretor: Diretor 1.
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                     
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div class="img-thumbnail">
                            <!--     <img src="img/team/12.jpg" alt="" >			-->
                            <div class="caption">
                                <h3>Deadpool</h3>
                                <p><p>Wade Wilson é um ex-agente especial que passou a trabalhar como mercenário. Seu mundo é destruído quando um cientista maligno o tortura e o desfigura completamente. 
                                    O experimento brutal transforma Wade em Deadpool, que ganha poderes especiais de cura e uma força aprimorada.</p> 
                               <a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Ler Mais</a>
                                           <!-- Modal -->
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Simplesmente Acontece</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Alex e Rosie são amigos inseparáveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiências. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, 
                                        seus caminhos agora são outros. Mas nos tempos de hoje é impossível não se conectar. E, em se tratando de amor, o difícil é fazer as escolhas certas.</p>
                                                    </div>
                                                    <div class="modal-body">
                                                        Atores: Ator 1, Ator 2, Ator 3.
                                                    </div>
                                                    <div class="modal-body">
                                                        Ano: 2013.
                                                    </div>
                                                    <div class="modal-body">
                                                        Diretor: Diretor 1.
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div> 
            
                            </div>
                        </div>
                    </div>
                </div>	
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div class="img-thumbnail">
                            <!--    <img src="img/team/1.jpg" alt="" >			-->
                            <div class="caption">
                                <h3>Mulher Maravilha</h3>
                                <p><p>Treinada desde cedo para ser uma guerreira imbatível, Diana Prince nunca saiu da paradisíaca ilha em que é reconhecida como 
                                    princesa das Amazonas. Quando o piloto Steve Trevor se acidenta e cai em uma praia do local, ela descobre que uma guerra sem precedentes está se espalhando pelo mundo.</p> 
                               <a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Ler Mais</a>
                                           <!-- Modal -->
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Simplesmente Acontece</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Alex e Rosie são amigos inseparáveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiências. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, 
                                        seus caminhos agora são outros. Mas nos tempos de hoje é impossível não se conectar. E, em se tratando de amor, o difícil é fazer as escolhas certas.</p>
                                                    </div>
                                                    <div class="modal-body">
                                                        Atores: Ator 1, Ator 2, Ator 3.
                                                    </div>
                                                    <div class="modal-body">
                                                        Ano: 2013.
                                                    </div>
                                                    <div class="modal-body">
                                                        Diretor: Diretor 1.
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                     
                            </div>
                        </div>
                    </div>
                </div>		
                <div class="col-md-4">
                    <div class="thumbnail">
                        <div class="img-thumbnail">
                            <!--<img src="img/team/7.jpg" alt="" >			-->
                            <div class="caption">
                                <h3>Liga da Justiça</h3>
                                <p>Impulsionado pela restauração de sua fé na humanidade e inspirado pelo ato altruísta do Superman,
                                    Bruce Wayne convoca sua nova aliada Diana Prince para o combate contra um inimigo ainda maior, recém-despertado. Juntos, Batman e Mulher-Maravilha buscam e recrutam com agilidade um time de meta-humanos </p>
                                 <a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Ler Mais</a>
                                           <!-- Modal -->
                                        <div class="modal fade" id="myModal" role="dialog">
                                            <div class="modal-dialog">

                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Simplesmente Acontece</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Alex e Rosie são amigos inseparáveis que cresceram juntos em Londres, compartilhando entre si suas melhores experiências. Tudo muda quando Alex ganha uma bolsa de estudos e passa a morar nos EUA. Separados, 
                                        seus caminhos agora são outros. Mas nos tempos de hoje é impossível não se conectar. E, em se tratando de amor, o difícil é fazer as escolhas certas.</p>
                                                    </div>
                                                    <div class="modal-body">
                                                        Atores: Ator 1, Ator 2, Ator 3.
                                                    </div>
                                                    <div class="modal-body">
                                                        Ano: 2013.
                                                    </div>
                                                    <div class="modal-body">
                                                        Diretor: Diretor 1.
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div> 
           
                            </div>
                        </div>
                    </div>
                </div>		
            </div>	
                  </div>
             </div>
   
    <footer>
        <div class="inner-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 f-about">
                        <a href="index.jsp"><h1><span>L</span>ocadora</h1></a>
                        <p>Melhores fimes, lançamentos você encontra</p>

                    </div>
                    <div class="col-md-4 l-posts">
                        <h3 class="widgetheading"></h3>

                    </div>
                    <div class="col-md-4 f-contact">
                        <h3 class="widgetheading">Contatos</h3>
                        <a href="#"><p><i class="fa fa-envelope"></i> locadora@loc.com</p></a>
                        <p><i class="fa fa-phone"></i>  +000 000 000</p>
                        <p><i class="fa fa-home"></i> Locadora   |  Nº 00
                            Colatina | Centro, Espiríto Santo <br>
                            Brasil</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="last-div">
            <div class="container">
                <div class="row">
                    <div class="copyright">
                        © 2018 Locadora| <a href="http://bootstraptaste.com">Bootstraptaste</a>
                    </div>

                    <div class="clear"></div>
                </div>
            </div>

        </div>		
    </footer>



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
