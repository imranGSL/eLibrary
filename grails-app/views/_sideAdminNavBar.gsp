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
            <a href="<g:createLink controller="manageCategory" action="index"/>" class="dropdown-toggle">
                <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="Add Category">
                <span class="menu-text">Add Category</span>
            </a>
        </li>

        <li>
            <a href="<g:createLink controller="manageBooks" action="index"/>" class="dropdown-toggle">
                <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="Add Books">
                <span class="menu-text">Add Books</span>
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
        <a href="<g:createLink controller="manageAnouncement" action="index"/>" class="dropdown-toggle">
            <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="Announcement">
            <span class="menu-text">Do Anouncement</span>
        </a>
    </li>


        <li>
            <a href="<g:createLink controller="manageAnouncement" action="show"/>">
                <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">
                <span class="menu-text">Anouncements</span>
            </a>
        </li>

    <li>
        <a href="<g:createLink controller="manageAnouncement" action="jquery"/>">
            <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">
            <span class="menu-text">Using Jquery</span>
        </a>
    </li>

    <li>
        <a href="<g:createLink controller="manageReports" action="index"/>">
            <img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">
            <span class="menu-text">Reports</span>
        </a>
    </li>

        %{--<li>--}%
            %{--<a href="<g:createLink controller="admin" action="create"/>" class="dropdown-toggle">--}%
                %{--<img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">--}%
                %{--<span class="menu-text">Create New User</span>--}%

            %{--</a>--}%
        %{--</li>--}%

        %{--<li>--}%
            %{--<a href="<g:createLink controller="admin" action="showSearchBy"/>" class="dropdown-toggle">--}%
                %{--<img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">--}%
                %{--<span class="menu-text">Search By</span>--}%
            %{--</a>--}%
        %{--</li>--}%



        %{--<li>--}%
            %{--<a href="<g:createLink controller="user" action="index"/>">--}%
                %{--<img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">--}%

                %{--<span class="Login">--}%
                    %{--User--}%
                %{--</span>--}%
            %{--</a>--}%
        %{--</li>--}%

        %{--<li>--}%
            %{--<a href="<g:createLink controller="document" action="index"/>">--}%
                %{--<img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">--}%
                %{--<span class="menu-text">File Upload</span>--}%
            %{--</a>--}%
        %{--</li>--}%

        %{--<li>--}%
            %{--<a href="<g:createLink controller="uploadFile" action="index"/>" class="dropdown-toggle">--}%
                %{--<img src="${resource(dir: 'images/cistomImages', file: 'person.png')}" alt="User Registration">--}%
                %{--<span class="menu-text">Upload File</span>--}%
            %{--</a>--}%
        %{--</li>--}%
    </ul><!-- /.nav-list -->

</div>



