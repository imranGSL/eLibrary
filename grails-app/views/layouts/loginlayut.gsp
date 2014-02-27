<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 12/30/13
  Time: 7:17 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title><g:layoutTitle default="Eakrapathshala -Login"/></title>
   <link rel="stylesheet" href="${resource(dir: 'css/bootstarp',file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/resource',file: 'font-awesome.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/resource',file: 'ace.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/resource',file: 'ace-rtl.min.css')}" type="text/css">
    <script src="${resource(dir: 'js/validation',file: 'signupValidation.js')}" > </script>
  <g:layoutHead/>
  <r:layoutResources/>
</head>
<body class="login-layout">
    <g:layoutBody/>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<script type="text/javascript">
    window.jQuery || document.write("<script src='${resource(dir: 'js/resource', file: 'jquery-2.0.3.min.js')}'>"+"<"+"/script>");
</script>
<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='${resource(dir: 'js/resource', file: 'jquery.mobile.custom.min.js')}'>"+"<"+"/script>");
</script>
<script src="${resource(dir:'js/bootstarp',file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'ace-elements.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'ace.min.js')}"></script>
<g:javascript library="application"/>
<r:layoutResources/>
</body>
</html>