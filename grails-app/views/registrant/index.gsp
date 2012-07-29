<%@ page import="com.danveloper.model.Registrant" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'registrant.label', default: 'Registrant')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-registrant" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-registrant" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="registrationConfirmed"
                              title="${message(code: 'registrant.registrationConfirmed.label', default: 'Registration Confirmed')}"/>

            <g:sortableColumn property="dateOfBirth"
                              title="${message(code: 'registrant.dateOfBirth.label', default: 'Date Of Birth')}"/>

            <g:sortableColumn property="firstName"
                              title="${message(code: 'registrant.firstName.label', default: 'First Name')}"/>

            <g:sortableColumn property="lastName"
                              title="${message(code: 'registrant.lastName.label', default: 'Last Name')}"/>

            <g:sortableColumn property="phoneNumber"
                              title="${message(code: 'registrant.phoneNumber.label', default: 'Phone Number')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${registrantInstanceList}" status="i" var="registrantInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${registrantInstance.id}">${fieldValue(bean: registrantInstance, field: "registrationConfirmed")}</g:link></td>

                <td><g:formatDate date="${registrantInstance.dateOfBirth}"/></td>

                <td>${fieldValue(bean: registrantInstance, field: "firstName")}</td>

                <td>${fieldValue(bean: registrantInstance, field: "lastName")}</td>

                <td>${fieldValue(bean: registrantInstance, field: "phoneNumber")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${registrantInstanceTotal}"/>
    </div>
</div>
</body>
</html>
