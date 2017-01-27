/**
 * Creative Coding HSOS WS16/17
 * ControlP5 example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

import peasy.*;
import controlP5.*;

PeasyCam cam;
ControlP5 cp5;

final int R = 50;
PVector position;

float angle = 0;
float rotation = 0;

void setup()
{
    size(500, 500, P3D);
    noStroke();

    position = new PVector(0, 0, 0);

    // Peasy
    cam = new PeasyCam(this, 200);
    cam.setMinimumDistance(100);
    cam.setMaximumDistance(500);

    // CP5
    cp5 = new ControlP5(this);
    cp5.setAutoDraw(false);
    
    cp5.addSlider("angle")
        .setPosition(10, 10)
        .setRange(0, 359)
        ;
    cp5.addSlider("rotation")
        .setPosition(10, 20)
        .setRange(0, 359)
        ;        
}

void draw()
{
    position.x = R * cos(radians(angle)) * sin(radians(rotation));
    position.y = R * sin(radians(angle)) * sin(radians(rotation));
    position.z = R * cos(radians(rotation));    

    background(200);
    
    if (cp5.isMouseOver())
    {
        cam.setActive(false);
    }
    else
    {
        cam.setActive(true);
    }    
    
    cam.beginHUD();
    cp5.draw();
    cam.endHUD();
    
    lights();

    noStroke();
    sphere(R);

    pushMatrix();    
    translate(position.x, position.y, position.z);
    stroke(0);
    strokeWeight(5);
    point(0, 0, 0);
    popMatrix();
}