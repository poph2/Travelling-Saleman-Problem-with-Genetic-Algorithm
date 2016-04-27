
public class Generation {
  
  int generationIndex;
  
  float min;
  float max;
  
  ArrayList<City> cities;
  ArrayList<SalesMan> salesMen;
 
  public Generation(int genIndex) {
    
    generationIndex = genIndex;
    
    min = 0.0;
    max = 0.0;
    
    cities = new ArrayList<City>();
    salesMen = new ArrayList<SalesMan>();
    
  }
  
  void getRandomGeneration(int salesMenCount, int cityCount) {
    for(int i = 0; i < cityCount; i++) {
      cities.add(getRandomCity(100, 100));
    }
    
    for(int i = 0; i < salesMenCount; i++) {
        SalesMan salesM = new SalesMan(cities);
        salesM.getRandomTrip();
        salesMen.add(salesM);
    }
    
    sort();
  }
  
  void sort() {
  
    for(int i = 0; i < salesMen.size(); i++) {
      for(int j = 1; j < salesMen.size(); j++) {
        if(salesMen.get(j-1).distance > salesMen.get(j).distance) {
          SalesMan sTemp = salesMen.get(j-1);
          salesMen.set(j-1, salesMen.get(j));
          salesMen.set(j, sTemp);
        }
      }
    }
    
    getStatistics();
  }
  
  City getRandomCity(float maxX, float maxY) {
    float x = random(10, maxX);
    float y = random(10, maxY);
    
    City city = new City(new PVector(x, y));
    
    return city;
  }
  
  void getStatistics() {
    min = salesMen.get(0).distance;
    max = salesMen.get(salesMen.size()-1).distance;
  }
  
  
  Generation getNextGeneration() {
    
    cities = new ArrayList<City>();
    salesMen = new ArrayList<SalesMan>();
    
    getRandomGeneration(90, 15);
    
    generationIndex = generationIndex + 1;
    
    return this;
  }
}