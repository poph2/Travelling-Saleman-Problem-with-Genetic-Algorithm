
ArrayList<City> cities;

int[] graphDivision = {10, 10};

int cityCount = 15;
int salesMenCount = 90;

int generationIndex = 2;
float min = 0.0;
float max = 0.0;

ArrayList<Generation> generations;

Generation generation;
  
void setup() {
  size(640, 360);
  surface.setResizable(true);
  
  generations = new ArrayList<Generation>();
  
  generation = new Generation(generationIndex);
  generation.getRandomGeneration(salesMenCount, cityCount);
  
  generations.add(generation);
  
}

void draw() {
  background(255);
  
  Display d = new Display(generation, graphDivision);
  d.draw();
  
  if (frameCount % 20 == 0) {
    // We are choosing to send in an input every 200 frames.
    generation = generation.getNextGeneration();
    
    generationIndex = generationIndex + 1;
    generations.add(generation);
    
  }
}