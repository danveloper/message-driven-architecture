package com.danveloper.model

class Registrant {
    String firstName
    String lastName
    String phoneNumber

    Date dateOfBirth

    Date registrationConfirmed

    static constraints = {
        // Let this be null; if it's not null, it means they were confirmed
        registrationConfirmed nullable: true
    }
}
