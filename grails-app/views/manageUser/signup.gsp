<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 12/30/13
  Time: 8:50 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="loginlayut">
    <title>Eakrapathshala -Signup</title>

    %{--<r:script>--}%
         %{--$('#signupForm').submit(function(e){--}%

             %{--$.ajax({--}%
                 %{--url:"${createLink(controller: 'manageUser', action: 'signup')}",--}%
                 %{--type:'post',--}%
                 %{--dataType:'json',--}%
                 %{--data:$(this).serialize(),--}%
                 %{--success:function(data){--}%
                  %{--var wrongNumber=data.wrongNumber--}%
                  %{--if(wrongNumber=="1" || wrongNumber=="2"){--}%
                  %{--$('#alertMessage').html("<h3 class='help-inline'></h3>")--}%
                  %{--.append("<i class='icon-bell'><b class='alert-danger'>"+data.message+"</b></i>")--}%
                  %{--}else{--}%
                    %{--$('#alertMessage').html("<h3 class='help-inline'></h3>")--}%
                  %{--.append("<i class='icon-bell'><b class='alert-danger'>"+data.message+"</b></i>")--}%
                  %{--}--}%
                 %{--},--}%
                 %{--failure:function(data){--}%

                 %{--}--}%
             %{--})--}%
             %{--e.preventDefault()--}%
         %{--});--}%

    %{--</r:script>--}%

</head>

<body>
<div class="main-container">
    <div class="main-content">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <i class="icon-book green"></i>
                            <span class="red">Book</span>
                            <span class="white">Fair</span>
                        </h1>
                        %{--<h4 class="blue">&copy; Company Name</h4>--}%
                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger">
                                        <i class="icon-coffee green"></i>
                                        Please Enter Your Information
                                    </h4>

                                    <h5 class="help-block"><g:if test='${flash.signUpMessage}'>  <div class='login_message alert-danger '> <i class="icon-bell red"> <b> ${flash.signUpMessage} </b> </i></div> </g:if> </h5>

                                    %{--<div id="alertMessage">--}%
                                    %{--</div>--}%

                                    <div class="space-6"></div>

                                    <form id="signupForm" name="signupForm" class="form-horizontal" action="${createLink(controller: 'manageUser',action: 'signup')}" enctype="multipart/form-data" method="post" onsubmit="return signupValidation(this)">
                                        <fieldset>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" class="form-control" name='firstName'
                                                           id='firstName' placeholder="First Name"/>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" class="form-control" name='lastName'
                                                           id='lastName' placeholder="Last Name"/>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="email" class="form-control" name='emailId' id='emailId'
                                                           placeholder="Email Id"/>
                                                </span>
                                            </label>



                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" class="form-control" name='countryName'
                                                           id='countryName' placeholder="Country Name"/>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="number" class="form-control" name='userId'
                                                           id='userId' placeholder="Iser ID"/>
                                                    <i class="icon-lock"></i>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" class="form-control" name='password'
                                                           id='password' placeholder="Password"/>
                                                    <i class="icon-lock"></i>
                                                </span>
                                            </label>

                                            <label class="block clearfix">
                                            <span class="block input-icon input-icon-right">
                                            <input type="file" class="form-control" name='proPicture'
                                            id='proPicture' />

                                            </span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="submit" value="Sign Up" name="signUp"
                                                           class="width-35 btn btn-small btn-primary" id="submit"/>
                                                </span>
                                            </label>

                                        </fieldset>
                                    </form>

                                </div><!-- /widget-main -->

                                <div class="toolbar clearfix">
                                    <div class="col-lg-offset-4">
                                        <a href="<g:createLink controller="loginout" action="authentication"/>"
                                           class="user-signup-link">
                                            <h4 class="align-center">Back To Login
                                                <i class="icon-ban-circle red"></i></h4>

                                        </a>
                                    </div>
                                </div>
                            </div><!-- /widget-body -->
                        </div><!-- /authentication-box -->

                    </div><!-- /position-relative -->
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div>
</div><!-- /.main-container -->
</body>
</html>