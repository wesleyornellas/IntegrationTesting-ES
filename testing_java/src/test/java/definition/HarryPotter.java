package definition;

import groovy.json.internal.LazyMap;

public class HarryPotter {

    private static final String URL_SW = "http://hp-api.herokuapp.com/api/";
    private static LazyMap fieldsJson = new LazyMap();
    private static int people;

    public static void addFields(String field, String value) {
        fieldsJson.put(field, value);
    }

    public static void clearFields() {
        fieldsJson.clear();
    }

    public static LazyMap getFields() {
        return fieldsJson;
    }

    public static String getEndPoint() {
        return URL_SW;
    }

    public static int getPeople() {
        return people;
    }

    public static void setPeople(int codePeople) {
        people = codePeople;
    }

}
