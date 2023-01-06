@warnings
@version 2.1

main
{
	selmode(DIRECT);
	n = pointcount();
	if (n != 4)
	{
		error("You need select 4 points");
	}
    
	editbegin();
	
    var x, y, z;
    
    po1 = pointinfo(points[1]);
    po2 = pointinfo(points[2]);
    po3 = pointinfo(points[3]);
    po4 = pointinfo(points[4]);
    
    dx = po3.x - po1.x;
    dy = po3.y - po1.y;
    dz = po3.z - po1.z;
    
    x = po2.x + dx;
    y = po2.y + dy;
    z = po2.z + dz;
    
    pointmove(points[4], x, y, z);
	
	editend();
}
