<%@ page import="com.jft.User" %>



			<div class="${hasErrors(bean: userInstance, field: 'age', 'error')} required">
				<label for="age" class="control-label"><g:message code="user.age.label" default="Age" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" name="age" from="${18..65}" class="range" required="" value="${fieldValue(bean: userInstance, field: 'age')}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'age', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'department', 'error')} required">
				<label for="department" class="control-label"><g:message code="user.department.label" default="Department" /><span class="required-indicator">*</span></label>
				<div>
					<g:select class="form-control" id="department" name="department.id" from="${com.jft.Department.list()}" optionKey="id" required="" value="${userInstance?.department?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'department', 'error')}</span>
				</div>
			</div>

			<div class="${hasErrors(bean: userInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="user.name.label" default="Name" /></label>
				<div>
					<g:textField class="form-control" name="name" value="${userInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: userInstance, field: 'name', 'error')}</span>
				</div>
			</div>

