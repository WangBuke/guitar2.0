<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="text-center">Guitar Shop</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <hr>
          </div>
        </div>
      </div>
    </div>
   
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h4>All Guitar</h4>
          </div>
        </div>
      </div>
    </div>
   
     
   

    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <table class="table">
              <thead>
                <tr>
                  <th>Builder</th>
                  <th>Type</th>
                  <th>Model</th>
                  <th>Topwood</th>
                  <th>Backwood</th>
                  <th>SerialNumber</th>
                  <th>Price</th>
                </tr>
              </thead>
              <tbody>
              <c:forEach items="${guitars}" var="guitar">
                <tr>
                
                  <td>${guitar.spec.builder }</td>
                  <td>${guitar.spec.type }</td>
                  <td>${guitar.spec.model }</td>
                  <td>${guitar.spec.topWood }</td>
                  <td>${guitar.spec.backWood }</td>
                  <td>${guitar.serialNumber }</td>
                  <td>${guitar.price }</td>
                 
                </tr>
          
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
</body>
</html>