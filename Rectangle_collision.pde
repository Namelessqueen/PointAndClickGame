class Rectangle extends Shape
{
  PVector Size;
  
  //position constructors
  Rectangle()
  {super();}
  Rectangle(PVector pPosition, PVector pSize)
  {super(pPosition);
  Size = pSize;}
  
  //collision
  boolean Collision(PVector point)
  {
    return abs(Position.x - point.x) < Size.x/2 &&  abs(Position.y - point.y) < Size.y/2;
  }
  
  void Update()
  {
    fill(255);
    rectMode(CENTER);
    rect(Position.x,Position.y,Size.x,Size.y);
  }
}
