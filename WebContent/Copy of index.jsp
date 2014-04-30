<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/libs/jquery-1.10.2.js"></script>
<script type="text/javascript" src="js/libs/handlebars-1.1.2.js"></script>
<script type="text/javascript" src="js/libs/ember-1.5.0.js"></script>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
</head>
<body>

<div class="row">
  <div class="col-xs-12 col-sm-6 col-lg-3 col-md-8" style="border:1px solid">.col-xs-6 .col-sm-3</div>
</div>

-
<div class="row">
  <div class="col-xs-2">
    <input type="text" class="form-control" placeholder=".col-xs-2">
  </div>
  <div class="col-xs-3">
    <input type="text" class="form-control" placeholder=".col-xs-3">
  </div>
  <div class="col-xs-4">
    <input type="text" class="form-control" placeholder=".col-xs-4">
  </div>
</div>

<table class="table table-bordered table-striped table-responsive">
<thead><tr><th>Name</th><th>Action</th></tr></thead>
<tbody>
<tr><td>test</td><td> <button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-edit"></span></button><button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-trash"></span></button> </td></tr>
<tr><td>test</td><td> <button class="btn btn-default btn-sm"><span class="glyphicon glyphicon-edit"></span></button> </td></tr>
<tr><td>test</td><td> <button class="btn btn-default btn-xs"><span class="glyphicon glyphicon-edit"></span></button> </td></tr>
</tbody>
</table>


<script type="text/x-handlebars" >
{{outlet}}
</script>
<script type="text/x-handlebars" id="index">
<h2>Welcome</h2>
<button class="btn" {{action 'contract'}}>Contract</button>

</script>
<Script>
App=Ember.Application.create();
</Script>

</body>
</html>