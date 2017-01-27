/**
 * Creative Coding HSOS WS16/17
 * Basic Agent example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */
 
Agent a;

void setup()
{
    size(600, 840, FX2D);
    background(200);
    a = new Agent(random(width), random(height));
}

void draw()
{
    a.update();
    a.render();
}