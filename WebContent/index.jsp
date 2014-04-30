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
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
</head>
<body>


	<div id="container"></div>

	<script type="text/x-handlebars" data-template-name="application">
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
        <li> <a href='#/changelistgrid'>Changes</a> </li>
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

{{outlet}}
</script>
	<script type="text/x-handlebars" id="index">
<h2>Welcome</h2>
<button class="btn" {{action 'contract'}}>Contract</button>
{{view App.GridView}} 
</script>


	<script type="text/x-handlebars" data-template-name="changelistgrid">
{{view App.GridView}}
</script>

<script type="text/x-handlebars" data-template-name="change">
 <h2>{{changeid}}-{{description}}</h2>
<label>Date created:</label>{{datecreated}}
<label>Date Closed:</label>{{dateclosed}}

</script>



	<script type="text/x-handlebars" data-template-name="genericgrid">
<h2>{{tableView.name}}</h2>
<table class="table table-bordered table-striped table-responsive">
<thead>
<tr>
    {{#each model.tableView.columns}}
    <th>    {{name}}</th>
	{{else}}
	<th>Table Invalid</th>
    {{/each}}
</tr>
</thead>
<tbody>
{{#each record in model.tableView.records}}
<tr>
{{#each column in model.tableView.columns}}
{{#with column}}
<td>{{#if record.lhref}} {{#link-to 'change' record}} {{getRecord record name}} {{/link-to}} {{else}} {{getRecord record name}} {{/if}} </td>
{{/with}}
{{/each}}    
</tr>
{{/each}}
</tbody>
</table>
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
		App = Ember.Application.create();
		App.GridView = Ember.View.extend({
			templateName : 'genericgrid'
		});
		App.MenuView = Ember.View.create({
			templateName : 'menu'
		});
		App.Router.map(function() {
			this.route('changelistgrid');
			this.resource('change',{
				path:'/change/:ChangeId'
			});
		});
		App.ChangelistgridRoute = Ember.Route.extend({
			model : function() {

				var data = {
					"tableView" : {
						"name" : "Change List",
						"columns" : [ {
							"name" : "ChangeId",
							"datatype" : "string"
						}, {
							"name" : "Description",
							"datatype" : "string"
						}, {
							"name" : "Date Created",
							"datatype" : "date"
						} ],
						"records" : [ {
							"ChangeId" : "101",
							"Description" : "Test Change1",
							"lhref":"test"
						}, {
							"ChangeId" : "101",
							"Description" : "Test Change4"
						}, {
							"ChangeId" : "101",
							"Description" : "Test Change2"
						}, {
							"ChangeId" : "101",
							"Description" : "Test Change3"
						} ]
					}
				};

				return data;
			}
		});
		App.ChangeRoute=Ember.Route.extend({
			model:function(params){
				console.log(params);
				return {"changeid":101,"description":"Test Change","datecreated":"12-Jan-2014"};
			}
		});

		Ember.Handlebars.helper('getRecord', function(value, options) {
			var record = arguments[0];
			var columnName = arguments[1];
			return new Handlebars.SafeString(record[columnName]);
		});
	</Script>


</body>
</html>