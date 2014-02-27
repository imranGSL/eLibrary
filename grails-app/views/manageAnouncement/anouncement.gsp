<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 1/25/14
  Time: 6:43 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminlayout">
    <title></title>
</head>

<body>
<div class="page-header">
    <h1>
        Give An Anouncement
    </h1>
</div><!-- /.page-header -->
<div class="">
    <h3 class="help-inline">
        <g:if test="${flash.anouncementMessage}">

            <i class="icon-bell"><b class="alert-danger">${flash.anouncementMessage}</b></i>

        </g:if>
    </h3>

    <form class="form-horizontal" action="${createLink(controller: 'manageAnouncement', action: 'save')}" method="post">

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="message">Announcement</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <textarea cols="20" rows="5" name="message" id="message" class="col-xs-12 col-sm-4"
                              required=""></textarea>
                </div>
            </div>
        </div>

        <div class="col-lg-offset-3">
            <input type="submit" class="btn btn-danger" id="submit" value="Announcement"/>


            <input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>
        </div>

    </form>
</div>
</body>
</html>