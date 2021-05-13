package ar.validator;

import api.model.CharacterModel;
import com.crowdar.api.rest.APIManager;
import org.testng.Assert;

public class CharacterValidator {

    public static void validate() {
        CharacterModel response = (CharacterModel) APIManager.getLastResponse().getResponse();
        Assert.assertEquals(response.getName(), "Morty Smith");
        Assert.assertTrue(response.getId()>0);
    }


}
