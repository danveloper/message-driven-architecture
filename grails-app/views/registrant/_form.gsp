<%@ page import="com.danveloper.model.Registrant" %>



<div class="fieldcontain ${hasErrors(bean: registrantInstance, field: 'registrationConfirmed', 'error')} ">
    <label for="registrationConfirmed">
        <g:message code="registrant.registrationConfirmed.label" default="Registration Confirmed"/>

    </label>
    <g:datePicker name="registrationConfirmed" precision="day" value="${registrantInstance?.registrationConfirmed}"
                  default="none" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrantInstance, field: 'dateOfBirth', 'error')} required">
    <label for="dateOfBirth">
        <g:message code="registrant.dateOfBirth.label" default="Date Of Birth"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="dateOfBirth" precision="day" value="${registrantInstance?.dateOfBirth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrantInstance, field: 'firstName', 'error')} ">
    <label for="firstName">
        <g:message code="registrant.firstName.label" default="First Name"/>

    </label>
    <g:textField name="firstName" value="${registrantInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrantInstance, field: 'lastName', 'error')} ">
    <label for="lastName">
        <g:message code="registrant.lastName.label" default="Last Name"/>

    </label>
    <g:textField name="lastName" value="${registrantInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrantInstance, field: 'phoneNumber', 'error')} ">
    <label for="phoneNumber">
        <g:message code="registrant.phoneNumber.label" default="Phone Number"/>

    </label>
    <g:textField name="phoneNumber" value="${registrantInstance?.phoneNumber}"/>
</div>

