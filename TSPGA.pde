
ArrayList<City> cities;

int salesMenCount = 8;

int[] graphDivision = {3, 3};

int cityCount = 5;//graphDivision[0] * graphDivision[1];

ArrayList<SalesMan> salesMen;
  
void setup() {
  size(640, 360);
  surface.setResizable(true);
  
  cities = new ArrayList<City>();
  salesMen = new ArrayList<SalesMan>();
  
  for(int i = 0; i < cityCount; i++) {
    cities.add(getRandomCity(100, 100));
  }
  
  for(int i = 0; i < salesMenCount; i++) {
      SalesMan salesM = new SalesMan(cities);
      salesM.getRandomTrip();
      salesMen.add(salesM);
  }
  
  //sort();
}

void draw() {
  background(255);
  
  fill(0);
  
  for(int i = 1; i < graphDivision[0]; i++) {
    float x = (float)i * (width/(float)graphDivision[0]);
    line(x, 0, x, height);
  }
  
  
  for(int i = 0; i < graphDivision[1]; i++) {
    float y = (float)i * (height/(float)graphDivision[1]);
    line(0, y, width, y);
  }
  
  Display d = new Display(salesMen, graphDivision);
  d.draw();
  
}

City getRandomCity(float maxX, float maxY) {
  float x = random(10, maxX);
  float y = random(10, maxY);
  
  City city = new City(new PVector(x, y));
  
  return city;
}

/*void sort() {
  
  for(int i = 0; i < salesMen.size(); i++) {
    for(int j = 1; j < salesMen.size() -1; j++) {
      if(salesMen.get(j-1).distance > salesMen.get(j).distance) {
        SalesMan sTemp = salesMen.get(j-1);
        salesMen.set(j-1, salesMen.get(j));
        salesMen.get(j-1).updateFields(j-1);
        salesMen.set(j, sTemp);
        salesMen.get(j).updateFields(j);
      }
    }
  }
}*/