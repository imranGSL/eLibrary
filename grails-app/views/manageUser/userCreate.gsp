<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 12/25/13
  Time: 5:40 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminlayout">
    <title>EakraPathshala -User registration</title>
</head>

<body>
<div class="page-header">
    <h1>
        User Registration Form
    </h1>
</div><!-- /.page-header -->

<h3 class="help-inline">
    <g:if test="${flash.message}">

        <i class="icon-bell"><b class="alert-danger">${flash.message}</b></i>

    </g:if>
    <g:elseif test="${flash.message}">
        <i class="icon-bell"><b class="alert-danger">${flash.message}</b></i>
    </g:elseif>
    <g:else>

    </g:else>
</h3>


<div class="">
    <g:form class="form-horizontal" controller="manageUser" action="save">

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="firstName">First Name</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="text" name="firstName" id="firstName" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="lastName">Last Name</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="text" name="lastName" id="lastName" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="emailId">Email</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="email" name="emailId" id="emailId" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="bloodGroup">Blood Group</label>

            <div class="col-xs-12 col-sm-9">
                <select id="bloodGroup" name="bloodGroup" class="select2" data-placeholder="Click to Choose...">
                    <option value="">Chose Blood Group;</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="profession">Profession</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="text" name="profession" id="profession" class="col-xs-12 col-sm-4"/>
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="district">District</label>

            <div class="col-xs-12 col-sm-9">
                <select id="district" name="district" class="select2" data-placeholder="Click to Choose...">
                    <option value="">Chose A District</option>
                    <option value="Dhaka">Dhaka</option>
                    <option value="Chittagong">Chittagong</option>
                    <option value="Rajshahie">Rajshahie</option>
                    <option value="Khulna">Khulna</option>
                    <option value="Borishal">Borishal</option>
                    <option value="Shyelet">Shyelet</option>
                    <option value="Tangail">Tangail</option>
                    <option value="Bhola">Bhola</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="userName">User Name</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="text" name="userName" id="userName" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="password">Password</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="password" name="password" id="password" class="col-xs-12 col-sm-4" value="AN231290SZ" required=""/>
                </div>
            </div>
        </div>


        <div class="col-lg-offset-3">
            <input type="submit" class="btn btn-danger" id="submit" value="Registration"/>


            <input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>
        </div>
    </g:form>
</div>
</body>
</html>