<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cirpi</title>
<script type="text/javascript" src="js/libs/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/libs/handlebars-1.1.2.js"></script>
<script type="text/javascript" src="js/libs/ember-1.5.0.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>


<div id="container">
</div>

<script type="text/x-handlebars" >
{{outlet}}
</script>
<script type="text/x-handlebars" id="index">
{{view App.MenuView}}
<h2>Welcome</h2>
<button class="btn" {{action 'contract'}}>Contract</button>
{{view App.GridView}}
</script>
<script id="menu" type="text/x-handlebars">
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Cirpi</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">Hello! User,</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Logout</a></li>
        <li class="dropdown"> 
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">More <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">Edit Profile</a></li>
            <li class="divider"></li>
            <li><a href="#">Change Password</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

</script>

<script type="text/x-handlebars" data-template-name="grid" id="grid">
<table class="table table-bordered table-striped table-responsive">
<thead><tr><th>Name</th><th>Action</th></tr></thead>
<tbody>
<tr><td>test</td><td> <button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-edit"></span></button><button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-trash"></span></button> </td></tr>
<tr><td>test</td><td> <button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-edit"></span></button> </td></tr>
<tr><td>test</td><td> <button class="btn btn-default btn-xs"><span class="glyphicon glyphicon-edit"></span></button> </td></tr>
</tbody>
</table>
</script>

<Script>
App=Ember.Application.create();
App.GridView = Ember.View.create({
	  templateName: 'grid'
	});
App.MenuView = Ember.View.create({
	  templateName: 'menu'
	});
</Script>


</body>
</html>