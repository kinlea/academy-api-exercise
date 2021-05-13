package ar.steps;

import api.config.EntityConfiguration;
import ar.validator.CharacterValidator;
import cucumber.api.java.en.When;
import io.cucumber.java.en.Then;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class CharacterSteps {

    @Then("la respuesta correcta")
    public void laRespuestaCorrecta() {
        CharacterValidator.validate();
    }
}
