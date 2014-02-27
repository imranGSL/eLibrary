<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 1/22/14
  Time: 1:58 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="userlayout">
    <title>Book Fair-Display Books</title>
</head>

<body>
<div class="page-header">
    <h1>
        Display Books
    </h1>
</div><!-- /.page-header -->
<div class="">
    <form id="searching" class="form-horizontal" action="${createLink(controller: 'manageBooks', action: 'search')}">

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="categoryName">Category Name</label>

            <div class="col-xs-12 col-sm-9">

                <select id="categoryName" name="categoryName" class="select2" data-placeholder="Click to Choose...">
                    <option value="">Chose a Category;</option>
                    <g:each in="${myobj}">
                        <option value="${it.id}">${it.catagoryName}</option>
                    </g:each>
                </select>

            </div>
        </div>

        <div class="col-lg-offset-3">
            <input type="submit" class="btn btn-danger" id="submit" value="Search Book"/>

            <input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>
        </div>
    </form>
</div>
</hr>
<div class="content scaffold-create" role="main">
    <h1>Show books</h1>
    <g:if test="${flash.message}"><div class="message" role="status">${flash.message}</div></g:if>






    <g:each in="${myobj1}">
        <table border="0" class="table table-bordered">
            <tr>
                <td rowspan="8"><ii:imageTag indirect-imagename="${it.bookIcon}" width="150px" height="150px"/></td>
                %{--<td rowspan="7"><img src="${resource(dir: 'images/cistomImages', file: 'eakraPathshala.jpg')}"></td>--}%
            </tr>
            <tr>
                <td>${it.booksName}</td>
            </tr>
            <tr>
                <td>${it.authorName}</td>
            </tr>
            <tr>
                <td>${it.discription}</td>
            </tr>
            <tr>
                <td>${it.categoryName}</td>
            </tr>
            <tr>
                <td>
                    <g:form controller="manageBooks" action="download"><g:textField name="id" hidden="" value="${it.id}"/>
                        <g:submitButton name="submit" value="Download"
                                        class="btn btn-success"/>&nbsp;&nbsp;&nbsp;${it.bookSize} KB
                    </g:form>
                </td>

            </tr>


        </table>
    </g:each>

</div>

</body>
</html>