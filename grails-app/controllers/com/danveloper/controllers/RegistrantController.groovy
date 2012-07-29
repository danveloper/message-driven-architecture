package com.danveloper.controllers

import com.danveloper.model.Registrant
import com.danveloper.commands.RegistrantCommand

class RegistrantController {
    def registrantWorkflow

    def index() {
        [
            registrantInstanceList: Registrant.list(sort: "id", order: "desc", max: params.max ?: 10, min: params.min ?: 0),
            registrantInstanceTotal: Registrant.count
        ]
    }

    def create() {

    }

    def save() {
        def registrantInstance = new Registrant(params).save(flush:true)
        redirect(action: 'show', params: [id: registrantInstance?.id])
    }

    def show() {
        def registrantInstance = Registrant.get(params.id)
        def registrantCommand = new RegistrantCommand(registrant: registrantInstance)
        [
            registrantCommand: registrantWorkflow.process(registrantCommand)
        ]
    }
}
