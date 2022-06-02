<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="theme-color" content="#3671c9">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="../images/Frame-4.ico">
    <title>Projetos</title>
    <link rel="stylesheet" href="../css/navbar.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../css/all.css">
    <link rel="stylesheet" href="../css/aos.css">
    <link rel="stylesheet" href="../css/responsivo.css">
    <link rel="stylesheet" href="../css/pgns.css">
    <link rel="stylesheet" href="../css/style2.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/no-ui-slider/jquery.nouislider.css">
   
</head>

<body>
    <nav class="navbar navbar-expand-lg ftco_navbar ftco-navbar-light">
        <div class="container">
            <a class="navbar-brand nome-logo" href="../../index.html">
                <img src="../images/logo3.svg" class="d-inline-block  align-text-button" alt=""> Silva Tech Souza
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span>
      </button>
            <div class="collapse navbar-collapse" id="ftco-nav">
               
                <ul class="navbar-nav ml-auto nav1  align-text-button">
                    <li class="slide4"></li>
                    <li class="nav-item active"><a href="../../index.html"  class="nav-link">Home</a></li>
                    <li class="nav-item active"><a href="sobrenos.html" class="nav-link">Sobre Nós</a></li>
                    <li class="nav-item active"><a href="TelaBranca/" style="color: #fff" class="nav-link"><strong >Projetos</strong></a></li>
                    <li class="nav-item active"><a href="#" class="nav-link">Serviços</a></li>
                    <li class="nav-item active"><a href="contato.html" class="nav-link">Contato</a></li>
                </ul>
               
            </div>
        </div>
    </nav>
    <main>
        <section style="margin: 80px;" class=" d-none d-lg-block">
            <div class="container d-none d-lg-block">
                <div class="row no-gutters col-xl-12 col-lg-12 col-md-12">
                    <div class=" col-xl-9 col-lg-9 col-md-9 d-none d-lg-block">
           <?php             
           use Banco;
           if(empty($_POST['app'])){
            $nome = "Todos";
           }else{
            $nome = $_POST['app'];
           }
       
      
 ?>
                    <form action=""  method="post" >
                        <ul style=" display: inline-block; text-decoration: none;">

                            <li class="nav-item active" style=" display: inline-block; text-decoration: none;">
                            <?php if($nome == "Todos"){?>
                                <input type="submit" class="btn btn-primary passarmause btnamarge1" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Todos" ></li>
                                <?php }else{ ?>
                                    <input type="submit" class="btn btn-primary passarmause btnamarge4" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Todos" ></li>
 
                                    <?php } ?>
                                    <?php if($nome == "App"){?>
                                <input type="submit" class="btn btn-primary passarmause btnamarge1" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="App" ></li>
                                <?php }else{ ?>
                                    <input type="submit" class="btn btn-primary passarmause btnamarge4" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="App" ></li>
 
                                    <?php } ?>
                                    <?php if($nome == "Game"){?>
                                <input type="submit" class="btn btn-primary passarmause btnamarge1" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Game" ></li>
                                <?php }else{ ?>
                                    <input type="submit" class="btn btn-primary passarmause btnamarge4" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Game" ></li>
 
                                    <?php } ?>
                                     <?php if($nome == "Web"){?>
                                <input type="submit" class="btn btn-primary passarmause btnamarge1" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Web" ></li>
                                <?php }else{ ?>
                                    <input type="submit" class="btn btn-primary passarmause btnamarge4" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Web" ></li>
 
                                    <?php } ?>
                                    <?php if($nome == "Desktop"){?>
                                <input type="submit" class="btn btn-primary passarmause btnamarge1" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Desktop" ></li>
                                <?php }else{ ?>
                                    <input type="submit" class="btn btn-primary passarmause btnamarge4" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Desktop" ></li>
 
                                    <?php } ?>
                                    <?php if($nome == "Eletronica"){?>
                                <input type="submit" class="btn btn-primary passarmause btnamarge1" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Eletronica" ></li>
                                <?php }else{ ?>
                                    <input type="submit" class="btn btn-primary passarmause btnamarge4" type="submit" style="color: #fff;margin-top: 30px; " name="app" value="Eletrônica" ></li>
 
                                    <?php } ?>
                       
                        </ul>

                        </form>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-3 btnajuste">
                    <form class="search-container" method="post">
                        <input type="text" name="busca" id="search-bar" placeholder="Buscar">
                        <button class="search-icon btnpesquisa" type="submit"><i class="fab fa-search" style="color: #fff" ></i></button>
                    </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="pesquiblock">
            <div class="container">
                <div class="col-xl-12 col-lg-12 col-md-12 btnajuste">
                    <form class="search-container" method="post">
                        <input type="text" name="busca" id="search-bar" placeholder="Buscar">
                        <button class="search-icon btnpesquisa" type="submit"><i class="fa fa-search" style="color: #fff"></i></button>
                    </form>
                </div>
            </div>
        </section>
        
        <!--indice-->
        <section>
            <div class="about-area1">
                <div class="container">
                    <div class="row no-gutters col-lg-12">
                        <div class="col-lg-3  col-md-12">
                            <div class="blog_right_sidebar">
                                <aside >
                                    <h2>Recado STS</h2>
                                    <p style="color: #fff ;font-size: 17px; padding: 5px;" class=" mb-4 text_p text-justify">
                                        A Silva Tech Souza é uma empresa de tecnologia, e queremos que nossos projetos possam mostrar um pouco sobre nós, e ajude de alguma forma vocês. Queremos que muitos dos projetos listados possam ter alguma interação com os usuários. E não menos importante
                                        você tem a poder de ajudar no desenvolvimento dos projetos.
                                    </p>
                                    <a style="color: #3e90e2;" href="#" class="saibamais">Eu quero ajudar</a>
                                </aside>
                            </div>
                        </div>
                        <a name="idhist" id="idhist"></a>
                        <div class="col-lg-9 mb-12 ">
                            <div class="container">
                                <div class="about-caption about-caption3 " style="padding: 8px;">
                                <?php  include 'banco.php';
                                    $pdo = Banco::conectar();
                                    
                                    if(empty($_POST['busca'])){
                                        $pesquisar = "vazio";
                                       }else{
                                        $pesquisar= $_POST['busca'];
                                        
                                       }
                                   
                                       if($pesquisar == "vazio"){
                                        if($nome=="Todos"){
                                            $sql = 'SELECT * FROM projeto ORDER BY id DESC';
                                        }else if($nome=="App"){
                                            $sql = 'SELECT * FROM projeto WHERE tipo = 1';
                                        }
                                        else if($nome=="Game"){
                                            $sql = 'SELECT * FROM projeto WHERE tipo = 2';
                                        }
                                        else if($nome=="Web"){
                                            $sql = 'SELECT * FROM projeto WHERE tipo = 3';
                                        }else if($nome=="Desktop"){
                                            $sql = 'SELECT * FROM projeto WHERE tipo = 4';
                                        }else if($nome=="Eletronica"){
                                            $sql = 'SELECT * FROM projeto WHERE tipo = 5';
                                        }
                                        
                                    }else{
                                        $sql = "SELECT * FROM projeto WHERE titulo LIKE '%$pesquisar%' LIMIT 10";
                                    }
                                    
                                    foreach($pdo->query($sql)as $row)
                        {?>
                           <div class="row col-xl-12 col-lg-12 col-md-12 projecto">
                                        <img src="../images/projeto/<?php echo  $row['id']; ?>.png " class="img_sobre passarmause imgproj" alt=" ">
                                        <div class="column col-xl-9 col-lg-9 col-md-9">
                                            <h2><?php echo  $row['titulo']; ?></h2>
                                            <p style="color: #fff;font-size: 15px; " class=" mb-4 text_p text-justify">
                                            <?php echo  $row['descricao']; ?>
                                            </p>
                                            <div class="estrelas">
                                                <input type="radio" id="cm_star-empty" name="fb" value="" checked/>
                                                <label for="cm_star-1"><i class="fa estrelacor"></i></label>
                                                <input type="radio" id="cm_star-1" name="fb" value="1" />
                                                <label for="cm_star-2"><i class="fa estrelacor"></i></label>
                                                <input type="radio" id="cm_star-2" name="fb" value="2" />
                                                <label for="cm_star-3"><i class="fa estrelacor"></i></label>
                                                <input type="radio" id="cm_star-3" name="fb" value="3" />
                                                <label for="cm_star-4"><i class="fa estrelacor"></i></label>
                                                <input type="radio" id="cm_star-4" name="fb" value="4" />
                                                <label for="cm_star-5"><i class="fa estrelacor2"></i></label>
                                                <input type="radio" id="cm_star-5" name="fb" value="5" />
                                            </div>
                                            <a class="btn btn-primary btncolor passarmause " href=" <?php echo  $row['btnlink']; ?>" style="color: #fff;float: right; ">Conhecer</a>
                                        </div>
                                    </div> 
                        <?php } Banco::desconectar();
                                ?>
                                                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </main>
    <!--Footer-->
    <footer id="footer" class="align-items-center justify-content-between" style="margin-top: 100px;">
        <div class="container align-items-center justify-content-between">

            <div class="row no-gutters align-items-center justify-content-between centraliza col-xl-12 col-lg-12 col-md-12">

                <div class="align-items-center justify-content-between col-xl-12 col-lg-12 col-md-12">
                    <div id="social">

                        <a href="https://github.com/Silva-Tech-Souza">
                            <i class="fab fa-github"></i>
                        </a>
                        <a href="https://www.instagram.com/silva_tech_souza/">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="https://www.facebook.com/silva.tech.souza/">
                            <i class="fab fa-facebook"></i>
                        </a>
                        <a href="https://play.google.com/store/apps/dev?id=5212863351220013475">
                            <i class="fab fa-google-play"></i>
                        </a>

                        <a href="https://api.whatsapp.com/send?phone=5512997185788&text=Oi%2C%20vim%20direto%20do%20seu%20site">
                            <i class="fab fa-whatsapp"></i>
                        </a>

                    </div>
                </div>

            </div>
        </div>
        <div class="footer-bottom-area ">
            <div class="container ">
                <div class="footer-border ">
                    <div class="row ">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center ">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;
                                    <script>
                                        document.write(new Date().getFullYear());
                                    </script> Todos os direitos reservados | Silva Tech Souza <i class="fa fa-heart " aria-hidden="true "></i>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

   
    <!-- JS here -->
    <script src="../js/jquery.min.js "></script>
    <script src="../js/jquery-migrate-3.0.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.easing.1.3.js"></script>
    <script src="../js/jquery.waypoints.min.js"></script>
    <script src="../js/jquery.stellar.min.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/jquery.magnific-popup.min.js"></script>
    <script src="../js/aos.js"></script>
    <script src="../js/jquery.animateNumber.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="../js/scrollax.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/menu_animated.js"></script>
    <div vw class="enabled">
        <div vw-access-button class="active"></div>
        <div vw-plugin-wrapper>
            <div class="vw-plugin-top-wrapper"></div>
        </div>
    </div>
    <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
    <script>
        new window.VLibras.Widget('https://vlibras.gov.br/app');
    </script>
</body>

</html>