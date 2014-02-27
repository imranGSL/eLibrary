<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 1/28/14
  Time: 11:41 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminlayout">
    <title>Book Fair -Reports</title>
</head>

<body>
<div class="page-header">
    <h1>
        Reports
    </h1>
</div><!-- /.page-header -->

<div class="">
    %{--<form id="searching" class="form-horizontal">--}%
        %{--<g:jasperForm controller="manageReports" action="report" jasper="w_iReport">--}%
        %{--<div class="form-group">--}%
            %{--<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="searchBy">Search By</label>--}%

            %{--<div class="col-xs-12 col-lg-5">--}%
                %{--<select id="searchBy" name="searchBy" class="select2" data-placeholder="Click to Choose...">--}%
                    %{--<option value="">Chose A Way</option>--}%
                    %{--<option value="emailId">Books Report</option>--}%
                    %{--<option value="userName">User Reports</option>--}%
                %{--</select>--}%
            %{--</div>--}%
        %{--</div>--}%

        %{--<div class="col-lg-offset-3">--}%
            %{--<input type="submit" class="btn btn-danger" id="submit" value="Reports"/>--}%


            %{--<input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>--}%
        %{--</div>--}%
    %{--</form>--}%
    <g:jasperReport jasper="booksReport" format="PDF" name="booksReport" />
            %{--<g:jasperButton format="pdf" text="PDF"/>--}%
       %{--</g:jasperForm>--}%
</div>
<hr/>

</body>
</html>