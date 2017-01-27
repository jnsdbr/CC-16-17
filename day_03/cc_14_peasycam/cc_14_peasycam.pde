/**
 * Creative Coding HSOS WS16/17
 * Peasycam example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */
 
import peasy.*;

PeasyCam cam;

float counter = 0;

void setup()
{
    size(500, 500, P3D);
    noStroke();

    cam = new PeasyCam(this, 200);
    cam.setMinimumDistance(100);
    cam.setMaximumDistance(500);
}

void draw()
{
    background(200);
    lights();
    box(50);
}