<ul class="dropdown-menu">
    <li class="hidden-xs">
        <div class="navbar-login logged-in">
            <div class="row">
                <div class="col-lg-4">
                    <p class="text-center">
                        <a href="//en.gravatar.com/" class="external" target="_blank" id="gravatarLink" title="To customise this avatar, register your email address at gravatar.com...">
                            <img src="//www.gravatar.com/avatar/${cl.showCurrentUserEmail().toLowerCase().encodeAsMD5()}?s=80"
                                 class="img-circle img-responsive avatar"/>
                        </a>
                    </p>
                </div>

                <div class="col-lg-8">
                    <p class="text-left word-wrap-break-word"><strong>${cl.showCurrentUserName()}</strong><br/><a
                            href="#">${cl.showCurrentUserEmail()}</a></p>
                </div>
            </div>
        </div>
    </li>
    <li class="divider hidden-xs"></li>
    <li>
        <div class="navbar-login navbar-login-session">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="profile-links">
                        <li><a href="https://transcribe.sanbi.org/userdetails/myprofile" class="" target="_blank">View Profile</a></li>
                        <li><a href="${g.createLink(controller: 'user', action: 'notebook')}" class="">Notebook</a></li>
                        <li><a href="${g.createLink(controller: 'logout', action: 'logout', params: [casUrl: "${grailsApplication.config.casServerName}/cas/logout", appUrl: "${grailsApplication.config.grails.serverURL}"])}" class="">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </li>
</ul>

