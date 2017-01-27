import controlP5.*;
ControlP5 cp5;

float tWidth = 0;
float tHeight = 0;

void setup()
{
    size(500, 500, P3D);
    noStroke();

    // CP5
    cp5 = new ControlP5(this);
    
    cp5.addSlider("tWidth")
        .setPosition(10, 10)
        .setRange(10, 200)
        ;
    cp5.addSlider("tHeight")
        .setPosition(10, 20)
        .setRange(10, 200)
        ;        
}

void draw()
{
    background(200);

    pushMatrix();
    translate(width / 2, height / 2);
    ellipse(0, 0, tWidth, tHeight);
    popMatrix();
}