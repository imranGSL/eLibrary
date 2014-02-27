<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 12/27/13
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminlayout">
    <title>Book Fair -Search Sser</title>
</head>

<body>
<div class="page-header">
    <h1>
        Search User By Email Id
    </h1>
</div><!-- /.page-header -->

<div class="">
    <g:form class="form-horizontal" controller="manageUser" action="show">
        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="emailId">Email Id</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="email" name="emailId" id="emailId" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>

        <div class="col-lg-offset-3">
            <input type="submit" class="btn btn-danger" id="submit" value="Search"/>
            <input type="reset" class="btn btn-success" id="reset" value="Reset"/>
        </div>
    </g:form>
</div>
<hr/>

<div class="">

    <table class="table table-responsive">
        <tr>
            <th>Profile Image</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email Id</th>
            <th>Country</th>
            <th>User ID</th>
        </tr>
        <g:each in="${myobj}">
            <tr>
                <td><ii:imageTag indirect-imagename="${it.proPicture}" width="80px" height="80px"/></td>
                <td>${it.firstName}</td>
                <td>${it.lastName}</td>
                <td>${it.emailId}</td>
                <td>${it.countryName}</td>
                <td>${it.userId}</td>

            </tr>
        </g:each>
    </table>

</div>
</body>
</html>