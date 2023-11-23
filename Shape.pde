class Shape
{
  int RandomSize = (int)random(100,300);
  PVector Position;
  
  Shape()
  {Position = new PVector(800,400);}
  
  Shape(PVector pPosition)
  {Position = pPosition;}
}
