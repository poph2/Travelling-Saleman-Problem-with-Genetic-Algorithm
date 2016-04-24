
public class Generation {
  
  int generationIndex;
  
  ArrayList<City> cities;
  ArrayList<SalesMan> salesMen;
 
  public Generation(int genIndex) {
    
    generationIndex = genIndex;
    
    cities = new ArrayList<City>();
    salesMen = new ArrayList<SalesMan>();
    
    getRandomGeneration(90, 15);
    
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
  }
  
  
  
  
  
}