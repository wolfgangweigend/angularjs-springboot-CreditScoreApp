<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AngularJS + Spring Boot</title>  
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
  </head>
  <body ng-app="myApp" class="ng-cloak">
      <div class="generic-container" ng-controller="CreditController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Customer Credit Score - Demo Application Germany</span></div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="ctrl.user.id" />
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">First Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.firstname" name="firstname" class="form-control input-sm" placeholder="Enter the First Name" required ng-minlength="3"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.firstname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.firstname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.firstname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                        
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Last Name</label>
                              <div class="col-md-7">
                                  <input type="text" name="lastname" ng-model="ctrl.user.lastname" class="form-control input-sm" required placeholder="Enter the Last Name."/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.lastname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.lastname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.lastname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Date of Birth</label>
                              <div class="col-md-7">
                                  <input type="text" id="datepicker" ng-model="ctrl.user.dateofbirth" name="dateofbirth" class="form-control input-sm" required placeholder="Enter the date of birth." />
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.dateofbirth.$error.required">This is a required field</span>
                                      <span ng-show="myForm.dateofbirth.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">SSN</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.ssn" name="ssn" class="form-control input-sm" placeholder="Enter the SSN number. AAA-GG-SSSS or AAAGGSSSS" required ng-pattern="/^\d{3}-?\d{2}-?\d{4}$/"/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.ssn.$error.required">This is a required field</span>
                                      <span ng-show="myForm.ssn.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>                      
 
                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit"  value="Score" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Credit Score: <font color="red">{{ctrl.user.score}}</font></span></div>
          </div>
      </div>
      
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/customer_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/customer_controller.js' />"></script>
  </body>
</html>
