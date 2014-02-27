<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 1/21/14
  Time: 9:20 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminlayout">
    <title>Book Fair-Add Books</title>
    %{--<r:script>--}%

        %{--jQuery(function ($) {--}%

            %{--var $validation = true;--}%

            %{--$('#addBooks').validate({--}%
                %{--errorElement: 'div',--}%
                %{--errorClass: 'help-block',--}%
                %{--focusInvalid: false,--}%
                %{--rules: {--}%
                    %{--booksName: {--}%
                        %{--required: true--}%
                    %{--},--}%
                    %{--authorName: {--}%
                        %{--required: true--}%

                    %{--},--}%
                    %{--discription: {--}%
                        %{--required: true,--}%
                        %{--minlength: 20--}%
                    %{--},--}%
                    %{--categoryName: {--}%
                        %{--required: true--}%
                    %{--},--}%
                    %{--bookId: {--}%
                        %{--required: true--}%
                    %{--},--}%
                    %{--book: {--}%
                        %{--required: true--}%
                    %{--}--}%
                %{--},--}%

                %{--messages: {--}%
                    %{--booksName: {--}%
                        %{--required: "Please provide a Book Name."--}%
                    %{--},--}%
                    %{--authorName: {--}%
                        %{--required: "Please provide the book Author Name."--}%
                    %{--},--}%
                    %{--discription: {--}%
                        %{--required: "Please provide the Book Discription.",--}%
                        %{--minlength: "please writh the discription within 20 words"--}%
                    %{--},--}%
                    %{--categoryName: {--}%
                        %{--required: "Please provide the Book Category Name."--}%
                    %{--},--}%
                    %{--bookId: {--}%
                        %{--required: "Please provide a unique Book Name."--}%
                    %{--},--}%
                    %{--book: {--}%
                        %{--required: "Please Upload a Book PDF."--}%
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

    %{--</r:script>--}%
</head>
<body>
<div class="page-header">
    <h1>
        Add A New Book
    </h1>
</div><!-- /.page-header -->



<div class="">
    <h3 class="help-inline">
        <g:if test="${flash.bookMessage}">

            <i class="icon-bell"><b class="alert-danger">${flash.bookMessage}</b></i>

        </g:if>
    </h3>
    <form id="addBooks" class="form-horizontal" action="${createLink(controller:'manageBooks',action: 'save')}" method="post"
          enctype="multipart/form-data">
        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="booksName">Book Name</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="text" name="booksName" id="booksName" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="authorName">Author Name</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="text" name="authorName" id="authorName" class="col-xs-12 col-sm-4" required=""/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="discription">Description(100 words)</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <textarea cols="20" rows="5" name="discription" id="discription" class="col-xs-12 col-sm-4" required=""> </textarea>
                </div>
            </div>
        </div>


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

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="bookId">Book ID</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="number" name="bookId" id="bookId" class="col-xs-12 col-sm-4"/>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-xs-12 col-sm-3 no-padding-right" for="book">Upload Book</label>

            <div class="col-xs-12 col-sm-9">
                <div class="clearfix">
                    <input type="file" name="book" id="book" class="col-xs-12 col-sm-4"/>
                </div>
            </div>
        </div>

        <div class="col-lg-offset-3">
            <input type="submit" class="btn btn-danger" id="submit" value="Add Book"/>


            <input type="reset" class="btn btn-success" id="reset" value="Reset Fields"/>
        </div>
    </form>
</div>
</body>
</html>