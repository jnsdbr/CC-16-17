/**
 * Creative Coding HSOS WS16/17
 * Basic color example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

float counter = 0;

void setup()
{
    size(400, 400);
    // Default RGB
    //colorMode(HSB, 1000, 1000, 1000);
}

void draw()
{
    // Stroke
    stroke(0);
    noStroke();
    
    // Colors
    fill(255);
    fill(255, 0, 0);
    fill(255, 0, 0, 255);
    
    fill(255, 0, 0, counter);
    //fill(#ff0000);
    
    if (mousePressed)
    {
        ellipse(mouseX, mouseY, 20 * (sin(counter) + 2), 20 * (sin(counter) + 2));
    }
    
    counter += 0.05;
}