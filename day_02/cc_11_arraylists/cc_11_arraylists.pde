/**
 * Creative Coding HSOS WS16/17
 * Basic ArrayList example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */

PVector[] positionsArray;
ArrayList<PVector> positions;

void setup()
{
    size(400, 400);
    smooth();
    noStroke();
    
    positionsArray = new PVector[50];
    positions = new ArrayList<PVector>();
    
    for (int i = 0; i < 50; i++)
    {
        positions.add(new PVector(random(width), random(height)));
    }
}

void draw()
{
    background(200);
    fill(0);
    
    for (PVector v: positions)
    {
        float size = random(10, 50);
        ellipse(v.x, v.y, size, size);
    }
    
    /*
    for (int i = 0; i < positions.size(); i++)
    {
        ellipse(positions.get(i).x, positions.get(i).y, random(10, 50), random(10, 50));
    }
    */
}