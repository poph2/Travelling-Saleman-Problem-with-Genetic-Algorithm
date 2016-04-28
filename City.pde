public class City {
  
  PVector location;
  
  public City(PVector loc) {
    location = loc;
  }
  
  public City(JSONObject jsonObject) {
    location = new PVector(jsonObject.getFloat("x"), jsonObject.getFloat("y"));
  }
  
  JSONObject toJSON() {
    JSONObject json = new JSONObject();
    
    json.setFloat("x", location.x);
    json.setFloat("y", location.y);
    
    return json;
  }
}