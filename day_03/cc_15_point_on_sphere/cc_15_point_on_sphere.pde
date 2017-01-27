import peasy.*;

PeasyCam cam;

final int R = 50;
PVector position;

float angle = 0;
float rotation = 0;

void setup()
{
    size(500, 500, P3D);
    noStroke();
    
    position = new PVector(0, 0, 0);

    cam = new PeasyCam(this, 200);
    cam.setMinimumDistance(100);
    cam.setMaximumDistance(500);
}

void draw()
{
    position.x = R * cos(radians(angle)) * sin(radians(rotation));
    position.y = R * sin(radians(angle)) * sin(radians(rotation));
    position.z = R * cos(radians(rotation));    
    
    background(200);
    lights();
    
    noStroke();
    sphere(R);
    
    pushMatrix();    
    translate(position.x, position.y, position.z);
    stroke(0);
    strokeWeight(5);
    point(0, 0, 0);
    popMatrix();
    
    angle += 0.05;
    rotation += 0.05;
}