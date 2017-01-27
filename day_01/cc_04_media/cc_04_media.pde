/**
 * Creative Coding HSOS WS16/17
 * Media example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */
PImage image;
PShape shape;

void setup()
{
    size(500, 500);
    image = requestImage("cat.jpg");
    shape = loadShape("dog.svg");
}

void draw()
{
    background(200);
    
    if (image.width > 0)
    {
        image(image, 10, 10);
    }
    
    shape(shape, 10, 250);
}