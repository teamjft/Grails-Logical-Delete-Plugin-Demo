<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>

	<section id="intro" class="first">
		<h1>Welcome to Grails Logical-Delete Plugin demo</h1>
		<h3>Total user in database : <util:userInDatabase/></h3>
        <h3>Total user through GORM : <util:userThroughGorm/></h3>
    </section>
</body>

</html>
