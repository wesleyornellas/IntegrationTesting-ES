package definition;

import groovy.json.internal.LazyMap;

public class HarryPotter {

    private static final String URL_HP = "https://www.potterapi.com/v1/";
    private static final String KEY = "?key=$2a$10$29QijA66RuPieM6qea8xSOeUsF82BRaO8Fl6RPx3bBTmrHw1D5iCq";
    private static LazyMap fieldsJson = new LazyMap();
    private static String people;

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
        return URL_HP;
    }

    public static String getKey() {
        return KEY;
    }

    public static String getPeople() {
        return people;
    }

    public static void setPeople(String codePeople) {
        people = codePeople;
    }
}
