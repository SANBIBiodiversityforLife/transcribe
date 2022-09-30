<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags --%>
    <cl:addApplicationMetaTags/>
    <meta name="description" content="SANBI - Digivol"/>
    <meta name="author" content="SANBI - Digivol"/>
    <r:external dir="images/" file="favicon.ico"/>

    <title><g:layoutTitle default="DIGIVOL | Home"/></title>

    <r:require modules="digivol, bvp-js, bootbox"/>
    <g:layoutHead/>
    <r:layoutResources/>

    <g:render template="/layouts/commonCss" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="${pageProperty(name: 'body.class')}" data-ng-app="${pageProperty(name: 'body.data-ng-app')}">
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link uri="/" class="navbar-brand"><r:img dir="images/2.0/" file="logoSanbi.png"/></g:link>
        </div>

        <div id="navbar" class="navbar-collapse collapse">

            <div class="custom-search-input">
                <g:form controller="project" action="list" method="GET" >
                <div class="input-group">
                    <g:textField name="q" class="form-control input-lg" placeholder="Search e.g. Bivalve" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
                </g:form>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class="${pageProperty(name: 'page.selectedNavItem') == 'bvp' ? 'active' : ''}"><g:link
                        uri="/">Home</g:link>
                </li>
                <li class="${pageProperty(name: 'page.selectedNavItem') == 'institutions' ? 'active' : ''}"><g:link
                        controller="institution" action="list">Institutions</g:link></li>
                <li class="${pageProperty(name: 'page.selectedNavItem') == 'expeditions' ? 'active' : ''}"><g:link
                        controller="project" action="list">Expeditions</g:link></li>
                <li class="${pageProperty(name: 'page.selectedNavItem') == 'tutorials' ? 'active' : ''}"><g:link
                        controller="tutorials" action="index">Tutorials</g:link></li>
                <li class="${pageProperty(name: 'page.selectedNavItem') == 'forum' ? 'active' : ''}"><g:link
                        controller="forum" action="index">Forum</g:link></li>
                <li class="${pageProperty(name: 'page.selectedNavItem') == 'contact' ? 'active' : ''}"><g:link
                        controller="contact" action="index">Contact Us</g:link></li>
                <!-- Logged In Starts -->
                <cl:isNotLoggedIn>
                    <li>
                        <a href="${grailsApplication.config.casServerName}/cas/login?service=${grailsApplication.config.grails.serverURL}/"><i class="glyphicon glyphicon-user"></i> Log in</a>
                    </li>
                </cl:isNotLoggedIn>
                <cl:isLoggedIn>
                    <li class="dropdown ${pageProperty(name: 'page.selectedNavItem') == 'userDashboard' ? 'active' : ''}">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-user"></span>
                            My Profile
                            <span class="glyphicon glyphicon-chevron-down"></span>
                        </a>

                        <g:render template="/layouts/profileDropDown"/>
                    </li>
                    <cl:ifAdmin>
                        <li class="${pageProperty(name: 'page.selectedNavItem') == 'bvpadmin' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'admin')}"><i class="fa fa-cog fa-lg"></i> Admin</a>
                        </li>
                    </cl:ifAdmin>
                </cl:isLoggedIn>

            <!-- Logged In Ends -->

            </ul>
        </div>
    </div>
</nav>

<g:if test="${!pageProperty(name: 'page.disableBreadcrumbs', default: false)}">
    <section id="breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <cl:messages/>
                    %{--<div>--}%
                    <g:pageProperty name="page.page-header"/>
                    %{--</div>--}%
                </div>
            </div>
        </div>
    </section>
</g:if>

<g:if test="${g.pageProperty(name: "page.page-title")}">
    <div class="a-feature ${g.pageProperty(name: "page.pageType", default: "simple-header")}">
        <div class="container">
            %{--<div class="row">--}%
                %{--<div class="col-sm-10">--}%
                    <g:pageProperty name="page.page-title"/>
                %{--</div>--}%
            %{--</div>--}%
        </div>
    </div>
</g:if>

<g:layoutBody/>

<section id="why" class="white">
    <div class="container">
        <h2 class="heading"><g:message code="layout.whyinvolved.heading" default="Why you should get involved?"/></h2>

        <div class="row">
            <div class="col-sm-4">
                <h3><g:message code="layout.whyinvolved.contribute.heading" default="Contribute to knowledge"/></h3>
                <p><g:message code="layout.whyinvolved.contribute.body" default="Help researchers better understand the diversity of plant and animal life."/></p>
            </div>

            <div class="col-sm-4">
                <h3><g:message code="layout.whyinvolved.volunteer.heading" default="Be an online volunteer"/></h3>
                <p><g:message code="layout.whyinvolved.volunteer.body" default="Be part of an active community that supports and contributes to science and culture."/></p>
            </div>

            <div class="col-sm-4">
                <h3><g:message code="layout.whyinvolved.accessible.heading" default="Make data accessible"/></h3>
                <p><g:message code="layout.whyinvolved.accessible.body" default="Unlock collections and extend the reach of information around the world."/></p>
            </div>
        </div>
    </div>
</section>

<section id="logos-institutions">
    <div class="container">
        <h2 class="heading">Institutions using digivol</h2>

        <div class="row">

            <div class="col-sm-12">
                <r:img dir="images/2.0/institutions/" file="logoAustMus@2x.png"/>
                <r:img dir="images/2.0/institutions/" file="logoCSIRO.svg"/>
                <r:img dir="images/2.0/institutions/" file="logoMelbourneVictoria@2x.png"/>
                <r:img dir="images/2.0/institutions/" file="logoVermont@2x.png"/>
                <r:img dir="images/2.0/institutions/" file="logoSmithsonian@2x.png"/>
            </div>

        </div>
    </div>

</section>


<section id="footer" class="dark">
    <footer>
        <div class="container">

            <div class="row footer-header">
                <div class="col-sm-12">
                    <a class="footer-brand " href="https://www.facebook.com/groups/181836918595085/"><r:img
                            dir="images/2.0/" file="logoDigivolInverted.png"/></a>

                    <div class="social-icons pull-right">
                        <a href="https://www.facebook.com/DigiVolOnline/?ref=hl" class="btn-lg"><i class="fa fa-facebook fa-lg"></i></a>
                        <a href="https://twitter.com/sanbi_za" class="btn-lg"><i class="fa fa-twitter fa-lg"></i></a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-3">
                <div class="green-bottom-border">
                    <h3>Expeditions</h3>
                </div>
                    <ul>
                        <li><a href="${g.createLink(controller: 'project', action: 'list')}">View all expeditions</a></li>
                    </ul>
                    
                </div>

                <div class="col-sm-3">
                <div class="light-orange-bottom-border">
                    <h3>About DigiVol</h3>
                </div>    
                    <ul>
                        <li><g:link controller="about" fragment="what-is-digivol">What is DigiVol</g:link></li>
                        <li><g:link controller="about" fragment="why-capture-this-data">Why capture this data</g:link></li>
                        <li><g:link controller="about" fragment="submit-an-expedition">Submit an expedition</g:link></li>
                        <li><g:link controller="about" fragment="useful-references">Useful references</g:link></li>
                    </ul>
                </div>

                <div class="col-sm-3">
                <div class="purple-bottom-border">
                    <h3>How can I volunteer</h3>
                </div>
                    <ul>
                        <li><g:link controller="about" fragment="registering">Become an Online Volunteer</g:link></li>
                        <li><g:link controller="about" fragment="transcribing">How to get started</g:link></li>
                        <li><g:link controller="about" fragment="what-happens-next">What happens next</g:link></li>
                        <li><g:link controller="about" fragment="examples">Examples</g:link></li>
                    </ul>
                </div>

                <div class="col-sm-3">
                <div class="dark-orange-bottom-border">
                    <h3>Contact us</h3>
				</div>
                    <p>Get help and report issues.</p>

                    <p class="address">
                        <a href="http://biodiversityadvisor.sanbi.org/contact">Email us</a><br/>
                        +27 (0)12 843 5000<br/>
                    	<a href = "http://www.sanbi.org">http://www.sanbi.org</a><br/>
                    </p>
                </div>
            </div>
        </div>
    </footer>
</section>

<g:render template="/layouts/associatedBrands" />

<g:render template="/layouts/notifications" />

<g:render template="/layouts/ga" />

%{--<asset:javascript src="application.js" />--}%
<r:script>
    var BVP_JS_URLS = {
                selectProjectFragment: "${createLink(controller: 'project', action: 'findProjectFragment')}",
                webappRoot: "${resource(dir: '/')}",
                picklistAutocompleteUrl: "${createLink(action: 'autocomplete', controller: 'picklistItem')}"
            };
</r:script>
%{--<asset:deferredScripts/>--}%
<!-- JS resources-->
<r:layoutResources/>
</body>
</html>
