<%@ page import="com.danveloper.model.Registrant" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'registrant.label', default: 'Registrant')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-registrant" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-registrant" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list registrant">

            <li class="fieldcontain">
                <span id="isOver18-label" class="property-label"><g:message
                        code="registrantCommand.isOver18" default="Registrant over 18?"/></span>

                <span class="property-value" aria-labelledby="isOver18-label"><g:fieldValue
                        bean="${registrantCommand}" field="isOver18"/></span>

            </li>

        <g:if test="${registrantInstance?.dateOfBirth}">
            <li class="fieldcontain">
                <span id="dateOfBirth-label" class="property-label"><g:message code="registrant.dateOfBirth.label"
                                                                               default="Date Of Birth"/></span>

                <span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate
                        date="${registrantCommand?.registrant?.dateOfBirth}"/></span>

            </li>
        </g:if>

        <g:if test="${registrantCommand?.registrant?.firstName}">
            <li class="fieldcontain">
                <span id="firstName-label" class="property-label"><g:message code="registrant.firstName.label"
                                                                             default="First Name"/></span>

                <span class="property-value" aria-labelledby="firstName-label"><g:fieldValue
                        bean="${registrantCommand?.registrant}" field="firstName"/></span>

            </li>
        </g:if>

        <g:if test="${registrantCommand?.registrant?.lastName}">
            <li class="fieldcontain">
                <span id="lastName-label" class="property-label"><g:message code="registrant.lastName.label"
                                                                            default="Last Name"/></span>

                <span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${registrantCommand?.registrant}"
                                                                                            field="lastName"/></span>

            </li>
        </g:if>

    </ol>
</div>
</body>
</html>
