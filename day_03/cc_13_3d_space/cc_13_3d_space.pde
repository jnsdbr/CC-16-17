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