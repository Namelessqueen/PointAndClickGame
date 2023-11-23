class Circle extends Shape
{
  int radius = 100;
  
  //position constructors
  Circle()
  {super();}
  Circle(PVector pPosition)
  {super(pPosition);}
  
  //collision
  boolean Collision(PVector point)
  {
    return dist(point.x, point.y, Position.x,Position.y) < radius;
  }
  
  void Update()
  {
    fill(255);
    circle(Position.x,Position.y,radius* 2);
  }
}
