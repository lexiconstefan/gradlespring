<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="./resources/libs/bootstrap-3.3.6/css/bootstrap.css">
<link rel="stylesheet" href="./resources/css/app.css">

<script src="./resources/libs/angular-1.5.0/angular.js"></script>
<script src="./resources/app/user/app.js"></script>
<script src="./resources/app/user/service.js"></script>
<script src="./resources/app/user/controller.js"></script>
<title>HelloWorld page</title>
</head>
<body ng-controller="userController as ctrl">
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
				<li><a href="#">Link</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Link</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	<div style="width: 30%; float: left" class="generic-container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="lead">User Registration Form </span>
			</div>
			<div class="formcontainer">
				<form ng-submit="userSubmit(user)" class="form-horizontal">
					<div class="form-group col-md-12">
						<label class="col-md-2 control-lable">Förnamn</label>
						<diV class="col-md-7">
							<input ng-model="user.firstname" class="form-control">
						</diV>
					</div>
					<div class="form-group col-md-12">
						<label class="col-md-2 control-lable">Efternamn</label>
						<diV class="col-md-7">
							<input ng-model="user.lastname" class="form-control">
						</diV>
					</div>
					<div class="form-group col-md-12">
						<label class="col-md-2 control-lable">Adress</label>
						<diV class="col-md-7">
							<input ng-model="user.adress" class="form-control">
						</diV>
					</div>
					<div class="form-group col-md-12">
						<label class="col-md-2 control-lable">Kommun</label>
						<diV class="col-md-7">
							<input ng-model="user.municipality" class="form-control">
						</diV>
					</div>
					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit" value="Lägg till"
								class="btn btn-primary btn-sm">
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>


	<div style="width: 50%; float: left" class="generic-container">

		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Users </span>
			</div>
			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ID.</th>
							<th>Förnamn</th>
							<th>Efternamn</th>
							<th>Adress</th>
							<th>Kommun</th>
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in users">
							<td><span ng-bind="u.id"></span></td>
							<td><span ng-bind="u.firstname"></span></td>
							<td><span ng-bind="u.lastname"></span></td>
							<td><span ng-bind="u.adress"></span></td>
							<td><span ng-bind="u.municipality"></span></td>
							<td>
								<button type="button" ng-click="ctrl.edit(u.id)"
									class="btn btn-success custom-width">Edit</button>
								<button type="button" ng-click="ctrl.remove(u.id)"
									class="btn btn-danger custom-width">Remove</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="./resources/libs/bootstrap-3.3.6/js/bootstrap.js"></script>


</body>
</html>