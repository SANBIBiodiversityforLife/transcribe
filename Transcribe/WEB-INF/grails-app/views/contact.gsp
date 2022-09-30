<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title><cl:pageTitle title="Contact Details" /></title>
    <meta name="layout" content="${grailsApplication.config.ala.skin}"/>
</head>

<body class="contact">

<cl:headerContent title="${message(code: 'default.contact.label', default: 'Contact Us')}" selectedNavItem="contact"/>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
				<p>The South African National Biodiversity Institute is responsible for exploring, revealing, celebrating and championing biodiversity for the benefit and enjoyment of all South Africans. We are a government institute, and as part of our mandate, we must “process, coordinate and disseminate information about biodiversity.

				We have set up transcribe.sanbi.org to help us fulfil this function of our mandate by allowing South Africa’s citizen scientists to aid us in digitizing our specimens.

				If you have any questions or require any help please contact us below.</p>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h3>Help in using SANBI and reporting issues</h3>
                    <b>E</b> <a href="http://biodiversityadvisor.sanbi.org/contact/">Email us</a><br/>
                    <b>T</b> +27 (0)21 799 8738<br/>
                    <a href = "http://www.sanbi.org">http://www.sanbi.org</a><br/>
                    <p/>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
