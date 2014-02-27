<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 1/21/14
  Time: 6:52 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="userlayout">
    <title></title>
</head>

<body>
<div class="page-header">
    <h1>
        Anouncement:<g:each in="${myobj}">${it.message}</g:each>
    </h1>
</div>




<h4>Welcome ${session["loggedInUser"].username}</h4>

</body>
</html>