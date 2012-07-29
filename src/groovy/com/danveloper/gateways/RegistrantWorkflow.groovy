package com.danveloper.gateways

import com.danveloper.commands.RegistrantCommand
import org.springframework.integration.annotation.Gateway

interface RegistrantWorkflow {
    @Gateway(requestChannel = "registrant-workflow")
    public RegistrantCommand process(RegistrantCommand registrantCommand);
}
