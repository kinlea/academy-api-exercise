package ar.validator;

import api.model.EpisodeModel;
import com.crowdar.api.rest.APIManager;
import org.testng.Assert;

public class EpisodeValidator {

    public static void validate() {
        EpisodeModel response = (EpisodeModel) APIManager.getLastResponse().getResponse();
        Assert.assertNotNull(response.getName());
        Assert.assertNotNull(response.getAir_date());
        Assert.assertNotNull(response.getEpisode());
    }


}
