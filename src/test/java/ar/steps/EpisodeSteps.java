package ar.steps;

import ar.validator.CharacterValidator;
import ar.validator.EpisodeValidator;
import io.cucumber.java.en.Then;

public class EpisodeSteps {

    @Then("se verifica que el episodio aleatorio no es nulo")
    public void seVerificaQueElEpisodioAleatorioNoEsNulo() {
        EpisodeValidator.validate();
    }
}
