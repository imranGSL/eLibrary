<!DOCTYPE html>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="EakraPathshala -Home"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="${resource(dir: 'css/bootstarp', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/bootstarp',file: 'bootstrap-theme.min.css')}">
    <link rel="stylesheet" href="${resource(dir: 'css/resource', file: 'ace.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/resource', file: 'ace-rtl.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/resource', file: 'ace-skins.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/resource', file: 'font-awesome.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/resource', file: 'select2.css')}" type="text/css">

    <script type="text/javascript" src="${resource(dir: 'js/resource',file: 'ace-extra.min.js')}"></script>

    <g:layoutHead/>
    <g:javascript library="application"/>
    <r:layoutResources/>
</head>

<body>
<g:render template="/topNavBar"/>
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>
        <g:render template="/sideAdminNavBar"/>

        <div class="main-content">

            <div class="page-content">

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->
                        <g:layoutBody/>
                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div><!-- /.main-content -->

    </div><!-- /.main-container-inner -->

</div><!-- /.main-container -->


<div class="footer" role="contentinfo"></div>

<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

<script type="text/javascript">
    window.jQuery || document.write("<script src='${resource(dir: 'js/resource', file: 'jquery-2.0.3.min.js')}'>"+"<"+"/script>");
</script>

<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='${resource(dir: 'js/resource', file: 'jquery.mobile.custom.min.js')}'>"+"<"+"/script>");
</script>
<script src="${resource(dir:'js/bootstarp',file: 'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'typeahead-bs2.min.js')}"></script>

<script src="${resource(dir: 'js/resource',file: 'fuelux.wizard.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'jquery.validate.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'additional-methods.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'jquery.maskedinput.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'bootbox.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'select2.min.js')}"></script>

<script src="${resource(dir: 'js/resource',file: 'ace-elements.min.js')}"></script>
<script src="${resource(dir: 'js/resource',file: 'ace.min.js')}"></script>

<g:javascript library="application"/>
<r:layoutResources/>
</body>
</html>
