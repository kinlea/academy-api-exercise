package services;

import api.model.EpisodeModel;
import com.crowdar.api.rest.MethodsService;
import com.crowdar.api.rest.Response;

import java.util.Map;

public class EpisodeServices extends MethodsService {
    public static Response get(String jsonName, Map<String,String> parameter) {
        return get(jsonName, EpisodeModel.class, parameter);
    }

}
