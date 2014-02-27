<%--
  Created by IntelliJ IDEA.
  User: Mohammed Imran
  Date: 12/30/13
  Time: 7:16 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="loginlayut">
    <title>Eakrapathshala -Login</title>
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
                                    <h5 class="help-block"><g:if test='${flash.loginmessage}'>  <div class='login_message alert-danger '> <i class="icon-bell red"> <b> ${flash.loginmessage} </b> </i></div> </g:if> </h5>

                                    <div class="space-6"></div>

                                    <form class="form-horizontal" action="${createLink(controller: 'loginout',action: 'authentication')}" method="post">
                                        <fieldset>

                                            <div class="form-group">
                                                <label for='emailId' class="control-label">Email ID:</label>
                                                <div class=" ">
                                                    <span class="block input-icon input-icon-right ">
                                                        <input type="email" class="text_ span12 form-control " required="" name='emailId' id='emailId' placeholder="Email ID"   />
                                                        <i class="icon-user"></i>

                                                    </span>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label for='password' class=" control-label">Password:</label>
                                                <div class=" ">
                                                    <span class="block input-icon input-icon-right ">
                                                        <input type="password" class="text_ span12 form-control " required="" name='password' id='password' placeholder="password"   />
                                                        <i class="icon-lock"></i>

                                                    </span>
                                                </div>
                                            </div>

                                            <div class="space"></div>

                                            <div class="form-group">
                                                <input type="submit" value="Login" name="submit" class="width-35 pull-left btn btn-small btn-primary" id="submit" />
                                            </div>


                                        </fieldset>
                                    </form>

                                </div><!-- /widget-main -->

                                <div class="toolbar clearfix ">
                                    <div class="col-lg-offset-4 ">
                                        <a href="<g:createLink controller="loginout" action="index"/>"  class="user-signup-link">
                                            <h4 class="align-center">I want to sign up
                                                <i class="icon-camera red"></i></h4>

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