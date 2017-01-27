/**
 * Creative Coding HSOS WS16/17
 * Basic Agent example
 *
 * @author Jens de Boer <hello@jnsdbr.de>
 */
 
ArrayList<Agent> agents;

void setup()
{
    size(600, 840);
    background(200);
    
    agents = new ArrayList<Agent>();
    
    for (int i = 0; i < 500; i++)
    {
        agents.add(new Agent(random(width), random(height), color(random(0, 255), random(0, 255), random(0, 255))));
    }
}

void draw()
{
    for (Agent a: agents)
    {
        a.update();
        a.render();
    }
}