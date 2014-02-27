<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 1/21/14
  Time: 7:44 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminlayout">
    <title>Book Fair-Add Category</title>
    <r:script>

        %{--jQuery(function ($) {--}%

            %{--var $validation = true;--}%

            %{--$('#addCategory').validate({--}%
                %{--errorElement: 'div',--}%
                %{--errorClass: 'help-block',--}%
                %{--focusInvalid: false,--}%
                %{--rules: {--}%
                    %{--catagoryName: {--}%
                        %{--required: true--}%
                    %{--},--}%
                    %{--catagoryIcon: {--}%
                        %{--required: true--}%
                    %{--}--}%
                %{--},--}%

                %{--messages: {--}%
                    %{--catagoryName: {--}%
                        %{--required: "Please provide a Book Category Name."--}%
                    %{--},--}%
                    %{--catagoryIcon: {--}%
                        %{--required: "Please provide the Book Category Icon."--}%
                    %{--}--}%
                %{--},--}%

                %{--invalidHandler: function (event, validator) { //display error alert on form submit--}%
                    %{--$('.alert-danger', $('.authentication-form')).show();--}%
                %{--},--}%

                %{--highlight: function (e) {--}%
                    %{--$(e).closest('.form-group').removeClass('has-info').addClass('has-error');--}%
                %{--},--}%

                %{--success: function (e) {--}%
                    %{--$(e).closest('.form-group').removeClass('has-error').addClass('has-info');--}%
                    %{--$(e).remove();--}%
                %{--},--}%

                %{--errorPlacement: function (error, element) {--}%
                    %{--if (element.is(':checkbox') || element.is(':radio')) {--}%
                        %{--var controls = element.closest('div[class*="col-"]');--}%
                        %{--if (controls.find(':checkbox,:radio').length > 1) controls.append(error);--}%
                        %{--else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));--}%
                    %{--}--}%
                    %{--else if (element.is('.select2')) {--}%
                        %{--error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));--}%
                    %{--}--}%
                    %{--else if (element.is('.chosen-select')) {--}%
                        %{--error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));--}%
                    %{--}--}%
                    %{--else error.insertAfter(element.parent());--}%
                %{--},--}%

                %{--submitHandler: function (form) {--}%
                %{--},--}%
                %{--invalidHandler: function (form) {--}%
                %{--}--}%
            %{--});--}%


%{--//        $('#modal-wizard .modal-header').ace_wizard();--}%
%{--//        $('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');--}%
        %{--})--}%

    </r:script>
</head>

<body>
<div class="page-header">
    <h1>
        Add a Category
    </h1>
</div><!-- /.page-header -->




<div class="">

    <h3 class="help-inline">
        <g:if test="${flash.message}">

            <i class="icon-bell"><b class="alert-danger">${flash.message}</b></i>

        </g:if>
    </h3>

    <form id="addCategory" class="form-horizontal" action="${createLink(controller: 'manageCategory', action: 'save')}" method="post"
          enctype="multipart/form-data">

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="catagoryName">Category Name</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="text" name="catagoryName" id="catagoryName" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="catagoryIcon">Category Icon</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="file" name="catagoryIcon" id="catagoryIcon" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>

        <div class="col-lg-offset-3">
            <input type="submit" class="btn btn-danger" id="submit" value="Add Category"/>


            <input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>
        </div>
    </form>
</div>
</body>
</html>