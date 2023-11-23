class Triangle extends Shape
{
  PVector pos1;
  PVector pos2;
  PVector pos3;
  
  Triangle(PVector pPos1,PVector pPos2 ,PVector pPos3 )
  {
  pos1 = pPos1;
  pos2 = pPos2;
  pos3 = pPos3;
  }

  boolean Collision(PVector point) 
  {
    float detT = (pos2.y - pos3.y) * (pos1.x - pos3.x) + (pos3.x - pos2.x) * (pos1.y - pos3.y);
    float alpha = ((pos2.y - pos3.y) * (point.x - pos3.x) + (pos3.x - pos2.x) * (point.y - pos3.y)) / detT;
    float beta = ((pos3.y - pos1.y) * (point.x - pos3.x) + (pos1.x - pos3.x) * (point.y - pos3.y)) / detT;
    float gamma = 1 - alpha - beta;
    return alpha >= 0 && beta >= 0 && gamma >= 0;
  }
   
  void Update()
  {
    fill(255);
    triangle(pos1.x,pos1.y,pos2.x,pos2.y, pos3.x, pos3.y);
  }
} 
