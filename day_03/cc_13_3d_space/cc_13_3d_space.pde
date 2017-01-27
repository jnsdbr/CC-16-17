/**
 * Creative Coding HSOS WS16/17
 * 3D space example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */
 
void setup()
{
    size(500, 500, P3D);
    noStroke();
}

void draw()
{
    background(200);
    lights();
    translate(width / 2, height / 2);
    sphere(50);
}