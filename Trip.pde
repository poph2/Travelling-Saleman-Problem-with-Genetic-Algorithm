public class Trip {
  
  float distance;
  
  City cityA, cityB;
  
  public Trip(City a, City b) {
    cityA = a;
    cityB = b;
    
    float x = abs(cityA.location.x - cityB.location.x);
    float y = abs(cityA.location.y - cityB.location.y);
    
    distance = sqrt(sq(x) + sq(y));
  }
}