<div class="sidebar" id="sidebar">
    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <img src="${resource(dir: 'images/cistomImages', file: 'green.png')}" alt="Green Sign">
            </button>

            <button class="btn btn-info">
                <img src="${resource(dir: 'images/cistomImages', file: 'blue.png')}" alt="Green Sign">
            </button>

            <button class="btn btn-warning">
                <img src="${resource(dir: 'images/cistomImages', file: 'Yellow.png')}" alt="Yellow Sign">
            </button>

            <button class="btn btn-danger">
                <img src="${resource(dir: 'images/cistomImages', file: 'pink.png')}" alt="Pink Sign">
            </button>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div><!-- #sidebar-shortcuts -->

    <ul class="nav nav-list">

        <li>
            <a href="<g:createLink controller="manageUser" action="index"/>">
                <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">
                <span class="menu-text">Home</span>
            </a>
        </li>

        <li>
            <a href="<g:createLink controller="manageBooks" action="forwardToSearch"/>">
                <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">
                <span class="menu-text">Search Book</span>
            </a>
        </li>

        <li>
            <a href="<g:createLink controller="manageUser" action="search"/>" class="dropdown-toggle">
                <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">
                <span class="menu-text">Search user</span>
            </a>
        </li>
        <li>
            <a href="<g:createLink controller="manageAnouncement" action="show"/>">
                <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">
                <span class="menu-text">Anouncements</span>
            </a>
        </li>

    </ul><!-- /.nav-list -->

</div>



