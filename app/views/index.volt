<!DOCTYPE html>
<html lang="en">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="Delivery Management">
	    <meta name="author" content="Sukma Suryaningsih">
	    <link rel="shortcut icon" href="images/favicon(1).ico" type="favicon/ico" />
	<title>{{ title }} Delivery Management</title>
		{{ stylesheet_link("css/bootstrap.min.css") }}
		{{ stylesheet_link("css/simple-sidebar.css") }}
		{{ stylesheet_link("font-awesome-4.3.0/css/font-awesome.min.css") }}
		{{ javascript_include("js/jquery-1.11.2.min.js") }}
		{{ javascript_include("js/bootstrap.min.js") }}

		{{ stylesheet_link("css/bootstrap-multiselect.css") }}
		{{ javascript_include("js/bootstrap-multiselect.js") }}
    </head>

    <body>
			<nav class="navbar navbar-default no-margin">
		    <!-- Brand and toggle get grouped for better mobile display -->
		                <div class="navbar-header fixed-brand">
		                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"  id="menu-toggle">
		                      <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
		                    </button>
							{{ link_to('','<i class="fa fa-truck fa-4"></i> delivery', 'class': 'navbar-brand') }}

		                </div><!-- navbar-header-->

		                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		                            <ul class="nav navbar-nav">
		                                <li class="active" ><button class="navbar-toggle collapse in" data-toggle="collapse" id="menu-toggle-2"> <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span></button></li>
		                            </ul>
		                </div><!-- bs-example-navbar-collapse-1 -->
		    </nav>
		    <div id="wrapper">
		        <!-- Sidebar -->
		        <div id="sidebar-wrapper">
		            <ul class="sidebar-nav nav-pills nav-stacked" id="menu">
		            	

		               <!-- <li {% if session.get('level')=="admin" %}
		                 {% if selectmenu == "data_customer" %}class="active"{% endif %}>
		                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-users fa-stack-1x "></i></span>Customer</a>
		                       <ul class="nav-pills nav-stacked" style="list-style-type:none;">
		                        <li {% if selectmenu == "index" %}class="active"{% endif %}>
								{{ link_to('data_customer/index','<span class="fa-stack fa-lg pull-left"><i class="fa fa-search fa-stack-1x "></i></span>Search') }}
								</li>
								<li {% if selectmenu == "new" %}class="active"{% endif %}>
								{{ link_to('data_customer/new','<span class="fa-stack fa-lg pull-left"><i class="fa fa-plus fa-stack-1x "></i></span>New') }}
								</li>
		                       </ul>
		                </li {% endif %}> -->
		               
		                <li {% if session.get('level')=="admin" %} 
		                {% if selectmenu == "data_ongkir" %}class="active"{% endif %}>
		                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-credit-card fa-stack-1x "></i></span>Ongkir</a>
		                       <ul class="nav-pills nav-stacked" style="list-style-type:none;">
		                        <li {% if selectmenu == "index" %}class="active"{% endif %}>
								{{ link_to('data_ongkir/index','<span class="fa-stack fa-lg pull-left"><i class="fa fa-search fa-stack-1x "></i></span>Search') }}
								</li>
								<li {% if selectmenu == "new" %}class="active"{% endif %}>
								{{ link_to('data_ongkir/new','<span class="fa-stack fa-lg pull-left"><i class="fa fa-plus fa-stack-1x "></i></span>New') }}
								</li>
		                       </ul>
		                </li {% endif %}>
		                <li {% if session.get('level')=="admin" %}
		                {% if selectmenu == "data_kendaraan" %}class="active"{% endif %}>
		                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-motorcycle fa-stack-1x "></i></span>Kendaraan</a>
		                       <ul class="nav-pills nav-stacked" style="list-style-type:none;">
		                        <li {% if selectmenu == "index" %}class="active"{% endif %}>
								{{ link_to('data_kendaraan/index','<span class="fa-stack fa-lg pull-left"><i class="fa fa-search fa-stack-1x "></i></span>Search') }}
								</li>
								<li {% if selectmenu == "new" %}class="active"{% endif %}>
								{{ link_to('data_kendaraan/new','<span class="fa-stack fa-lg pull-left"><i class="fa fa-plus fa-stack-1x "></i></span>New') }}
								</li>
		                       </ul>
		                </li {% endif %}>
		                <li {% if session.get('level')=="admin" %}
		                {% if selectmenu == "data_supir" %}class="active"{% endif %}>
		                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-male fa-stack-1x "></i></span>Supir</a>
		                       <ul class="nav-pills nav-stacked" style="list-style-type:none;">
		                        <li {% if selectmenu == "index" %}class="active"{% endif %}>
								{{ link_to('data_supir/index','<span class="fa-stack fa-lg pull-left"><i class="fa fa-search fa-stack-1x "></i></span>Search') }}
								</li>
								<li {% if selectmenu == "new" %}class="active"{% endif %}>
								{{ link_to('data_supir/new','<span class="fa-stack fa-lg pull-left"><i class="fa fa-plus fa-stack-1x "></i></span>New') }}
								</li>
		                       </ul>
		                </li {% endif %}>
		                <li {% if session.get('level')=="admin" %}
		                {% if selectmenu == "data_pemesanan" %}class="active"{% endif %}>
		                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-envelope-o fa-stack-1x "></i></span>Pemesanan</a>
		                       <ul class="nav-pills nav-stacked" style="list-style-type:none;">
		                        <li {% if selectmenu == "index" %}class="active"{% endif %}>
								{{ link_to('data_pemesanan/index','<span class="fa-stack fa-lg pull-left"><i class="fa fa-search fa-stack-1x "></i></span>Search') }}
								</li>
								<li {% if selectmenu == "new" %}class="active"{% endif %}>
								{{ link_to('data_pemesanan/new','<span class="fa-stack fa-lg pull-left"><i class="fa fa-plus fa-stack-1x "></i></span>New') }}
								</li>
								<li {% if selectmenu == "report" %}class="active"{% endif %}>
								{{ link_to('data_pemesanan/report','<span class="fa-stack fa-lg pull-left"><i class="fa fa-book fa-stack-1x "></i></span>Laporan') }}
								</li>
		                       </ul>
		                </li {% endif %}>
		                <li {% if session.get('level')=="admin" %}
		                {% if selectmenu == "data_user" %}class="active"{% endif %}>
		                    <a href="#"><span class="fa-stack fa-lg pull-left"><i class="fa fa-user fa-stack-1x "></i></span>User</a>
		                       <ul class="nav-pills nav-stacked" style="list-style-type:none;">
		                        <li {% if selectmenu == "index" %}class="active"{% endif %}>
								{{ link_to('data_user/index','<span class="fa-stack fa-lg pull-left"><i class="fa fa-search fa-stack-1x "></i></span>Search') }}
								</li>
								<li {% if selectmenu == "new" %}class="active"{% endif %}>
								{{ link_to('data_user/new','<span class="fa-stack fa-lg pull-left"><i class="fa fa-plus fa-stack-1x "></i></span>New') }}
								</li>
		                       </ul>
		                </li {% endif %}>
		            	<li {% if selectmenu == "about" %}class="active"{% endif %}>
							{{ link_to('about','<span class="fa-stack fa-lg pull-left"><i class="fa fa-home fa-stack-1x "></i></span>About') }}
		                </li>
		                <li {% if session.get('level')=="" %}
		                 {% if selectmenu == "login" %}class="active"{% endif %}>
							{{ link_to('login','<span class="fa-stack fa-lg pull-left"><i class="fa fa-sign-in fa-stack-1x "></i></span>Login') }}
		                </li {% endif %}>
		                <li {% if session.get('level')=="admin" %}
		                 {% if selectmenu == "logout" %}class="active"{% endif %}>
							{{ link_to('/login/logout','<span class="fa-stack fa-lg pull-left"><i class="fa fa-sign-out fa-stack-1x "></i></span>Logout') }}
		                </li  {% endif %}>
		                


		            </ul>
		        </div><!-- /#sidebar-wrapper -->
		        <!-- Page Content -->
		        <div id="page-content-wrapper">
		            <div class="container-fluid xyz">
		                <div class="row">
		                    <div class="col-lg-12">
        {{ content() }}
													</div>
								                </div>
								            </div>
								        </div>
								        <!-- /#page-content-wrapper -->

								    </div>
								    <!-- /#wrapper -->
								    <!-- jQuery -->

								{{ javascript_include("js/sidebar_menu.js") }}
    </body>
</html>
