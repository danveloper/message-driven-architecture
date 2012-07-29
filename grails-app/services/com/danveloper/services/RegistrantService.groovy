package com.danveloper.services

class RegistrantService {
    def overEighteenRule(registrantCommand) {
        if ((new Date().year - registrantCommand?.registrant?.dateOfBirth.year) >= 18) {
            registrantCommand?.isOver18 = true
        } else {
            registrantCommand?.isOver18 = false
        }
        registrantCommand
    }
}
