
<%@ page import="com.jft.User" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-user" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="age" title="${message(code: 'user.age.label', default: 'Age')}" />
			
				<g:sortableColumn property="dateCreated" title="${message(code: 'user.dateCreated.label', default: 'Date Created')}" />
			
				<th><g:message code="user.department.label" default="Department" /></th>
			
				<g:sortableColumn property="lastUpdated" title="${message(code: 'user.lastUpdated.label', default: 'Last Updated')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${userInstanceList}" status="i" var="userInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "age")}</g:link></td>
			
				<td><g:formatDate date="${userInstance.dateCreated}" /></td>
			
				<td>${fieldValue(bean: userInstance, field: "department")}</td>
			
				<td><g:formatDate date="${userInstance.lastUpdated}" /></td>
			
				<td>${fieldValue(bean: userInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${userInstanceCount}" />
	</div>
</section>

</body>

</html>
