<div class="navbar navbar-default" id="navbar">
<script type="text/javascript">
    try {
        ace.settings.check('navbar', 'fixed')
    } catch (e) {
    }
</script>

<div class="navbar-container" id="navbar-container">
<div class="navbar-header col-lg-push-10">

    <a href="#" class="navbar-brand">
        <small>
            <img src="${resource(dir: 'images/cistomImages',file: 'world.gif')}" alt="EakraPathshala Image" height="100px" width="100px">
             Book Fair
        </small>
    </a><!-- /.brand -->

</div><!-- /.navbar-header -->
    <h4 style="text-align: right">${session["loggedInUser"].username}  || <a style="color: #000000" href="${createLink(controller: 'loginout',action: 'logout')}">LogOut</a></h4>

</div><!-- /.container -->
</div>