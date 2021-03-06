<?php if($this->session->userdata('logueado') == TRUE and $this->session->userdata('tipo_login') == "Admin"){  ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo $title; ?></title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url() ?>assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo base_url() ?>assets/css/sb-admin.css" rel="stylesheet">
    <link href="<?php echo base_url() ?>assets/css/formStyle.css" rel="stylesheet" type="text/css">

    <!-- Morris Charts CSS 
    <link href="assets/css/plugins/morris.css" rel="stylesheet">-->

    <!-- Custom Fonts -->
    <link href="<?php echo base_url() ?>assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo base_url() ?>internal_private">División de Estudios Profesionales - Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <?php echo $this->session->userdata('user_login') ?> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="<?php echo base_url() ?>internal_public/logout"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li id="navHome">
                        <a href="<?php echo base_url() ?>internal_private/"><i class="fa fa-fw fa-dashboard"></i> Home</a>
                    </li>
                    <li id="navJefe">
                        <a href="<?php echo base_url() ?>internal_private/jefes_carrera"><i class="fa fa-fw fa-dashboard"></i> Jefes de carrera</a>
                    </li>
                    <li id="navAlum">
                        <a href="<?php echo base_url() ?>internal_private/alumnos"><i class="fa fa-fw fa-bar-chart-o"></i> Alumnos</a>
                    </li>
                    <li id="navReporte">
                        <a href="#" data-toggle="modal" data-target="#modalDescargarReporte"><i class="fa fa-fw fa-download"></i> Descargar Reporte</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header">
                            Administrador <small>Sistema de Residencias</small>
                        </h2>
                        
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> <?php echo $barraTitulo; ?></h3>
                            </div>
                            <div class="panel-body">
                                <?php $this->load->view($content); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    
                    
                    
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<?php echo base_url() ?>assets/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url() ?>assets/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url() ?>assets/js/jquery.validate.min.js"></script>
    <script src="<?php echo base_url() ?>assets/js/messages_es.js"></script>
    <script src="<?php echo base_url() ?>assets/js/validateForm.js"></script>
    <script src="<?php echo base_url() ?>assets/js/funcionesModal.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
           document.getElementById("<?php echo $nav; ?>").className = "active";
           $("#rutaEnviarCorreo").submit(function(e){
               e.preventDefault();
               $.ajax({
                  url: $(this).attr("action"),
                  type: $(this).attr("method"),
                  data: $(this).serialize(),
                  dataType: 'json',
                  error: function(output_string){
                      $('#mensaje_error').append(output_string);
                  },
                  success:function(output_string){
                      $('#mensaje_succes').append(output_string);
                  }
               });
           });
        });
    </script>
    <?php
        include 'modal_descargar_archivo.php';
    ?>

    <!-- Morris Charts JavaScript 
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>-->

</body>

</html>
<?php }else{ redirect('internal_public/acceso_denegado');} ?>